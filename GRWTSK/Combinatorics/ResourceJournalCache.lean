import GRWTSK.Combinatorics.ResourceJournalIndexBounds

/-!
# Protected incremental journal cache
Math #1851 / draft PR #1853; Sofic #10 A07/A10.
SOURCE_PROOF_CANDIDATE. Lean elaboration, fresh kernel replay, transitive
axiom audit and independent review NOT_RUN.

A cache is an exact derived value of a uniquely issued durable head. Staging
is private and does not publish. Publication is one abstract CAS/atomic
durable transition; its implementation must serialize writers, atomically
persist delta/root/head, and update or invalidate volatile cache before
further service. Crash erases the volatile cache, not the durable head.
This is a crash-cut specification conditional on durable atomicity and
protected storage/issuance; it is not a proof of a filesystem, DB, hardware
flush, anti-rollback service, or cryptographic primitive. A recovery must
first validate the exact issued committed journal and its protected run.
A proof argument is not an operational authentication mechanism.

Logical List/Array expressions are not physical complexity assertions.
Use an owned append buffer, immutable bounded views and a protected lease
for the actual implementation. Charge copying, observer access, allocation,
failed attempts, and recovery independently. No full-prefix re-fetch is
needed on a coherent hot append; full-prefix observers may still be costly.
-/
set_option autoImplicit false

namespace GRWTSK.ResourceAttainability.JournalCache

open JournalSimulation
open JournalIndex

universe u v w c r
variable {Core : Type u} {Event : Type v} {Meta : Type w}
variable {Context : Type c} {Root : Type r}

structure Durable (Context : Type c) (Root : Type r)
    (Core : Type u) (Event : Type v) (Meta : Type w) where
  version : Version Context Root
  base : Snapshot Core Event
  deltas : Array (Delta Core Event Meta)

structure Hot (Context : Type c) (Root : Type r) (Core : Type u) (Event : Type v) where
  version : Version Context Root
  state : Snapshot Core Event

structure Machine (Context : Type c) (Root : Type r)
    (Core : Type u) (Event : Type v) (Meta : Type w) where
  durable : Durable Context Root Core Event Meta
  hot : Option (Hot Context Root Core Event)

abbrev Head := Durable Context Root Core Event Meta
abbrev Cache := Hot Context Root Core Event
abbrev Service := Machine Context Root Core Event Meta

def Durable.state (h : Head (Context := Context) (Root := Root)
    (Core := Core) (Event := Event) (Meta := Meta)) : Snapshot Core Event :=
  materialize h.base h.deltas.toList

def Good (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    (h : Head (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) : Prop :=
  h.version.limit = h.deltas.size ∧
  A.issued h.version h.base h.deltas.toList ∧
  JournalRun auth legal h.base h.deltas.toList h.state

def CacheMatches (h : Head (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (hot : Cache (Context := Context) (Root := Root) (Core := Core) (Event := Event)) : Prop :=
  hot.version = h.version ∧ hot.state = h.state

def Consistent (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    (s : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) : Prop :=
  Good A auth legal s.durable ∧
    ∀ h, s.hot = some h → CacheMatches s.durable h

def rebuilt (h : Head (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) :
    Cache (Context := Context) (Root := Root) (Core := Core) (Event := Event) :=
  ⟨h.version,h.state⟩

theorem rebuilt_matches (h : Head (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) :
    CacheMatches h (rebuilt h) := ⟨rfl,rfl⟩

theorem cache_unique {h : Head (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    {a b : Cache (Context := Context) (Root := Root) (Core := Core) (Event := Event)}
    (ha : CacheMatches h a) (hb : CacheMatches h b) : a = b := by
  cases a
  cases b
  simp only [CacheMatches] at ha hb
  rcases ha with ⟨ha,hsa⟩
  rcases hb with ⟨hb,hsb⟩
  simp_all

theorem durable_unique (A : Authority Context Root Core Event Meta)
    {auth : Snapshot Core Event → Meta → Prop}
    {legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop}
    {a b : Head (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    (ha : Good A auth legal a) (hb : Good A auth legal b)
    (hv : a.version = b.version) : a = b := by
  have hb' := hb.2.1
  rw [← hv] at hb'
  obtain ⟨hs,hd⟩ := A.unique a.version a.base _ b.base _ ha.2.1 hb'
  have he : a.deltas = b.deltas := Array.toList_inj.mp hd
  cases a
  cases b
  simp_all

structure Prepared (Context : Type c) (Root : Type r)
    (Core : Type u) (Event : Type v) (Meta : Type w) where
  old : Durable Context Root Core Event Meta
  before : Hot Context Root Core Event
  delta : Delta Core Event Meta
  nextVersion : Version Context Root

abbrev Plan := Prepared Context Root Core Event Meta

def Ready (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    (p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) : Prop :=
  Good A auth legal p.old ∧
  CacheMatches p.old p.before ∧
  p.nextVersion.context = p.old.version.context ∧
  p.nextVersion.limit = p.old.version.limit+1 ∧
  A.issued p.nextVersion p.old.base (p.old.deltas.toList ++ [p.delta]) ∧
  auth p.before.state p.delta.metadata ∧
  legal p.before.state (applyDelta p.before.state p.delta) p.delta.event p.delta.metadata

def Prepared.next (p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) :
    Head (Context := Context) (Root := Root) (Core := Core) (Event := Event) (Meta := Meta) :=
  ⟨p.nextVersion,p.old.base,p.old.deltas.push p.delta⟩

def Prepared.newHot (p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) :
    Cache (Context := Context) (Root := Root) (Core := Core) (Event := Event) :=
  ⟨p.nextVersion,applyDelta p.before.state p.delta⟩

theorem Prepared.next_state (p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) :
    p.next.state = applyDelta p.old.state p.delta := by
  change materialize p.old.base (p.old.deltas.push p.delta).toList =
    applyDelta (materialize p.old.base p.old.deltas.toList) p.delta
  rw [Array.toList_push,materialize_append]
  rfl

theorem prepared_cache_matches
    {p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    (h : CacheMatches p.old p.before) : CacheMatches p.next p.newHot := by
  refine ⟨rfl,?_⟩
  change applyDelta p.before.state p.delta = p.next.state
  rw [h.2,Prepared.next_state]

theorem prepared_next_good (A : Authority Context Root Core Event Meta)
    {auth : Snapshot Core Event → Meta → Prop}
    {legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop}
    {p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    (h : Ready A auth legal p) : Good A auth legal p.next := by
  rcases h with ⟨hg,hcache,_,hlen,hissue,ha,hl⟩
  refine ⟨?_,?_,?_⟩
  · change p.nextVersion.limit = (p.old.deltas.push p.delta).size
    rw [hlen,hg.1]
    simp
  · change A.issued p.nextVersion p.old.base (p.old.deltas.push p.delta).toList
    rw [Array.toList_push]
    exact hissue
  · change JournalRun auth legal p.old.base (p.old.deltas.push p.delta).toList p.next.state
    rw [Array.toList_push,Prepared.next_state]
    exact authenticated_append_run hg.2.2 p.delta
      (by simpa only [hcache.2] using ha)
      (by simpa only [hcache.2] using hl)

/-- The private staged value is not a committed state. Publish is called by
the protected owner only with actual Ready evidence. Full version identity
is compared at the linearization point, not just an integer length. -/
def publish (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    [DecidableEq (Version Context Root)]
    (cur : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (_ready : Ready A auth legal p) :
    Option (Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) :=
  if cur.durable.version = p.old.version then
    some ⟨p.next,some p.newHot⟩
  else none

theorem publish_stale (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    [DecidableEq (Version Context Root)]
    (cur : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (h : Ready A auth legal p) (stale : cur.durable.version ≠ p.old.version) :
    publish A auth legal cur p h = none := by simp [publish,stale]

theorem publish_consistent (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    [DecidableEq (Version Context Root)]
    {cur out : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    {p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    (hcur : Consistent A auth legal cur) (h : Ready A auth legal p)
    (res : publish A auth legal cur p h = some out) :
    Consistent A auth legal out ∧ cur.durable = p.old ∧
    out.durable = p.next ∧ out.hot = some p.newHot := by
  by_cases eq : cur.durable.version = p.old.version
  · have he := durable_unique A hcur.1 h.1 eq
    have ho : (⟨p.next,some p.newHot⟩ :
        Service (Context := Context) (Root := Root)
          (Core := Core) (Event := Event) (Meta := Meta)) = out := by
      simpa [publish,eq] using res
    subst out
    refine ⟨⟨prepared_next_good A h,?_⟩,he,rfl,rfl⟩
    intro hot hh
    have hh' : p.newHot = hot := Option.some.inj hh
    rw [← hh']
    exact prepared_cache_matches h.2.1
  · rw [publish_stale A auth legal cur p h eq] at res
    cases res

/-- Crash cuts cannot publish a partial journal in this atomic model. An
uncommitted private plan is discarded. A committed head survives; the hot
cache is always discarded on restart. -/
def crash (s : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)) :
    Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta) :=
  ⟨s.durable,none⟩

theorem crash_consistent (A : Authority Context Root Core Event Meta)
    {auth : Snapshot Core Event → Meta → Prop}
    {legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop}
    {s : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    (h : Consistent A auth legal s) : Consistent A auth legal (crash s) := by
  refine ⟨h.1,?_⟩
  intro hot hh
  cases hh

/-- Recovery is defined only after validating the durable head and run.
No untrusted persisted cache is read as an authority. -/
def recover (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    (s : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (_checked : Good A auth legal s.durable) :
    Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta) :=
  ⟨s.durable,some (rebuilt s.durable)⟩

theorem recover_consistent (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    (s : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (h : Good A auth legal s.durable) :
    Consistent A auth legal (recover A auth legal s h) := by
  refine ⟨h,?_⟩
  intro hot hh
  have he : rebuilt s.durable = hot := Option.some.inj hh
  rw [← he]
  exact rebuilt_matches _

theorem recover_crash_hot_exact (A : Authority Context Root Core Event Meta)
    (auth : Snapshot Core Event → Meta → Prop)
    (legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop)
    (s : Service (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta))
    (h : Consistent A auth legal s)
    (hot : Cache (Context := Context) (Root := Root) (Core := Core) (Event := Event))
    (hh : s.hot = some hot) :
    (recover A auth legal (crash s) h.1).hot = some hot := by
  have he := cache_unique (rebuilt_matches s.durable) (h.2 hot hh)
  change some (rebuilt s.durable) = some hot
  rw [he]

theorem prepared_no_aba (A : Authority Context Root Core Event Meta)
    {auth : Snapshot Core Event → Meta → Prop}
    {legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop}
    {p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    (h : Ready A auth legal p) : p.next.version ≠ p.old.version := by
  intro he
  have hn := congrArg Version.limit he
  change p.nextVersion.limit = p.old.version.limit at hn
  have hl := h.2.2.2.1
  omega

/-- Every exact observer (including a nonincremental one) sees the same
before and after values. This equality says nothing about observer work. -/
theorem cached_observation_exact {Obs : Type*}
    (observe : Snapshot Core Event → Snapshot Core Event → Meta → Obs)
    {h : Head (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    {hot : Cache (Context := Context) (Root := Root) (Core := Core) (Event := Event)}
    (hc : CacheMatches h hot) (d : Delta Core Event Meta) :
    observe hot.state (applyDelta hot.state d) d.metadata =
      observe h.state (materialize h.base (h.deltas.toList ++ [d])) d.metadata := by
  rw [hc.2,materialize_append]
  rfl

theorem prepared_historical_read
    (A : Authority Context Root Core Event Meta)
    {auth : Snapshot Core Event → Meta → Prop}
    {legal : Snapshot Core Event → Snapshot Core Event → Event → Meta → Prop}
    {p : Plan (Context := Context) (Root := Root)
      (Core := Core) (Event := Event) (Meta := Meta)}
    (h : Ready A auth legal p) (i : Nat) :
    indexedRead p.next.base p.next.deltas p.old.version.limit i =
      indexedRead p.old.base p.old.deltas p.old.version.limit i :=
  indexedRead_append p.old.base p.old.deltas p.delta _ i (Nat.le_of_eq h.1.1)

end GRWTSK.ResourceAttainability.JournalCache

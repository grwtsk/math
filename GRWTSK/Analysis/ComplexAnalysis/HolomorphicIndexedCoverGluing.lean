import GRWTSK.Analysis.ComplexAnalysis.HolomorphicOpenCoverGluing

/-!
# Holomorphic descent on indexed open covers

The index type is arbitrary and need not be finite or inhabited. Coverage, ambient openness,
and equality on every exact overlap are separate hypotheses. The construction chooses a covering
member at each point, then proves that matching makes the result independent of that choice.
The historical binary cover and its glue are not redefined.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction

open GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing (HolomorphicSection)

universe u v

noncomputable section

/-- An indexed family of exact subdomains covering the selected domain. -/
structure IndexedDomainCover (ι : Type u) where
  X : Domain
  U : ι → Domain
  subset : ∀ i, (U i).carrier ⊆ X.carrier
  cover : ∀ z ∈ X.carrier, ∃ i, z ∈ (U i).carrier

namespace IndexedDomainCover

variable {ι : Type u}

/-- Ambient openness does not supply either coverage or overlap matching. -/
structure IsOpenCover (D : IndexedDomainCover ι) : Prop where
  member_open : ∀ i, IsOpen (D.U i).carrier

/-- Exact restriction from the covered domain to one member. -/
def xTo (D : IndexedDomainCover ι) (i : ι) : Port D.X (D.U i) :=
  ⟨D.subset i⟩

/-- Exact pairwise intersection, not an independently named overlap object. -/
def overlap (D : IndexedDomainCover ι) (i j : ι) : Domain :=
  ⟨(D.U i).carrier ∩ (D.U j).carrier⟩

def leftToOverlap (D : IndexedDomainCover ι) (i j : ι) :
    Port (D.U i) (D.overlap i j) := ⟨fun _ hz => hz.1⟩

def rightToOverlap (D : IndexedDomainCover ι) (i j : ι) :
    Port (D.U j) (D.overlap i j) := ⟨fun _ hz => hz.2⟩

/-- A local family in actual holomorphic-section rings. -/
abbrev Family (D : IndexedDomainCover ι) := ∀ i, HolomorphicSection (D.U i)

/-- Every pair agrees after the two exact overlap restrictions. -/
def Matching (D : IndexedDomainCover ι) (s : D.Family) : Prop :=
  ∀ i j,
    GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom
        (D.leftToOverlap i j) (s i) =
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom
        (D.rightToOverlap i j) (s j)

/-- Overlap equality implies equality at each point of that exact intersection. -/
theorem matching_apply (D : IndexedDomainCover ι) (s : D.Family) (h : D.Matching s)
    (i j : ι) (z : ℂ) (hi : z ∈ (D.U i).carrier) (hj : z ∈ (D.U j).carrier) :
    (s i : Section (D.U i)) ⟨z, hi⟩ = (s j : Section (D.U j)) ⟨z, hj⟩ :=
  congrArg (fun f : HolomorphicSection (D.overlap i j) =>
    (f : Section (D.overlap i j)) ⟨z, hi, hj⟩) (h i j)

/-- A covering member selected only for a point that actually belongs to the domain. -/
def select (D : IndexedDomainCover ι) (z : D.X.carrier) : ι :=
  Classical.choose (D.cover z.1 z.2)

theorem select_mem (D : IndexedDomainCover ι) (z : D.X.carrier) :
    z.1 ∈ (D.U (D.select z)).carrier :=
  Classical.choose_spec (D.cover z.1 z.2)

/-- The ordinary section selected from a local family; matching is needed for its restriction laws. -/
def glueSection (D : IndexedDomainCover ι) (s : D.Family) : Section D.X :=
  fun z => (s (D.select z) : Section (D.U (D.select z))) ⟨z.1, D.select_mem z⟩

/-- Matching removes the dependence of each value on the selected covering member. -/
theorem glueSection_apply (D : IndexedDomainCover ι) (s : D.Family) (h : D.Matching s)
    (i : ι) (z : (D.U i).carrier) :
    D.glueSection s ⟨z.1, D.subset i z.2⟩ = (s i : Section (D.U i)) z :=
  D.matching_apply s h (D.select ⟨z.1, D.subset i z.2⟩) i z.1
    (D.select_mem ⟨z.1, D.subset i z.2⟩) z.2

@[simp]
theorem restrict_glueSection (D : IndexedDomainCover ι) (s : D.Family)
    (h : D.Matching s) (i : ι) :
    restrict (D.xTo i) (D.glueSection s) = (s i : Section (D.U i)) := by
  funext z
  exact D.glueSection_apply s h i z

/-- Holomorphy is local on an arbitrary indexed ambient-open cover. -/
theorem holomorphic_iff_restrictions (D : IndexedDomainCover ι)
    (hOpen : D.IsOpenCover) (f : Section D.X) :
    ExtendsHolomorphically D.X f ↔
      ∀ i, ExtendsHolomorphically (D.U i) (restrict (D.xTo i) f) := by
  constructor
  · intro hf i
    exact (HolomorphicRestrictionCertificate.canonical (D.xTo i)).preserves f hf
  · intro hf
    have hLocal : ∀ i, DifferentiableOn ℂ (ambientRepresentative D.X f) (D.U i).carrier := by
      intro i
      rcases hf i with ⟨F, hF, hEq⟩
      apply hF.congr
      intro z hz
      calc
        ambientRepresentative D.X f z = f ⟨z, D.subset i hz⟩ :=
          ambientRepresentative_apply D.X f z (D.subset i hz)
        _ = F z := (hEq ⟨z, hz⟩).symm
    refine ⟨ambientRepresentative D.X f,
      (DifferentiableOn.iUnion_of_isOpen hLocal hOpen.member_open).mono ?_, ?_⟩
    · intro z hz
      rcases D.cover z hz with ⟨i, hi⟩
      exact Set.mem_iUnion.mpr ⟨i, hi⟩
    · intro z
      exact ambientRepresentative_apply D.X f z.1 z.2

/-- A global holomorphic section constructed from matching local sections. -/
def glue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (s : D.Family) (h : D.Matching s) : HolomorphicSection D.X :=
  ⟨D.glueSection s, (D.holomorphic_iff_restrictions hOpen _).mpr (by
    intro i
    rw [D.restrict_glueSection s h i]
    exact (s i).property)⟩

/-- The holomorphic glue retains the same underlying ordinary section. -/
theorem glue_coe (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (s : D.Family) (h : D.Matching s) :
    (D.glue hOpen s h : Section D.X) = D.glueSection s := rfl

@[simp]
theorem restrict_glue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (s : D.Family) (h : D.Matching s) (i : ι) :
    GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.xTo i)
        (D.glue hOpen s h) = s i := by
  apply Subtype.ext
  exact D.restrict_glueSection s h i

/-- Coverage gives separatedness without an openness assumption. -/
theorem holomorphic_ext (D : IndexedDomainCover ι) {f g : HolomorphicSection D.X}
    (h : ∀ i,
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.xTo i) f =
        GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.xTo i) g) :
    f = g := by
  apply Subtype.ext
  funext z
  rcases D.cover z.1 z.2 with ⟨i, hi⟩
  exact congrArg (fun s : HolomorphicSection (D.U i) =>
    (s : Section (D.U i)) ⟨z.1, hi⟩) (h i)

/-- Existence and uniqueness over the entire indexed cover, including the empty-domain case. -/
theorem existsUnique_glue (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (s : D.Family) (h : D.Matching s) :
    ∃! f : HolomorphicSection D.X, ∀ i,
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.xTo i) f = s i := by
  refine ⟨D.glue hOpen s h, D.restrict_glue hOpen s h, ?_⟩
  intro f hf
  apply D.holomorphic_ext
  intro i
  exact (hf i).trans (D.restrict_glue hOpen s h i).symm

/-- Restrictions of one global section form a matching family. -/
theorem matching_restrictions (D : IndexedDomainCover ι) (f : HolomorphicSection D.X) :
    D.Matching (fun i =>
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.xTo i) f) := by
  intro i j
  apply Subtype.ext
  funext z
  rfl

/-- Descent recovers the original global section, not merely an isomorphic representative. -/
theorem glue_restrictions (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (f : HolomorphicSection D.X) :
    D.glue hOpen (fun i =>
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom (D.xTo i) f)
      (D.matching_restrictions f) = f := by
  apply D.holomorphic_ext
  intro i
  exact D.restrict_glue hOpen _ _ i

/-- A surjective relabelling may duplicate members but cannot discard coverage. -/
def reindex (D : IndexedDomainCover ι) {κ : Type v} (r : κ → ι)
    (hr : Function.Surjective r) : IndexedDomainCover κ where
  X := D.X
  U j := D.U (r j)
  subset j := D.subset (r j)
  cover := by
    intro z hz
    rcases D.cover z hz with ⟨i, hi⟩
    rcases hr i with ⟨j, rfl⟩
    exact ⟨j, hi⟩

def reindex_isOpen (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    {κ : Type v} (r : κ → ι) (hr : Function.Surjective r) :
    (D.reindex r hr).IsOpenCover :=
  ⟨fun j => hOpen.member_open (r j)⟩

theorem reindex_matching (D : IndexedDomainCover ι) (s : D.Family) (h : D.Matching s)
    {κ : Type v} (r : κ → ι) (hr : Function.Surjective r) :
    (D.reindex r hr).Matching (fun j => s (r j)) :=
  fun j k => h (r j) (r k)

/-- Relabelling or duplicating covering members leaves the global section exactly unchanged. -/
theorem glue_reindex (D : IndexedDomainCover ι) (hOpen : D.IsOpenCover)
    (s : D.Family) (h : D.Matching s)
    {κ : Type v} (r : κ → ι) (hr : Function.Surjective r) :
    (D.reindex r hr).glue (D.reindex_isOpen hOpen r hr) (fun j => s (r j))
        (D.reindex_matching s h r hr) = D.glue hOpen s h := by
  apply (D.reindex r hr).holomorphic_ext
  intro j
  exact ((D.reindex r hr).restrict_glue _ _ _ j).trans
    (D.restrict_glue hOpen s h (r j)).symm

namespace Fixtures

/-- An infinite indexed cover of the plane by all once-punctured planes. -/
def allPunctures : IndexedDomainCover ℂ where
  X := GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction.Fixtures.whole
  U a := ⟨{a}ᶜ⟩
  subset _ := fun z _ => Set.mem_univ z
  cover := by
    intro z _
    by_cases hz : z = 0
    · exact ⟨1, by simp [hz]⟩
    · exact ⟨0, by simpa using hz⟩

def allPunctures_isOpen : allPunctures.IsOpenCover :=
  ⟨fun _ => isClosed_singleton.isOpen_compl⟩

/-- Holomorphic constants that nevertheless disagree on a genuine overlap. -/
def disagreeingFamily : allPunctures.Family := by
  classical
  exact fun a => if a = 0 then 0 else 1

theorem disagreeingFamily_not_matching : ¬ allPunctures.Matching disagreeingFamily := by
  intro h
  have h01 := allPunctures.matching_apply disagreeingFamily h 0 1 2
    (by norm_num [allPunctures]) (by norm_num [allPunctures])
  norm_num [disagreeingFamily] at h01

/-- An empty index cannot cover a nonempty domain; vacuous local data do not fill the gap. -/
theorem empty_index_not_nonempty (D : IndexedDomainCover Empty) :
    ¬ D.X.carrier.Nonempty := by
  rintro ⟨z, hz⟩
  rcases D.cover z hz with ⟨i, _⟩
  exact Empty.elim i

/-- The empty family is allowed when the selected domain really is empty. -/
def emptyCover : IndexedDomainCover Empty where
  X := ⟨∅⟩
  U := Empty.elim
  subset := by intro i; exact Empty.elim i
  cover := by intro z hz; exact False.elim hz

def emptyCover_isOpen : emptyCover.IsOpenCover :=
  ⟨fun i => Empty.elim i⟩

/-- A positive empty-cover instance needs no invented local member. -/
theorem emptyCover_glue_unique :
    ∃! f : HolomorphicSection emptyCover.X, ∀ i : Empty,
      GRWTSK.Analysis.ComplexAnalysis.HolomorphicSectionRing.restrictionRingHom
        (emptyCover.xTo i) f = (Empty.elim i : HolomorphicSection (emptyCover.U i)) :=
  emptyCover.existsUnique_glue emptyCover_isOpen (fun i => Empty.elim i)
    (fun i => Empty.elim i)

end Fixtures
end IndexedDomainCover
end
end GRWTSK.Analysis.ComplexAnalysis.HolomorphicRestriction

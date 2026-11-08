/- Copyright (c) 2026 grwtsk contributors. MIT.
Source candidate. Lean elaboration, kernel replay, transitive axiom audit,
and independent historical/philological review: NOT_RUN. -/
import Mathlib

/-!
# Documentary genealogies with exact witnesses and chronological budgets

MSC2020 01A85 Historiography. Consumer: the existing 63-area coverage
ledger in grwtsk/math#1793; compare the MSC00 proof-register and MSC03
cross-cultural methodological formalizations without changing their claims.

Mathematical object: a typed documentary graph whose edges retain actual
witness identifiers, checked-source hypotheses, source/target work identity
and ordered paths. A documented use of a source and a translation are distinct
edge kinds. Neither an interpretation by analogy nor a conjectured independent
discovery is a documentary edge.

Complete analytical argument: Assume that, for every externally checked
documentary witness e, its origin's chronological rank is STRICTLY less
than its destination's rank. The empty chain has length zero and identical
endpoints. For a chain starting with a->b followed by a chain of length n
from b->c, the first edge yields time(a)+1 <= time(b); induction yields
time(b)+n <= time(c). Addition gives time(a)+(n+1) <= time(c).
Consequently length(p) <= time(last)-time(first), and any cyclic path
has length zero. This is an exact theorem about a checked, strictly ranked
graph; coarse year-level dating may not satisfy its strictness assumption.

A separate induction establishes that every witness in a chain's complete
ordered trace is verified and has an admissible kind. Path composition keeps
both ordered traces. Hostile comparison: two toy archives have identical
work dates, mathematical similarity and candidate witness endpoints; the
witness is verified in only one. The first has a path and the second does
not. Thus chronology or resemblance alone cannot certify transmission.
No checked path in an incomplete archive does not establish independence.

Cross-cultural research anchors, NOT injected as checked Lean graph edges:
- al-Khwarizmi, Arabic al-jabr treatise; Robert of Chester's Latin
  translation at Segovia around 1145. L. C. Karpinski, Robert of Chester's
  Latin Translation of the Algebra of al-Khowarizmi (1915), pp. 13, 67;
  https://openlibrary.org/works/OL16287323W/ . This documents a textual
  transmission tradition, not personal influence on every later algebraist.
- Liu Hui's Chinese commentary on The Nine Chapters, dated 263 CE:
  Karine Chemla, Reading instructions of the past, classifying them,
  and reclassifying them, BJHS Themes (2020), Cambridge University Press.
  The commentary relation is attested; no invented Europe-China causal edge.
- Augustine / Anselm, Latin Christian contexts: Anselm's Monologion
  preface references Augustine according to IEP's Anselm of Canterbury
  discussion, https://iep.utm.edu/anselm-of-centerbury/ . The relevant
  primary Latin passage remains to be independently inspected.
- The Ge'ez Hatata attributed to Zera Yacob and French Cartesian thought
  support bidirectional *comparison*, not a claimed transmission edge.
  Attribution is disputed: B. Egid, An Ethiopian Descartes? A French Zera
  Yacob? (2026), DOI 10.1080/09608788.2025.2611833.

Original-language transcriptions, translation fidelity, causal influence,
and disputed authorship are separate unresolved historical questions.
Cultural background does not determine a person's cognitive type.
Uniform evidence thresholds, interpreter contestability, consent and
withdrawal for living subjects, and self-directed education are modern
normative goals, not established psychological or historical properties.
The file does not claim full coverage of MSC01.
-/

namespace GRWTSK.HistoryAndBiography.HistoryOfMathematicsAndMathematicians.SourceWitnessedGenealogy

universe u v

inductive LinkKind where
  | documentedUse
  | textualTranslation
  | independentDiscoveryHypothesis
  | interpretiveAnalogy
  deriving DecidableEq, Repr, Fintype

/-- Both kinds of documentary contact are admitted; neither by itself
    proves mental adoption or downstream causal influence. -/
def LinkKind.admissible : LinkKind → Prop
  | .documentedUse => True
  | .textualTranslation => True
  | .independentDiscoveryHypothesis => False
  | .interpretiveAnalogy => False

structure SourceLocator where
  edition : String
  passage : String
  sourceLanguage : String
  targetLanguage : Option String
  evidenceLimit : String
  deriving Repr

/-- The external verified predicate is NOT deduced from metadata. -/
structure Archive (Work : Type u) (Witness : Type v) where
  origin : Witness → Work
  destination : Witness → Work
  kind : Witness → LinkKind
  verified : Witness → Prop
  epoch : Work → Nat
  locator : Witness → SourceLocator
  culturalSetting : Work → String

/-- A dependent path records all witnesses in order, with exact endpoints.
    No independent-discovery claim or mere analogy is accepted as an edge. -/
inductive Chain {Work : Type u} {Witness : Type v}
    (A : Archive Work Witness) : Work → Work → Type (max u v) where
  | empty (x : Work) : Chain A x x
  | cons {x y z : Work} (w : Witness)
      (hs : A.origin w = x) (ht : A.destination w = y)
      (hv : A.verified w) (hk : (A.kind w).admissible)
      (tail : Chain A y z) : Chain A x z

namespace Chain

variable {Work : Type u} {Witness : Type v}
variable {A : Archive Work Witness}

def length : {x y : Work} → Chain A x y → Nat
  | _, _, .empty _ => 0
  | _, _, .cons _ _ _ _ _ tail => length tail + 1

def witnesses : {x y : Work} → Chain A x y → List Witness
  | _, _, .empty _ => []
  | _, _, .cons w _ _ _ _ tail => w :: witnesses tail

/-- A source-preserving, finite documentary chain cannot smuggle an
    unchecked witness, analogy, or independence conjecture into its trace. -/
theorem witness_integrity {x y : Work} (p : Chain A x y) :
    ∀ w : Witness, w ∈ p.witnesses →
      A.verified w ∧ (A.kind w).admissible := by
  induction p with
  | empty _ =>
      intro w hw
      simp [witnesses] at hw
  | cons e hs ht hv hk tail ih =>
      intro w hw
      simp only [witnesses, List.mem_cons] at hw
      rcases hw with rfl | htail
      · exact ⟨hv, hk⟩
      · exact ih w htail

/-- Source paths compose without discarding their witness labels. -/
def append {x y z : Work} (p : Chain A x y) (q : Chain A y z) :
    Chain A x z :=
  match p with
  | .empty _ => q
  | .cons w hs ht hv hk tail =>
      .cons w hs ht hv hk (append tail q)

theorem witnesses_append {x y z : Work}
    (p : Chain A x y) (q : Chain A y z) :
    (p.append q).witnesses = p.witnesses ++ q.witnesses := by
  induction p with
  | empty _ => rfl
  | cons w hs ht hv hk tail ih =>
      simp [append, witnesses, ih]

theorem endpoints_eq_of_no_verified
    (none : ∀ w : Witness, ¬ A.verified w)
    {x y : Work} (p : Chain A x y) : x = y := by
  cases p with
  | empty _ => rfl
  | cons w hs ht hv hk tail => exact False.elim (none w hv)

end Chain

/-- Rank admissibility is an independent assumption about checked links;
    timestamps alone do not verify a source witness. -/
def Chronological {Work : Type u} {Witness : Type v}
    (A : Archive Work Witness) : Prop :=
  ∀ w : Witness, A.verified w → (A.kind w).admissible →
    A.epoch (A.origin w) < A.epoch (A.destination w)

/-- Every checked documentary step consumes at least one chronological rank.
    The proof is by structural induction over the actual ordered chain. -/
theorem rank_budget {Work : Type u} {Witness : Type v}
    (A : Archive Work Witness) (hc : Chronological A)
    {x y : Work} (p : Chain A x y) :
    A.epoch x + p.length ≤ A.epoch y := by
  induction p with
  | empty _ =>
      simp [Chain.length]
  | cons w hs ht hv hk tail ih =>
      have hed := hc w hv hk
      rw [hs, ht] at hed
      simp only [Chain.length]
      omega

/-- One pays explicitly for every witness, not only the source and target. -/
theorem chain_length_le_elapsed {Work : Type u} {Witness : Type v}
    (A : Archive Work Witness) (hc : Chronological A)
    {x y : Work} (p : Chain A x y) :
    p.length ≤ A.epoch y - A.epoch x := by
  have h := rank_budget A hc p
  omega

/-- There are no nonempty cycles among strictly chronological checked edges. -/
theorem no_nonempty_chronological_cycle
    {Work : Type u} {Witness : Type v}
    (A : Archive Work Witness) (hc : Chronological A)
    {x : Work} (p : Chain A x x) : p.length = 0 := by
  have h := rank_budget A hc p
  omega

/-- The evidence predicate and admissible kinds do not use cultural labels.
    This is one formal equal-threshold property, not empirical equity. -/
def Archive.recontextualize {Work : Type u} {Witness : Type v}
    (A : Archive Work Witness) (newSetting : Work → String) :
    Archive Work Witness :=
  { A with culturalSetting := newSetting }

theorem recontextualization_preserves_admission
    {Work : Type u} {Witness : Type v}
    (A : Archive Work Witness) (newSetting : Work → String) (w : Witness) :
    ((A.recontextualize newSetting).verified w ∧
      ((A.recontextualize newSetting).kind w).admissible) ↔
      (A.verified w ∧ (A.kind w).admissible) := by
  rfl

/-- Independent discovery is *not* defined as no checked path: the latter
    can reflect archival silence or source loss. Positive evidence and a
    documented access audit must be investigated independently. -/
structure IndependentDiscoveryHypothesis (Work : Type u) where
  firstWork : Work
  secondWork : Work
  firstDerivation : SourceLocator
  secondDerivation : SourceLocator
  firstIndependentlyReviewed : Bool
  secondIndependentlyReviewed : Bool
  accessAudit : Option String
  contraryEvidence : List String

structure InterpretiveAnalogy (Work : Type u) where
  firstWork : Work
  secondWork : Work
  commonMathematicalFeature : String
  counterReadings : List String
  translationLimitations : String

/-- These are modern normative design requirements, not a psychological
    inference about any historical contributor. -/
structure InterpretiveRights where
  mayContestAttribution : Bool
  sameEvidenceThresholdAcrossCultures : Bool
  preservesOriginalLanguage : Bool
  consentRequiredForLivingParticipants : Bool
  withdrawalHonored : Bool
  mayChooseLearningMethod : Bool

/-! ## Hostile two-archive model: identical dates/similarity, different witnesses -/

inductive TwoWorks where
  | earlier
  | later
  deriving DecidableEq, Repr, Fintype

def toyArchive (authenticated : Bool) : Archive TwoWorks Unit where
  origin := fun _ => .earlier
  destination := fun _ => .later
  kind := fun _ => .documentedUse
  verified := fun _ => authenticated = true
  epoch := fun
    | .earlier => 10
    | .later => 20
  locator := fun _ =>
    { edition := "hypothetical witness only"
      passage := "no real historical source is asserted"
      sourceLanguage := "unknown"
      targetLanguage := none
      evidenceLimit := "synthetic countermodel" }
  culturalSetting := fun _ => "unrecorded"

def toySimilarity (_ _ : TwoWorks) : Bool := true

/-- A genuine witness proof is present in this model, independently of dates. -/
theorem toy_authenticated_path :
    Nonempty (Chain (toyArchive true) .earlier .later) := by
  refine ⟨Chain.cons () rfl rfl rfl trivial (Chain.empty .later)⟩

/-- With no verified witness, identical mathematics is not enough. -/
theorem toy_unchecked_no_path :
    ¬ Nonempty (Chain (toyArchive false) .earlier .later) := by
  rintro ⟨p⟩
  have none : ∀ w : Unit, ¬ (toyArchive false).verified w := by
    intro w hw
    change false = true at hw
    cases hw
  have hbad : TwoWorks.earlier = TwoWorks.later :=
    Chain.endpoints_eq_of_no_verified none p
  cases hbad

/-- No classifier using only the unchanged chronology and resemblance
    can infer which toy archive contains authenticated evidence. -/
theorem chronology_and_similarity_do_not_certify_transmission :
    (toyArchive true).epoch .earlier < (toyArchive true).epoch .later ∧
    toySimilarity .earlier .later = true ∧
    Nonempty (Chain (toyArchive true) .earlier .later) ∧
    ¬ Nonempty (Chain (toyArchive false) .earlier .later) := by
  exact ⟨by decide, rfl, toy_authenticated_path, toy_unchecked_no_path⟩

/-- A checked translation remains a translation, not a documented-use edge. -/
def toyTranslation : Archive TwoWorks Unit :=
  { toyArchive true with kind := fun _ => .textualTranslation }

theorem translation_is_documentary_but_not_documented_use :
    Nonempty (Chain toyTranslation .earlier .later) ∧
    toyTranslation.kind () ≠ LinkKind.documentedUse := by
  constructor
  · refine ⟨Chain.cons () rfl rfl rfl trivial (Chain.empty .later)⟩
  · decide

theorem analogy_not_documentary :
    ¬ LinkKind.interpretiveAnalogy.admissible := by
  simp [LinkKind.admissible]

theorem independent_hypothesis_not_documentary :
    ¬ LinkKind.independentDiscoveryHypothesis.admissible := by
  simp [LinkKind.admissible]

end GRWTSK.HistoryAndBiography.HistoryOfMathematicsAndMathematicians.SourceWitnessedGenealogy

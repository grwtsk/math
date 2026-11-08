/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-level mathematical candidate. Lean elaboration, fresh kernel replay,
transitive axiom audit and independent historical review: NOT_RUN. -/
import Mathlib

/-!
# Finite context coverage: submodularity, diminishing returns and a fairness obstruction

MSC2020 05D05 (extremal set theory), under 05-XX Combinatorics.
Mathematical consumer: choosing distinct primary-source observations and
intellectual/cultural contexts for the existing cross-cultural mathematical
cognition program and finite 63-heading coverage ledger (grwtsk/math#1793).
This mathematical source stands alone and imports Mathlib, without importing
the earlier uncompiled cognition or historiography candidates.

## Exact model

Let Source and Context be types with decidable equality. Each candidate source
s has a FINITE set E(s) of source-validated contexts it covers. The validation
of those source-context labels is a separate historical/ethnographic premise,
not a theorem implied by membership in the mathematical finite set. For a
finite chosen source inventory S, write C(S)=union_{s in S} E(s),
F(S)=card(C(S)), and gain(S,s)=card(E(s) minus C(S)).

Context identifiers are not people or psychological/ethnic essences; an
historical work may support several contexts. Repeated reporting of the same
context must be counted once in C(S). The model assumes the labels and
verification decisions have been supplied accurately. It neither discovers
historical sources nor authenticates their attribution.

## Mathematical prior art and novelty boundary

The general monotone submodular set-function framework is classical:
G. L. Nemhauser and L. A. Wolsey, "Best Algorithms for Approximating the
Maximum of a Submodular Set Function", Mathematics of Operations Research
3(3), 177-188 (1978), DOI 10.1287/moor.3.3.177. The present file proves
only the elementary finite-context UNION-COVERAGE special case with
explicit source identities, without claiming to establish a general
greedy approximation theorem, a new mathematical method, or an empirical
fairness result. Pinned repository Mathlib is used for finite counting.

## Complete primary mathematical proof

If A is contained in B, each c in C(A) has a witness s in A with c in E(s).
The same s lies in B, so c lies in C(B). Thus C is monotone.

The distributive laws for finite union give C(A union B) =
C(A) union C(B), but C(A intersection B) is only a SUBSET of
C(A) intersection C(B). Indeed the latter may contain a context supplied
by two distinct source witnesses, one in A and another in B, with no
source appearing in both selected inventories.

Apply the exact finite inclusion-exclusion identity
  card(X)+card(Y)=card(X union Y)+card(X intersection Y)
to X=C(A) and Y=C(B). Since C(A intersection B) lies inside the
intersection X intersection Y, its cardinal is no greater. Therefore
  F(A)+F(B) >= F(A union B)+F(A intersection B).
This is full set-function submodularity, not an assumed property of a
particular numerical data set.

For a candidate s, C(insert s S) is the union of C(S) and E(s).
Partition that union as the DISJOINT union of C(S) with
E(s) minus C(S). Counting gives the exact marginal identity
  F(insert s S)=F(S)+gain(S,s).
If A is contained in B, then C(A) is contained in C(B); consequently
E(s) minus C(B) is contained in E(s) minus C(A). Taking cardinalities
gives gain(B,s)<=gain(A,s): diminishing marginal returns. The latter
is an independent route to understanding why the coverage function is
submodular, although the inclusion-exclusion proof above already proves
the global inequality.

## Two hostile countermodels and what they forbid

First, shared coverage does not prove a shared source: source true and
source false can both cover context 0 while A={true} and B={false}
have empty source intersection. Thus
C(A intersection B) is not always C(A) intersection C(B).
That is exactly why the general submodularity statement is an INEQUALITY
rather than a false set-function equality.

Second, let the finite context universe be Fin 4. Source true covers
{0,1,2}, while source false covers {3}. Under a budget of ONE source,
the aggregate-coverage-maximizer is true with score 3 (versus 1),
yet it does not cover context 3, although an eligible source could
cover context 3. Therefore maximizing aggregate distinct coverage
does not entail a nonzero minimum per-context representation floor.
A fairness requirement must be separately specified and checked.
These Bool and Fin 4 labels are synthetic, not ethnic identities.

## Source-mediated cross-cultural context and its limits

The cross-cultural comparison concerns documented enumeration,
classification, and recursive combination methods, not a claim that
any of the following historical thinkers proved the modern submodular
coverage inequality or transmitted it to one another.

- Sanskrit prosody: Pingala's Chandas-sutra and later Halayudha's
  interpretation of metrical counting. Exactly which early sutra
  establishes a binomial coefficient procedure is debated. Jayant Shah,
  A History of Pingala's Combinatorics (2014), explicitly discusses
  the contested interpretation; an accessible author copy:
  https://sanskrit.uohyd.ac.in/faculty/amba/PUBLICATIONS/Lectures/UoHyd/Material/Pingala.pdf .
- Chinese mathematical computation: Jia Xian's earlier array as
  reported in Yang Hui's 1261 work; see Victor J. Katz,
  A History of Mathematics, 3rd ed. (2009), chapter on Chinese
  mathematics, and https://www.math.mcgill.ca/darmon/courses/history/katz.pdf .
  The lost Jia Xian source and later testimony must remain distinct.
- Persian/Arabic mathematical computation: al-Karaji's binomial
  coefficients as transmitted in later al-Samawal descriptions; see
  MacTutor, al-Karaji, https://mathshistory.st-andrews.ac.uk/Biographies/Al-Karaji/ .
  This is not an audited original manuscript.
- Medieval Latin Christian combination: Ramon Llull's Ars combines
  logical figures for argument, not the same set-cover objective;
  Stanford Encyclopedia of Philosophy, Ramon Llull, section 5,
  https://plato.stanford.edu/entries/llull/ .
  Augustine and Anselm are separate sources in the project's MSC03
  history of justification, not authors of this finite-set theorem.
- Early modern French arithmetic: Pascal's Traite du triangle
  arithmetique, published in 1665 after earlier Chinese, Persian,
  Indian, and European work involving related triangular recurrences.
  Source: D. E. Smith, A Source Book in Mathematics, 1200-1800,
  edited translations and edition notices.
- The Ge'ez Hatata attributed to Zera Yacob and Descartes remain
  a bidirectional philosophical comparison in the MSC03 material;
  disputed attribution does not make either a combinatorial source.

These are historically situated comparison leads, with different
methods, languages and evidentiary limits. Resemblance, chronology,
or later names do not prove direct transmission. No personal
psychological profile or ability is inferred from ethnic background.

## Contemporary equity, self-direction, and agency

An evidence-aware system may use F(S) to track distinct verified
contexts, but its group-specific obligations require independent
constraints and consent-sensitive sourcing. Equal access,
representation targets, the right to challenge an attributed
identity, withdrawal for living participants, and learner choice
are MODERN design values. The bare submodularity theorem does not
establish equitable outcomes, causal history, or self-actualization.

No machine acceptance, independent historiography audit, source
verification for the above historical leads, or source-layout
followup-files validation is claimed by publication of this candidate.
-/

namespace GRWTSK.Combinatorics.ExtremalCombinatorics.FiniteContextCoverage

universe u v

variable {Source : Type u} {Context : Type v}
variable [DecidableEq Source] [DecidableEq Context]

/-- A finite context coverage union, with source identity retained by
    the selection set. The source-to-context map must be validated upstream. -/
def covered (exposure : Source → Finset Context) (chosen : Finset Source) :
    Finset Context :=
  chosen.biUnion exposure

/-- Aggregate distinct-context coverage, not a fairness guarantee. -/
def score (exposure : Source → Finset Context) (chosen : Finset Source) :
    Nat :=
  (covered exposure chosen).card

/-- Exact number of new contexts after adding one candidate. -/
def marginal (exposure : Source → Finset Context)
    (chosen : Finset Source) (candidate : Source) : Nat :=
  (exposure candidate \ covered exposure chosen).card

/-- A source witness in a chosen set is enough for context membership. -/
theorem context_covered_of_selected
    (exposure : Source → Finset Context) (chosen : Finset Source)
    (candidate : Source) (context : Context)
    (hselected : candidate ∈ chosen)
    (hwitness : context ∈ exposure candidate) :
    context ∈ covered exposure chosen := by
  exact Finset.mem_biUnion.mpr ⟨candidate, hselected, hwitness⟩

/-- Adding sources cannot remove an already covered context. -/
theorem covered_mono (exposure : Source → Finset Context)
    {A B : Finset Source} (hAB : A ⊆ B) :
    covered exposure A ⊆ covered exposure B := by
  intro context hc
  rcases Finset.mem_biUnion.mp hc with ⟨candidate, hA, hw⟩
  exact Finset.mem_biUnion.mpr ⟨candidate, hAB hA, hw⟩

theorem score_mono (exposure : Source → Finset Context)
    {A B : Finset Source} (hAB : A ⊆ B) :
    score exposure A ≤ score exposure B := by
  unfold score
  exact Finset.card_le_card (covered_mono exposure hAB)

/-- Source-inventory union preserves context-set union exactly. -/
theorem covered_union (exposure : Source → Finset Context)
    (A B : Finset Source) :
    covered exposure (A ∪ B) =
      covered exposure A ∪ covered exposure B := by
  apply Finset.ext
  intro context
  constructor
  · intro hc
    rcases Finset.mem_biUnion.mp hc with ⟨candidate, hs, hw⟩
    rcases Finset.mem_union.mp hs with hA | hB
    · exact Finset.mem_union.mpr
        (Or.inl (Finset.mem_biUnion.mpr ⟨candidate, hA, hw⟩))
    · exact Finset.mem_union.mpr
        (Or.inr (Finset.mem_biUnion.mpr ⟨candidate, hB, hw⟩))
  · intro hc
    rcases Finset.mem_union.mp hc with hA | hB
    · rcases Finset.mem_biUnion.mp hA with ⟨candidate, hs, hw⟩
      exact Finset.mem_biUnion.mpr
        ⟨candidate, Finset.mem_union.mpr (Or.inl hs), hw⟩
    · rcases Finset.mem_biUnion.mp hB with ⟨candidate, hs, hw⟩
      exact Finset.mem_biUnion.mpr
        ⟨candidate, Finset.mem_union.mpr (Or.inr hs), hw⟩

/-- Source-inventory intersection need not yield all jointly covered
    contexts: distinct source identities may cover the same context. -/
theorem covered_inter_subset (exposure : Source → Finset Context)
    (A B : Finset Source) :
    covered exposure (A ∩ B) ⊆
      covered exposure A ∩ covered exposure B := by
  intro context hc
  rcases Finset.mem_biUnion.mp hc with ⟨candidate, hs, hw⟩
  rcases Finset.mem_inter.mp hs with ⟨hA, hB⟩
  exact Finset.mem_inter.mpr
    ⟨context_covered_of_selected exposure A candidate context hA hw,
     context_covered_of_selected exposure B candidate context hB hw⟩


/-- The finite-set coverage score is submodular: aggregate distinct
    representation has diminishing interaction across candidate inventories.
    This proof uses inclusion-exclusion rather than a greedy algorithm. -/
theorem score_submodular (exposure : Source → Finset Context)
    (A B : Finset Source) :
    score exposure A + score exposure B ≥
      score exposure (A ∪ B) + score exposure (A ∩ B) := by
  have hsmaller := covered_inter_subset exposure A B
  have hcard : (covered exposure (A ∩ B)).card ≤
      (covered exposure A ∩ covered exposure B).card :=
    Finset.card_le_card hsmaller
  have hinclusion := Finset.card_union_add_card_inter
    (covered exposure A) (covered exposure B)
  unfold score
  rw [covered_union]
  omega

/-- Inserting a candidate contributes its coverage union, including overlaps. -/
theorem covered_insert (exposure : Source → Finset Context)
    (chosen : Finset Source) (candidate : Source) :
    covered exposure (insert candidate chosen) =
      covered exposure chosen ∪ exposure candidate := by
  apply Finset.ext
  intro context
  constructor
  · intro hc
    rcases Finset.mem_biUnion.mp hc with ⟨s, hs, hw⟩
    rcases Finset.mem_insert.mp hs with heq | hchosen
    · subst s
      exact Finset.mem_union.mpr (Or.inr hw)
    · exact Finset.mem_union.mpr
        (Or.inl (context_covered_of_selected exposure chosen s context
          hchosen hw))
  · intro hc
    rcases Finset.mem_union.mp hc with hchosen | hw
    · rcases Finset.mem_biUnion.mp hchosen with ⟨s, hs, hcovers⟩
      exact Finset.mem_biUnion.mpr
        ⟨s, Finset.mem_insert_of_mem hs, hcovers⟩
    · exact Finset.mem_biUnion.mpr
        ⟨candidate, Finset.mem_insert_self candidate chosen, hw⟩

/-- The actual new coverage is the source's set minus all earlier coverage.
    This is an exact partition, not an asymptotic counting approximation. -/
theorem score_insert (exposure : Source → Finset Context)
    (chosen : Finset Source) (candidate : Source) :
    score exposure (insert candidate chosen) =
      score exposure chosen + marginal exposure chosen candidate := by
  have hsplit : covered exposure (insert candidate chosen) =
      covered exposure chosen ∪
        (exposure candidate \ covered exposure chosen) := by
    rw [covered_insert]
    apply Finset.ext
    intro context
    constructor
    · intro hc
      rcases Finset.mem_union.mp hc with hchosen | hw
      · exact Finset.mem_union.mpr (Or.inl hchosen)
      · by_cases halready : context ∈ covered exposure chosen
        · exact Finset.mem_union.mpr (Or.inl halready)
        · exact Finset.mem_union.mpr
            (Or.inr (Finset.mem_sdiff.mpr ⟨hw, halready⟩))
    · intro hc
      rcases Finset.mem_union.mp hc with hchosen | hnew
      · exact Finset.mem_union.mpr (Or.inl hchosen)
      · exact Finset.mem_union.mpr
          (Or.inr (Finset.mem_sdiff.mp hnew).1)
  have hdisjoint : Disjoint (covered exposure chosen)
      (exposure candidate \ covered exposure chosen) := by
    apply Finset.disjoint_left.mpr
    intro context hchosen hnew
    exact (Finset.mem_sdiff.mp hnew).2 hchosen
  unfold score marginal
  rw [hsplit, Finset.card_union_of_disjoint hdisjoint]

/-- Diminishing marginal gains: a candidate can add no MORE new contexts
    after a larger initial source inventory has already been selected. -/
theorem marginal_antitone (exposure : Source → Finset Context)
    {A B : Finset Source} (hAB : A ⊆ B) (candidate : Source) :
    marginal exposure B candidate ≤ marginal exposure A candidate := by
  unfold marginal
  apply Finset.card_le_card
  intro context hc
  rcases Finset.mem_sdiff.mp hc with ⟨hin, hnotB⟩
  exact Finset.mem_sdiff.mpr
    ⟨hin, fun hA => hnotB (covered_mono exposure hAB hA)⟩

/-- An explicit coverage obligation is external to aggregate scoring.
    No verified source labels are inferred from this Boolean predicate. -/
def satisfiesRequired (exposure : Source → Finset Context)
    (chosen : Finset Source) (required : Finset Context) : Prop :=
  required ⊆ covered exposure chosen

theorem required_if_witnessed (exposure : Source → Finset Context)
    (chosen : Finset Source) (required : Finset Context)
    (hwitnesses : ∀ context ∈ required,
      ∃ candidate ∈ chosen, context ∈ exposure candidate) :
    satisfiesRequired exposure chosen required := by
  intro context hrequired
  rcases hwitnesses context hrequired with ⟨candidate, hs, hc⟩
  exact context_covered_of_selected exposure chosen candidate context hs hc


/-! ## Hostile finite sources: aggregate score versus representation -/

def toyExposure : Bool → Finset (Fin 4)
  | true => {0, 1, 2}
  | false => {3}

/-- Choosing the three-context candidate maximizes the one-source total. -/
theorem toy_high_score :
    score toyExposure ({true} : Finset Bool) = 3 := by
  decide

theorem toy_low_score :
    score toyExposure ({false} : Finset Bool) = 1 := by
  decide

theorem toy_high_is_best_singleton (candidate : Bool) :
    score toyExposure ({candidate} : Finset Bool) ≤
      score toyExposure ({true} : Finset Bool) := by
  cases candidate <;> decide

/-- A one-source aggregate winner can omit a separately required context. -/
theorem toy_aggregate_optimal_but_unrepresented :
    score toyExposure ({true} : Finset Bool) = 3 ∧
    ¬ satisfiesRequired toyExposure ({true} : Finset Bool)
      ({3} : Finset (Fin 4)) ∧
    satisfiesRequired toyExposure ({false} : Finset Bool)
      ({3} : Finset (Fin 4)) := by
  decide

/-- Distinct sources can cover the same context. Common coverage is not
    proof of a common selected source or shared historical provenance. -/
def duplicateExposure (_ : Bool) : Finset (Fin 2) := {0}

theorem toy_intersection_of_sources_is_not_intersection_of_coverage :
    covered duplicateExposure
      (({true} : Finset Bool) ∩ ({false} : Finset Bool)) = ∅ ∧
    (0 : Fin 2) ∈
      covered duplicateExposure ({true} : Finset Bool) ∩
      covered duplicateExposure ({false} : Finset Bool) := by
  decide

/-! ## Distinct historical and modern interpretation types -/

/-- A historical comparison requires its own documentary source identities;
    mathematical resemblance alone does not create an influence witness. -/
structure ComparativeLead where
  textOrArtifact : String
  originalLanguage : String
  editionOrLocator : Option String
  comparedPractice : String
  directTransmissionWitness : Option String
  interpretationAlternatives : List String

/-- Contemporary study-design values are NOT presumed historical beliefs. -/
structure ModernInterpretiveSafeguards where
  attributionChecked : Bool
  equalEvidenceThresholdAcrossContexts : Bool
  mayChallengeIdentityAttributions : Bool
  originalLanguageRetained : Bool
  consentForLivingInterviewees : Bool
  withdrawalHonored : Bool
  learnerMayChooseMethod : Bool

end GRWTSK.Combinatorics.ExtremalCombinatorics.FiniteContextCoverage

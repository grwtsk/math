# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.ComparatorGatedDyadicFrequencyPFF.Variant344723f9cb757b602df5a774aa2927aed752fc7974c56607103790d55934b164

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `11adb56e3dcbd93889b7cf7856b01703721cc7fa` · SHA-256 `2a95b7294b8d2f4a52bad237eee60f343a2917a1840aa822dbcaecf5354f7f66`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.RuleComparator.Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.RuleComparator.Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/ComparatorGatedDyadicFrequencyPFF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.PermutationFrequencyFactorization

/-!
# Comparator-gated dyadic frequency identity and PFF refinement

This file extends the finite Boolean/Cube `PermutationFrequencyFactorization`
module with a comparator-gated dyadic cylinder-frequency identity.

The identity formalizes the fair binary cylinder pattern

* `[false]` and `[true]` have dyadic mass `1/2`;
* every two-bit word has dyadic mass `1/4`;
* every finite binary word `w` has dyadic mass `2^{-w.length}`;
* every word splits as the sum of its two one-bit extensions.

The comparator is proof-carrying: accepted comparisons become equalities only
through `RuleComparator.sound`. Complex-ring, group-action, and prismatic
`δ`-ring data are attachments governing admissible comparison/sorting rules.
They are not theorem authority.

The PFF refinement below keeps the existing finite PFF object intact and adds:

* a dyadic cylinder profile;
* a comparator-gated frequency identity;
* a `δ`-ring sorting attachment;
* a sorted ordered-factor certificate.

This file proves no analytic continuation, trace formula, RH, Langlands,
prismatic-comparison, Fredholm, or spectral-completion theorem.
-/


namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.RuleComparator.Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3

universe u v w

namespace Boolean
namespace Cube

namespace DyadicFrequency

/-- A finite binary word. -/
abbrev BinaryWord := List Bool

/-- The one-bit word `[0]`. -/
def word0 : BinaryWord := [false]

/-- The one-bit word `[1]`. -/
def word1 : BinaryWord := [true]

/-- The two-bit word `[0, 1]`. -/
def word01 : BinaryWord := [false, true]

/-- The two-bit word `[1, 0]`. -/
def word10 : BinaryWord := [true, false]

/-- The dyadic value `1/2`. -/
def dyadicHalf : Fourier.Dyadic where
  numerator := 1
  exponent := 1

/-- The dyadic value `1/4`. -/
def dyadicQuarter : Fourier.Dyadic where
  numerator := 1
  exponent := 2

/-- The fair Bernoulli dyadic mass of a finite binary word: `2^{-len w}`. -/
def fairDyadicMass (w : BinaryWord) : Fourier.Dyadic where
  numerator := 1
  exponent := w.length

@[simp] theorem fairDyadicMass_nil :
    fairDyadicMass [] = ({ numerator := 1, exponent := 0 } : Fourier.Dyadic) :=
  rfl

@[simp] theorem fairDyadicMass_word0 :
    fairDyadicMass word0 = dyadicHalf :=
  rfl

@[simp] theorem fairDyadicMass_word1 :
    fairDyadicMass word1 = dyadicHalf :=
  rfl

@[simp] theorem fairDyadicMass_word01 :
    fairDyadicMass word01 = dyadicQuarter :=
  rfl

@[simp] theorem fairDyadicMass_word10 :
    fairDyadicMass word10 = dyadicQuarter :=
  rfl

@[simp] theorem fairDyadicMass_append_false (w : BinaryWord) :
    (fairDyadicMass (w ++ [false])).exponent = w.length + 1 := by
  simp [fairDyadicMass]

@[simp] theorem fairDyadicMass_append_true (w : BinaryWord) :
    (fairDyadicMass (w ++ [true])).exponent = w.length + 1 := by
  simp [fairDyadicMass]

/-- A proof-carrying comparator. Metadata, hashes, and labels are not used:
`Accepts x y` becomes equality only through `sound`. -/
structure RuleComparator (α : Type u) where
  Accepts : α → α → Prop
  sound : ∀ {x y : α}, Accepts x y → x = y

namespace RuleComparator

/-- Comparator soundness as a named theorem. -/
theorem accepted_eq {α : Type u} (C : RuleComparator α)
    {x y : α} (h : C.Accepts x y) :
    x = y :=
  C.sound h

/-- The equality comparator. -/
def equality (α : Type u) : RuleComparator α where
  Accepts := fun x y => x = y
  sound := fun h => h

end RuleComparator

/-- Expression interface used by the dyadic frequency identity. -/
structure FrequencyExpression (Target : Type u) where
  /-- Formal expression for the frequency of the cylinder `[w]`. -/
  cylinder : BinaryWord → Target
  /-- Formal expression for a dyadic constant. -/
  dyadic : Fourier.Dyadic → Target
  /-- Formal addition in the target expression language. -/
  add : Target → Target → Target

/-- Comparator-gated dyadic cylinder-frequency identity.

It says that every cylinder expression is accepted as equal to its fair dyadic
mass, and that every cylinder splits into its two one-bit refinements. -/
structure ComparatorGatedDyadicFrequencyIdentity
    (Target : Type u)
    (C : RuleComparator Target) where
  expr : FrequencyExpression Target
  uniformIdentity :
    ∀ w : BinaryWord,
      C.Accepts (expr.cylinder w) (expr.dyadic (fairDyadicMass w))
  splitIdentity :
    ∀ w : BinaryWord,
      C.Accepts
        (expr.cylinder w)
        (expr.add
          (expr.cylinder (w ++ [false]))
          (expr.cylinder (w ++ [true])))

namespace ComparatorGatedDyadicFrequencyIdentity

variable {Target : Type u}
variable {C : RuleComparator Target}

/-- Accepted uniform identities become equalities through comparator soundness. -/
theorem uniform_eq
    (I : ComparatorGatedDyadicFrequencyIdentity Target C)
    (w : BinaryWord) :
    I.expr.cylinder w = I.expr.dyadic (fairDyadicMass w) :=
  C.sound (I.uniformIdentity w)

/-- Accepted split identities become equalities through comparator soundness. -/
theorem split_eq
    (I : ComparatorGatedDyadicFrequencyIdentity Target C)
    (w : BinaryWord) :
    I.expr.cylinder w =
      I.expr.add
        (I.expr.cylinder (w ++ [false]))
        (I.expr.cylinder (w ++ [true])) :=
  C.sound (I.splitIdentity w)

/-- `[0]` has target dyadic mass `1/2`. -/
theorem zero_occurs_half
    (I : ComparatorGatedDyadicFrequencyIdentity Target C) :
    I.expr.cylinder word0 = I.expr.dyadic dyadicHalf := by
  simpa [word0, dyadicHalf, fairDyadicMass] using
    uniform_eq I word0

/-- `[1]` has target dyadic mass `1/2`. -/
theorem one_occurs_half
    (I : ComparatorGatedDyadicFrequencyIdentity Target C) :
    I.expr.cylinder word1 = I.expr.dyadic dyadicHalf := by
  simpa [word1, dyadicHalf, fairDyadicMass] using
    uniform_eq I word1

/-- `[0,1]` has target dyadic mass `1/4`. -/
theorem zero_one_occurs_quarter
    (I : ComparatorGatedDyadicFrequencyIdentity Target C) :
    I.expr.cylinder word01 = I.expr.dyadic dyadicQuarter := by
  simpa [word01, dyadicQuarter, fairDyadicMass] using
    uniform_eq I word01

/-- `[1,0]` has target dyadic mass `1/4`. -/
theorem one_zero_occurs_quarter
    (I : ComparatorGatedDyadicFrequencyIdentity Target C) :
    I.expr.cylinder word10 = I.expr.dyadic dyadicQuarter := by
  simpa [word10, dyadicQuarter, fairDyadicMass] using
    uniform_eq I word10

/-- The first split identity: `[ ] = [0] + [1]`. -/
theorem empty_splits_into_zero_and_one
    (I : ComparatorGatedDyadicFrequencyIdentity Target C) :
    I.expr.cylinder [] =
      I.expr.add (I.expr.cylinder [false]) (I.expr.cylinder [true]) := by
  simpa using split_eq I []

end ComparatorGatedDyadicFrequencyIdentity

/-! ## Rule-pack attachments -/

/-- Complex/ring-algebraic rule attachment for a target expression language. -/
structure ComplexRingRulePack (Target : Type u) where
  zero : Target
  one : Target
  add : Target → Target → Target
  mul : Target → Target → Target
  neg : Target → Target
  inv : Target → Target
  ringRulesSound : Prop
  ringRulesProof : ringRulesSound

/-- Group-action rule attachment for target expressions. -/
structure GroupActionRulePack (G : Type u) (Target : Type v) where
  act : G → Target → Target
  invariant : Target → Prop
  orbitSound : Prop
  orbitSoundProof : orbitSound

/-- Prismatic `δ`-ring attachment. This is certificate data for sorting and
admissibility; it does not construct prismatic cohomology or comparison
isomorphisms. -/
structure PrismaticDeltaRingAttachment (R : Type u) where
  p : Nat
  delta : R → R
  frobeniusLift : R → R
  deltaRingStructure : Prop
  deltaRingStructureProof : deltaRingStructure
  boundedPrism : Prop
  boundedPrismProof : boundedPrism
  siteConstructed : Prop
  siteConstructedProof : siteConstructed

/-- Combined comparator attachment: comparator plus complex/ring,
group-theoretic, and prismatic `δ`-ring rule packs. -/
structure FrequencyComparatorAttachment
    (Target : Type u)
    (R : Type v)
    (G : Type w) where
  comparator : RuleComparator Target
  complexRules : ComplexRingRulePack Target
  groupRules : GroupActionRulePack G Target
  prismaticDeltaRing : PrismaticDeltaRingAttachment R
  attachmentSound : Prop
  attachmentProof : attachmentSound

/-- A comparator-gated identity equipped with the rule attachments. -/
structure PrismaticComparatorFrequencyIdentity
    (Target : Type u)
    (R : Type v)
    (G : Type w) where
  attachment : FrequencyComparatorAttachment Target R G
  identity :
    ComparatorGatedDyadicFrequencyIdentity Target attachment.comparator

/-- The attachment exposes exactly its own soundness obligation. -/
theorem frequencyComparatorAttachment_sound
    {Target : Type u} {R : Type v} {G : Type w}
    (A : FrequencyComparatorAttachment Target R G) :
    A.attachmentSound :=
  A.attachmentProof

/-- The attached identity proves the uniform cylinder equality through the
attached comparator. -/
theorem prismaticComparator_uniform_eq
    {Target : Type u} {R : Type v} {G : Type w}
    (I : PrismaticComparatorFrequencyIdentity Target R G)
    (word : BinaryWord) :
    I.identity.expr.cylinder word =
      I.identity.expr.dyadic (fairDyadicMass word) :=
  ComparatorGatedDyadicFrequencyIdentity.uniform_eq I.identity word

/-- The attached identity proves split refinement through the attached
comparator. -/
theorem prismaticComparator_split_eq
    {Target : Type u} {R : Type v} {G : Type w}
    (I : PrismaticComparatorFrequencyIdentity Target R G)
    (word : BinaryWord) :
    I.identity.expr.cylinder word =
      I.identity.expr.add
        (I.identity.expr.cylinder (word ++ [false]))
        (I.identity.expr.cylinder (word ++ [true])) :=
  ComparatorGatedDyadicFrequencyIdentity.split_eq I.identity word

/-- Raw comparator-gated frequency identities are not analytic theorem
authority. -/
def ComparatorGatedFrequencyIdentityOwnsAnalyticTheorem
    {Target : Type u}
    {C : RuleComparator Target}
    (_I : ComparatorGatedDyadicFrequencyIdentity Target C) : Prop :=
  False

/-- Firewall: a frequency identity does not own analytic theorem authority. -/
theorem comparator_gated_frequency_identity_not_analytic_authority
    {Target : Type u}
    {C : RuleComparator Target}
    (I : ComparatorGatedDyadicFrequencyIdentity Target C) :
    ¬ ComparatorGatedFrequencyIdentityOwnsAnalyticTheorem I := by
  intro h
  exact h

end DyadicFrequency

namespace PermutationFrequencyFactorization

open DyadicFrequency

/-! ## Dyadic comparator refinement of PFF -/

/-- Lexicographic order on integer lists. This is intentionally finite and
Boolean-side. -/
def lexLeInt : List Int → List Int → Prop
  | [], _ => True
  | _ :: _, [] => False
  | x :: xs, y :: ys => x < y ∨ (x = y ∧ lexLeInt xs ys)

/-- A generic least-by-key predicate over a finite candidate list. -/
def IsLeastBy {α : Type u} {β : Type v}
    (le : β → β → Prop)
    (key : α → β)
    (chosen : α)
    (candidates : List α) : Prop :=
  ∀ candidate : α, candidate ∈ candidates → le (key chosen) (key candidate)

/-- Finite dyadic cylinder profile attached to a cube function. The concrete
counting semantics are supplied by the fields; the profile is still finite
metadata unless connected to a proof-carrying realization. -/
structure DyadicCylinderProfile
    {n : Nat}
    (f : WalshFourier.Function n) where
  maxDepth : Nat
  count : BinaryWord → Nat
  defectNumerator : BinaryWord → Nat → Int
  splitSound :
    ∀ w : BinaryWord,
      w.length < maxDepth →
        count w = count (w ++ [false]) + count (w ++ [true])
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- The expected fair dyadic mass of a word in any cylinder profile. -/
def DyadicCylinderProfile.expectedMass
    {n : Nat}
    {f : WalshFourier.Function n}
    (_P : DyadicCylinderProfile f)
    (w : BinaryWord) : Fourier.Dyadic :=
  fairDyadicMass w

/-- A dyadic factor-key assignment derived from a dyadic profile. -/
structure DyadicFactorKeyer
    {n : Nat}
    {f : WalshFourier.Function n}
    (P : DyadicCylinderProfile f) where
  key : OrderedFactorTree → List Int
  keySound : Prop
  keySoundProof : keySound

/-- `δ`-ring sorting attachment for ordered factors. The attachment may carry
prismatic sorting semantics, but it is not prismatic theorem authority. -/
structure DeltaRingSortAttachment (R : Type u) where
  p : Nat
  delta : R → R
  frobeniusLift : R → R
  deltaRingStructure : Prop
  deltaRingStructureProof : deltaRingStructure
  encodeFactor : OrderedFactorTree → R
  sortKey : R → List Int
  comparatorSound : Prop
  comparatorSoundProof : comparatorSound

/-- The finite sort key of a factor under a `δ`-ring sorting attachment. -/
def DeltaRingSortAttachment.factorKey
    {R : Type u}
    (D : DeltaRingSortAttachment R)
    (t : OrderedFactorTree) : List Int :=
  D.sortKey (D.encodeFactor t)

/-- Combined dyadic/`δ` sorting key. -/
def combinedDyadicDeltaSortKey
    {n : Nat}
    {f : WalshFourier.Function n}
    {R : Type u}
    {P : DyadicCylinderProfile f}
    (K : DyadicFactorKeyer P)
    (D : DeltaRingSortAttachment R)
    (t : OrderedFactorTree) : List Int :=
  K.key t ++ D.factorKey t

/-- Dyadic and `δ`-sorted refinement of an existing PFF object. -/
structure DyadicDeltaSortedPFF
    {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f : WalshFourier.Function n)
    (I : OrderedFactorInterpreter n)
    (Target : Type u)
    (C : RuleComparator Target)
    (R : Type v)
    (D : DeltaRingSortAttachment R) where
  basePFF : PFFactorization G f I
  frequencyIdentity : ComparatorGatedDyadicFrequencyIdentity Target C
  dyadicProfile :
    DyadicCylinderProfile basePFF.canonicalCertificate.representative
  dyadicKeyer : DyadicFactorKeyer dyadicProfile
  factorCandidates : List OrderedFactorTree
  sortedFactor : OrderedFactorTree
  sortedFactorInCandidates : sortedFactor ∈ factorCandidates
  sortedFactorRealizes :
    I.eval sortedFactor = basePFF.canonicalCertificate.representative
  sortedByDyadicAndDelta :
    IsLeastBy
      lexLeInt
      (combinedDyadicDeltaSortKey dyadicKeyer D)
      sortedFactor
      factorCandidates

namespace DyadicDeltaSortedPFF

variable {n : Nat}
variable {G : FiniteCoordinateGroup n}
variable {f : WalshFourier.Function n}
variable {I : OrderedFactorInterpreter n}
variable {Target : Type u}
variable {C : RuleComparator Target}
variable {R : Type v}
variable {D : DeltaRingSortAttachment R}

/-- The canonical representative inherited from the base PFF object. -/
def canonicalRepresentative
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    WalshFourier.Function n :=
  P.basePFF.canonicalCertificate.representative

/-- The sorted ordered factor of the refined PFF object. -/
def orderedFactor
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    OrderedFactorTree :=
  P.sortedFactor

/-- The combined dyadic/`δ` key of the sorted factor. -/
def sortedFactorKey
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    List Int :=
  combinedDyadicDeltaSortKey P.dyadicKeyer D P.sortedFactor

end DyadicDeltaSortedPFF

/-- Soundness of the dyadic/`δ`-sorted PFF refinement. -/
theorem dyadic_delta_sorted_pff_sound
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    {Target : Type u}
    {C : RuleComparator Target}
    {R : Type v}
    {D : DeltaRingSortAttachment R}
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    OrbitEquivalent G f P.basePFF.canonicalCertificate.representative ∧
      I.eval P.sortedFactor = P.basePFF.canonicalCertificate.representative ∧
      IsLeastBy
        lexLeInt
        (combinedDyadicDeltaSortKey P.dyadicKeyer D)
        P.sortedFactor
        P.factorCandidates ∧
      (∀ w : BinaryWord,
        P.frequencyIdentity.expr.cylinder w =
          P.frequencyIdentity.expr.dyadic (fairDyadicMass w)) :=
  ⟨P.basePFF.canonicalCertificate.inOrbit,
    P.sortedFactorRealizes,
    P.sortedByDyadicAndDelta,
    fun w => ComparatorGatedDyadicFrequencyIdentity.uniform_eq
      P.frequencyIdentity w⟩

/-- The base PFF theorem is still available from a sorted refinement. -/
theorem dyadic_delta_sorted_pff_base_sound
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    {Target : Type u}
    {C : RuleComparator Target}
    {R : Type v}
    {D : DeltaRingSortAttachment R}
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    OrbitEquivalent G f P.basePFF.canonicalCertificate.representative ∧
      (P.basePFF.canonicalSpectrum =
        fun S =>
          WalshFourier.projectionNumerator
            P.basePFF.canonicalCertificate.representative S) ∧
      (I.eval P.basePFF.orderedFactorCertificate.factor =
        P.basePFF.canonicalCertificate.representative) ∧
      P.basePFF.walshEquivarianceSound ∧
      P.basePFF.completeInvariantSound :=
  permutation_frequency_factorization_theorem P.basePFF

/-- Raw dyadic/`δ`-sorted PFF objects are not analytic theorem authority. -/
def DyadicDeltaSortedPFFOwnsAnalyticTheorem
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    {Target : Type u}
    {C : RuleComparator Target}
    {R : Type v}
    {D : DeltaRingSortAttachment R}
    (_P : DyadicDeltaSortedPFF G f I Target C R D) : Prop :=
  False

/-- Firewall: the sorted refinement does not own analytic theorem authority. -/
theorem dyadic_delta_sorted_pff_not_analytic_authority
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    {Target : Type u}
    {C : RuleComparator Target}
    {R : Type v}
    {D : DeltaRingSortAttachment R}
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    ¬ DyadicDeltaSortedPFFOwnsAnalyticTheorem P := by
  intro h
  exact h

/-- Boundary summary for the dyadic comparator plus sorted PFF extension. -/
theorem dyadic_delta_sorted_pff_boundary_summary
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    {Target : Type u}
    {C : RuleComparator Target}
    {R : Type v}
    {D : DeltaRingSortAttachment R}
    (P : DyadicDeltaSortedPFF G f I Target C R D) :
    ¬ DyadicDeltaSortedPFFOwnsAnalyticTheorem P ∧
      ¬ PFFactorizationOwnsAnalyticTheorem P.basePFF ∧
      ¬ OrderedFactorTreeOwnsAnalyticTheorem P.sortedFactor ∧
      ¬ ComparatorGatedFrequencyIdentityOwnsAnalyticTheorem
          P.frequencyIdentity :=
  ⟨dyadic_delta_sorted_pff_not_analytic_authority P,
    pff_not_analytic_authority P.basePFF,
    orderedFactorTree_not_analytic_authority P.sortedFactor,
    comparator_gated_frequency_identity_not_analytic_authority
      P.frequencyIdentity⟩

end PermutationFrequencyFactorization

end Cube
end Boolean
```

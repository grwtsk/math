# Complete source: GRWTSK.Topology.MetricTopology.BooleanYoneda.Variant9ad95ad4c6f751efb5f79195bf1f3df86dd12be2deb9384442d23cf49436468e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ec7d8b40e2fc8527cf5d25e5aedfc6629f562f0` · SHA-256 `5dbb3222ed205560cc4f405d0283d353f7cfd7484e6ff8fda8636c1f40804730`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.MetricTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.MetricTopology.RationalRadiusProbe.Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.MetricSpaces.SourceCorpus.RationalRadiusProbe.Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765","mathematical_subject":"Topology.MetricSpaces","original_sha256":"67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Terrain/BooleanYoneda.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.CategoryTheory.Functor.KanExtension.Dense
import Mathlib.Order.Atoms
import Mathlib.Topology.Bases
import Mathlib.Topology.MetricSpace.Defs
import Mathlib.Topology.Separation.Basic

/-!
# Certified Boolean shadows of restricted Yoneda nerves

This module keeps three representations separate:

* the Hom-valued restricted Yoneda nerve;
* a Boolean incidence shadow;
* a point or region reconstructed from a certified shadow.

Categorical density makes the Hom-valued nerve fully faithful.  Boolean
faithfulness is proved only under an additional thinness, join-generation,
topological separation, or metric-threshold hypothesis.
-/


namespace GRWTSK.Topology.MetricTopology.RationalRadiusProbe.Variant67673af5d557aad64cb668e11badb3b24ebd16efec5dd0fd3f1545603071a765

namespace Mathematics.Terrain.BooleanYoneda

open CategoryTheory
open Set
open TopologicalSpace

universe w v₁ v₂ u₁ u₂ u₃

section RestrictedYoneda

variable {Probe : Type u₁} {C : Type u₂}
  [Category.{v₁} Probe] [Category.{v₂} C]

/-- The complete Hom-valued nerve restricted along a probe functor. -/
abbrev RestrictedNerve (i : Probe ⥤ C) :=
  CategoryTheory.Presheaf.restrictedULiftYoneda.{w} i

/--
Categorical density makes the complete restricted Yoneda nerve fully
faithful.  This is the lossless categorical representation; no Boolean
reduction occurs in this theorem.
-/
noncomputable def restrictedNerveFullyFaithful
    (i : Probe ⥤ C) [i.IsDense] :
    (RestrictedNerve.{w} i).FullyFaithful :=
  Functor.FullyFaithful.ofFullyFaithful _

/-- The explicit Hom/natural-transformation equivalence supplied by density. -/
noncomputable def restrictedNerveHomEquiv
    (i : Probe ⥤ C) [i.IsDense] (X Y : C) :
    (X ⟶ Y) ≃
      ((RestrictedNerve.{w} i).obj X ⟶
        (RestrictedNerve.{w} i).obj Y) :=
  (restrictedNerveFullyFaithful.{w} i).homEquiv

/-- The Boolean support of a type remembers only whether it is inhabited. -/
def support (α : Type u₃) : Prop :=
  Nonempty α

/-- Objectwise Boolean incidence for one probe object and one target. -/
def booleanIncidence (i : Probe ⥤ C) (S : Probe) (X : C) : Prop :=
  Nonempty (i.obj S ⟶ X)

/--
Support forgets no information about a subsingleton type.  Applied to every
Hom type, this is the precise local reason Booleanization is exact in a thin
category.
-/
noncomputable def equivSupportOfSubsingleton
    (α : Type u₃) [Subsingleton α] :
    α ≃ support α where
  toFun := Nonempty.intro
  invFun := Classical.choice
  left_inv _ := Subsingleton.elim _ _
  right_inv _ := Subsingleton.elim _ _

/-- In a thin category, a Hom type is equivalent to its Boolean support. -/
noncomputable def homEquivBooleanIncidenceOfSubsingleton
    (i : Probe ⥤ C) (S : Probe) (X : C)
    [Subsingleton (i.obj S ⟶ X)] :
    (i.obj S ⟶ X) ≃ booleanIncidence i S X :=
  equivSupportOfSubsingleton _

end RestrictedYoneda

section BooleanizationCounterexample

/-- Support seen from the singleton probe in the category of types. -/
def singletonProbeSupport (X : Type u₁) : Prop :=
  Nonempty (Unit → X)

theorem singletonProbeSupport_iff (X : Type u₁) :
    singletonProbeSupport X ↔ Nonempty X := by
  constructor
  · rintro ⟨f⟩
    exact ⟨f ()⟩
  · rintro ⟨x⟩
    exact ⟨fun _ => x⟩

/-- The singleton probe gives the same Boolean answer on `Unit` and `Bool`. -/
theorem singletonProbeSupport_unit_iff_bool :
    singletonProbeSupport Unit ↔ singletonProbeSupport Bool := by
  exact
    ⟨fun _ => ⟨fun _ => false⟩,
     fun _ => ⟨fun _ => ()⟩⟩

/-- `Unit` and `Bool` are nevertheless not equivalent types. -/
theorem unit_not_equiv_bool :
    ¬ Nonempty (Unit ≃ Bool) := by
  rintro ⟨e⟩
  have hpre : e.symm false = e.symm true := Subsingleton.elim _ _
  have h : (false : Bool) = true := by
    simpa using congrArg e hpre
  exact Bool.false_ne_true h

/-- One fixed-radius bit per endpoint does not separate real points. -/
def twoEndpointUnitRadiusCode (x : ℝ) : Bool → Prop
  | false => dist 0 x < 1
  | true => dist 1 x < 1

theorem twoEndpointUnitRadiusCode_oneThird_eq_twoThird :
    twoEndpointUnitRadiusCode ((1 : ℝ) / 3) =
      twoEndpointUnitRadiusCode ((2 : ℝ) / 3) := by
  funext endpoint
  apply propext
  cases endpoint <;>
    norm_num [twoEndpointUnitRadiusCode, Real.dist_eq]

theorem oneThird_ne_twoThird :
    ((1 : ℝ) / 3) ≠ (2 : ℝ) / 3 := by
  norm_num

end BooleanizationCounterexample

section JoinGeneratedRegions

variable {A : Type u₁} {L : Type u₂} [CompleteLattice L]

/-- The Boolean region code records which probes lie below a region. -/
def regionCode (probe : A → L) (x : L) : A → Prop :=
  fun a => probe a ≤ x

/-- Reconstruct a region by joining all probes selected by a bitfield. -/
def reconstructRegion (probe : A → L) (bits : A → Prop) : L :=
  ⨆ a, ⨆ (_ : bits a), probe a

/-- The probe family is join-generating when every region is this join. -/
def JoinGenerated (probe : A → L) : Prop :=
  ∀ x, x = reconstructRegion probe (regionCode probe x)

theorem reconstructRegion_regionCode
    (probe : A → L) (hprobe : JoinGenerated probe) (x : L) :
    reconstructRegion probe (regionCode probe x) = x :=
  (hprobe x).symm

/--
For a join-generated probe family, containment of regions is exactly
coordinatewise implication of their Boolean incidence codes.
-/
theorem le_iff_regionCode_imp
    (probe : A → L) (hprobe : JoinGenerated probe) (x y : L) :
    x ≤ y ↔ ∀ a, regionCode probe x a → regionCode probe y a := by
  constructor
  · intro hxy a hax
    exact hax.trans hxy
  · intro hbits
    rw [hprobe x]
    refine iSup_le fun a => ?_
    refine iSup_le fun ha => ?_
    exact hbits a ha

/-- A join-generated Boolean region code is injective. -/
theorem regionCode_injective
    (probe : A → L) (hprobe : JoinGenerated probe) :
    Function.Injective (regionCode probe) := by
  intro x y hxy
  apply le_antisymm
  · exact (le_iff_regionCode_imp probe hprobe x y).2 fun a ha => by
      have h := congrFun hxy a
      simpa [regionCode] using h.mp ha
  · exact (le_iff_regionCode_imp probe hprobe y x).2 fun a ha => by
      have h := congrFun hxy a
      simpa [regionCode] using h.mpr ha

/-- The region code is an order embedding, not merely an injection. -/
def regionCodeOrderEmbedding
    (probe : A → L) (hprobe : JoinGenerated probe) :
    L ↪o (A → Prop) where
  toFun := regionCode probe
  inj' := regionCode_injective probe hprobe
  map_rel_iff' := fun {_ _} => (le_iff_regionCode_imp probe hprobe _ _).symm

end JoinGeneratedRegions

section CompleteAtomicBooleanRegions

variable {L : Type u₁} [CompleteAtomicBooleanAlgebra L]

/--
The strongest exact region model: a complete atomic Boolean algebra is
order-isomorphic to the powerset of its atoms.  In this specialization every
bitfield is a valid region, with inverse given by the supremum of the selected
atoms.
-/
def completeAtomicBooleanRegionEquiv :
    L ≃o Set {a : L // IsAtom a} :=
  CompleteAtomicBooleanAlgebra.toSetOfIsAtom

end CompleteAtomicBooleanRegions

section TopologicalPoints

variable {X : Type u₁} [TopologicalSpace X]

/-- Membership in each member of a chosen neighborhood basis. -/
def neighborhoodCode (B : Set (Set X)) (x : X) : B → Prop :=
  fun U => x ∈ (U : Set X)

/--
In a `T₀` space, every topological basis separates points, so its complete
membership bitfield is injective.
-/
theorem neighborhoodCode_injective
    [T0Space X] {B : Set (Set X)} (hB : IsTopologicalBasis B) :
    Function.Injective (neighborhoodCode B) := by
  intro x y hxy
  apply (hB.eq_iff).2
  intro U hU
  have h := congrFun hxy ⟨U, hU⟩
  simpa [neighborhoodCode] using h

end TopologicalPoints

section MetricThresholds

variable {D : Type u₁} {X : Type u₂} [MetricSpace X]

/-- One dense-beacon/rational-radius probe. -/
structure RationalRadiusProbe (D : Type u₁) where
  center : D
  radius : ℚ
  radius_pos : 0 < radius

/-- The exact threshold bit says that the target lies in the probe ball. -/
def metricThresholdCode (beacon : D → X) (x : X) :
    RationalRadiusProbe D → Prop :=
  fun p => dist (beacon p.center) x < (p.radius : ℝ)

/--
Equality of complete rational-threshold bitfields is equivalent to equality of
all beacon distances.
-/
theorem metricThresholdCode_eq_iff
    (beacon : D → X) (x y : X) :
    metricThresholdCode beacon x = metricThresholdCode beacon y ↔
      ∀ s, dist (beacon s) x = dist (beacon s) y := by
  constructor
  · intro hcode s
    apply eq_of_forall_lt_rat_iff_lt
    intro q
    by_cases hq : 0 < q
    · let p : RationalRadiusProbe D := ⟨s, q, hq⟩
      have h := congrFun hcode p
      simpa [metricThresholdCode, p] using h
    · have hq' : (q : ℝ) ≤ 0 := by
        exact_mod_cast le_of_not_gt hq
      constructor <;> intro hdist
      · exact ((not_lt_of_ge (hq'.trans dist_nonneg)) hdist).elim
      · exact ((not_lt_of_ge (hq'.trans dist_nonneg)) hdist).elim
  · intro hdist
    funext p
    apply propext
    rw [metricThresholdCode, metricThresholdCode, hdist p.center]

/--
A dense beacon family together with every positive rational radius separates
all points of a metric space.
-/
theorem metricThresholdCode_injective
    (beacon : D → X) (hdense : DenseRange beacon) :
    Function.Injective (metricThresholdCode beacon) := by
  intro x y hcode
  have hdist := (metricThresholdCode_eq_iff beacon x y).1 hcode
  by_contra hxy
  have hδ : 0 < dist x y := dist_pos.mpr hxy
  obtain ⟨s, hs⟩ := hdense.exists_dist_lt x (half_pos hδ)
  rw [dist_comm x (beacon s)] at hs
  have htriangle := dist_triangle x (beacon s) y
  rw [dist_comm x (beacon s), ← hdist s] at htriangle
  linarith

/--
Consequently, equality of the bitfields of two ordered pairs determines their
metric distance exactly.
-/
theorem metricThresholdCode_determines_distance
    (beacon : D → X) (hdense : DenseRange beacon)
    {x₁ x₂ y₁ y₂ : X}
    (h₁ : metricThresholdCode beacon x₁ = metricThresholdCode beacon y₁)
    (h₂ : metricThresholdCode beacon x₂ = metricThresholdCode beacon y₂) :
    dist x₁ x₂ = dist y₁ y₂ := by
  rw [metricThresholdCode_injective beacon hdense h₁,
    metricThresholdCode_injective beacon hdense h₂]

end MetricThresholds

section ComputationalQuotient

variable {P : Type u₁} {X : Type u₂}

/-- A generic Boolean observation family. -/
def probeCode (Q : P → X → Prop) (x : X) : P → Prop :=
  fun p => Q p x

/-- Computational equality induced by the selected probe family. -/
def ProbeEquivalent (Q : P → X → Prop) (x y : X) : Prop :=
  probeCode Q x = probeCode Q y

def probeSetoid (Q : P → X → Prop) : Setoid X where
  r := ProbeEquivalent Q
  iseqv := ⟨fun _ => rfl, fun h => h.symm, fun h₁ h₂ => h₁.trans h₂⟩

/-- The exact finite-precision object is the quotient induced by the probes. -/
abbrev ComputationalQuotient (Q : P → X → Prop) :=
  Quotient (probeSetoid Q)

/-- The quotient has a well-defined Boolean code. -/
def quotientCode (Q : P → X → Prop) :
    ComputationalQuotient Q → P → Prop :=
  Quotient.lift (probeCode Q) fun _ _ h => h

/-- The induced Boolean code is injective on the computational quotient. -/
theorem quotientCode_injective (Q : P → X → Prop) :
    Function.Injective (quotientCode Q) := by
  intro q₁ q₂
  refine Quotient.inductionOn₂ q₁ q₂ ?_
  intro x y hxy
  exact Quotient.sound hxy

end ComputationalQuotient

section FinitePrecisionCertificates

variable {P : Type u₁} {X : Type u₂} [PseudoMetricSpace X]

/--
A resolution claim is additional evidence: equal finite codes must force a
declared metric error bound.
-/
structure ResolutionCertificate (Q : P → X → Prop) (ε : ℝ) : Prop where
  nonnegative : 0 ≤ ε
  resolves : ∀ x y, ProbeEquivalent Q x y → dist x y ≤ ε

theorem equivalent_dist_le
    {Q : P → X → Prop} {ε : ℝ}
    (certificate : ResolutionCertificate Q ε)
    {x y : X} (hxy : ProbeEquivalent Q x y) :
    dist x y ≤ ε :=
  certificate.resolves x y hxy

/--
A cover becomes a unique carrier assignment only with a separate partition
certificate.
-/
structure CarrierPartition (S : Type u₁) (cell : S → Set X) : Prop where
  covers : ∀ x, ∃ s, x ∈ cell s
  disjoint : ∀ {s t x}, x ∈ cell s → x ∈ cell t → s = t

omit [PseudoMetricSpace X] in
theorem existsUnique_carrier
    {S : Type u₁} {cell : S → Set X}
    (partition : CarrierPartition S cell) (x : X) :
    ∃! s, x ∈ cell s := by
  obtain ⟨s, hs⟩ := partition.covers x
  exact ⟨s, hs, fun t ht => partition.disjoint ht hs⟩

end FinitePrecisionCertificates

section ExactDecoding

variable {X : Type u₁} {Code : Type u₂}

/-- The subtype of codes that actually encode an admissible source state. -/
def CodeImage (encode : X → Code) :=
  {code : Code // code ∈ Set.range encode}

/-- The inverse on the certified image of an injective encoding. -/
noncomputable def decodeImage
    (encode : X → Code) (_hinjective : Function.Injective encode) :
    CodeImage encode → X :=
  fun code => Classical.choose code.property

theorem encode_decodeImage
    (encode : X → Code) (hinjective : Function.Injective encode)
    (code : CodeImage encode) :
    encode (decodeImage encode hinjective code) = code.1 :=
  Classical.choose_spec code.property

theorem decodeImage_encode
    (encode : X → Code) (hinjective : Function.Injective encode) (x : X) :
    decodeImage encode hinjective ⟨encode x, ⟨x, rfl⟩⟩ = x := by
  apply hinjective
  exact encode_decodeImage encode hinjective _

/--
Independent proof obligations for a learned decoder.  The output state,
admissibility predicate, latent equivalence, and transition relation remain
separately typed.
-/
structure DecoderCertificate
    (Latent : Type u₁) (State : Type u₂)
    (Valid : State → Prop)
    (LatentEquivalent : Latent → Latent → Prop)
    (PredictedTransition : Latent → Latent → Prop)
    (AdmissibleTransition : State → State → Prop) where
  decode : Latent → State
  sound : ∀ z, Valid (decode z)
  surjective : ∀ x, Valid x → ∃ z, decode z = x
  exact : ∀ z₁ z₂, decode z₁ = decode z₂ ↔ LatentEquivalent z₁ z₂
  transitionSound :
    ∀ {z₁ z₂}, PredictedTransition z₁ z₂ →
      AdmissibleTransition (decode z₁) (decode z₂)

end ExactDecoding

end Mathematics.Terrain.BooleanYoneda
```

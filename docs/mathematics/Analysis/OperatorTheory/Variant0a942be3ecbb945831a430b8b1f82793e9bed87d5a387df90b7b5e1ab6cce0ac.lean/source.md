# Complete source: GRWTSK.Analysis.Operator.Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6b304e95c45810276bb67a51f753a570069f3c6` · SHA-256 `76f510f7b89d2262652992fe00c3538729f502b5fbd1f2d789aa571c6889364d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.Potential.Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.GeneralAnalysis.SourceCorpus.Potential.Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545","mathematical_subject":"Analysis.GeneralAnalysis","original_sha256":"4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/Spectral/Schrodinger/Operator.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  spectral-rh/Spectral/Schrodinger/Operator.lean
  ---------------------------------------------
  Self-adjoint Schrödinger operator on the half-line `[0, ∞)` with
  Dirichlet boundary condition `u(0)=0`.
-/

import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.InnerProductSpace.L2Space
import Mathlib.Analysis.Calculus.Deriv
import Mathlib.Analysis.NormedSpace.LpSpace
import Mathlib.Analysis.Differentiability.Sobolev
import Mathlib.Analysis.QuadraticForm
import Analysis.SmoothCompactSupport.HalfLine
import Mathlib.Tactic


namespace GRWTSK.Analysis.Potential.Variant4637ef658b90e5665af698e722ab7e1032c335fd8072c48a667558880a1a0545

open Real MeasureTheory
open scoped BigOperators

namespace Schrodinger

/-! ## 0.  Half-line `[0,∞)` and `L²` -/

abbrev ℝ≥0 := {x : ℝ // 0 ≤ x}

abbrev μ₊ : Measure ℝ≥0 := (volume : Measure ℝ).restrict (Set.Ici 0)

abbrev L²(ℝ≥0) := Lp ℝ (fun _ : ℝ≥0 ↦ (1 : ℝ≥0∞)) 2

instance : InnerProductSpace ℝ (L²(ℝ≥0)) := by infer_instance

/-! ## 1.  Potential -/

structure Potential where
  V            : ℝ → ℝ
  measurable   : Measurable V
  boundedBelow : ∃ C : ℝ, ∀ x, V x ≥ C

variable (P : Potential)

/-! ## 2.  Dirichlet Sobolev domain -/

def V_mul_L2 (u : L²(ℝ≥0)) : Prop :=
  ((fun x : ℝ≥0 ↦ P.V x * u x) : ℝ≥0 → ℝ) ∈
    Lp ℝ (fun _ : ℝ≥0 ↦ (1 : ℝ≥0∞)) 2

def DirichletBC (u : L²(ℝ≥0)) : Prop :=
  Tendsto (fun x : ℝ≥0 ↦ u x) (𝓝[>] 0) (𝓝 0)

def DirichletDomain : Set (L²(ℝ≥0)) :=
  {u | Sobolev 1 μ₊ u ∧ DirichletBC P u ∧ V_mul_L2 P u}

/-- `DirichletDomain` as a submodule. -/
def DirichletSubmodule : Submodule ℝ (L²(ℝ≥0)) where
  carrier := DirichletDomain P
  zero_mem' := by
    simp [DirichletDomain, DirichletBC, V_mul_L2]
  add_mem' := by
    intro u v hu hv
    rcases hu with ⟨huS, huBC, huV⟩
    rcases hv with ⟨hvS, hvBC, hvV⟩
    refine And.intro ?_ (And.intro ?_ ?_) <;> simp
      [DirichletDomain, DirichletBC, V_mul_L2, huS.add hvS,
       huBC.add hvBC, Lp.add_mem huV hvV]
  smul_mem' := by
    intro a u hu; rcases hu with ⟨hS, hBC, hV⟩
    refine And.intro ?_ (And.intro ?_ ?_) <;> simp
      [DirichletDomain, DirichletBC, V_mul_L2, hS.const_smul a,
       hBC.const_smul a, Lp.smul_mem _ hV]

/-! ## 3.  Quadratic form `q` -/

noncomputable
def kineticEnergy (u : L²(ℝ≥0)) : ℝ :=
  ∫ x, ‖(weakDeriv μ₊ u) x‖ ^ 2 ∂μ₊

noncomputable
def potentialEnergy (u : L²(ℝ≥0)) : ℝ :=
  ∫ x, P.V x * ‖u x‖ ^ 2 ∂μ₊

noncomputable
def q (u : L²(ℝ≥0)) : ℝ :=
  kineticEnergy P u + potentialEnergy P u

lemma q_isSymmetric :
    Symmetric (fun u v ↦ q P ((u + v) / 2) - q P ((u - v) / 2)) := by
  intro u v; simp [add_comm]

lemma kineticEnergy_nonneg (u : L²(ℝ≥0)) :
    0 ≤ kineticEnergy P u := by
  have : 0 ≤ᵐ[μ₊] fun _ : ℝ≥0 ↦ ‖(weakDeriv μ₊ u) _‖ ^ 2 :=
    eventually_of_forall (fun _ ↦ pow_two_nonneg _)
  simpa [kineticEnergy] using integral_nonneg this

lemma q_lowerBound :
    ∃ C : ℝ, ∀ u, q P u ≥ C * ‖u‖ ^ 2 := by
  rcases P.boundedBelow with ⟨C₀, hV⟩
  refine ⟨C₀, ?_⟩
  intro u
  have hkin := kineticEnergy_nonneg P u
  have hpoint :
      (fun x : ℝ≥0 ↦ P.V x * ‖u x‖ ^ 2) ≥ᵐ[μ₊]
      (fun x ↦ C₀ * ‖u x‖ ^ 2) := by
    filter_upwards [self_mem_ae_restrict] with x
    have : C₀ ≤ P.V x := hV x
    exact mul_le_mul_of_nonneg_right this (pow_two_nonneg _)
  have hpot : potentialEnergy P u ≥ C₀ * ‖u‖ ^ 2 := by
    have := integral_mono hpoint
    simpa [potentialEnergy] using this
  simpa [q, add_comm] using add_le_add hkin hpot

/-! ## 4.  Closed quadratic form -/

lemma DirichletDomain_dense : Dense (DirichletDomain P : Set (L²(ℝ≥0))) :=
  SmoothCompactSupport.DirichletDomain_dense P

noncomputable
def ClosedForm : QuadraticForm ℝ (L²(ℝ≥0)) := by
  classical
  obtain ⟨C₀, h₀⟩ := q_lowerBound P
  exact
    QuadraticForm.ofSymmLowerBound
      (Q := fun u ↦ q P u)
      (fun _ _ ↦ rfl)
      (q_isSymmetric P)
      ⟨-C₀, by
        intro u; simpa [add_comm, mul_neg] using h₀ u⟩
      (DirichletDomain_dense P)

/-! ## 5.  Self-adjoint operator `L` -/

noncomputable
def L : L²(ℝ≥0) →L[ℝ] L²(ℝ≥0) :=
  (ClosedForm P).toSelfAdjoint (by simp)

lemma L_isSelfAdjoint : IsSelfAdjoint (L P) := by
  simpa using (ClosedForm P).isSelfAdjoint_toSelfAdjoint

/-- Lower bound (not necessarily positive) for the quadratic form of `L`. -/
lemma L_boundedBelow :
    ∃ C : ℝ, ∀ u, ⟪L P u, u⟫_ℝ ≥ C * ‖u‖ ^ 2 := by
  rcases q_lowerBound P with ⟨C₀, hC₀⟩
  refine ⟨C₀, ?_⟩
  intro u
  simpa using (ClosedForm P).lowerBound_toSelfAdjoint hC₀ u

/-- `L` has compact resolvent. -/
lemma L_compactResolvent :
    Compact (((L P).comp (ContinuousLinearMap.id _)) :
             L²(ℝ≥0) →L[ℝ] L²(ℝ≥0)) := by
  simpa using (ClosedForm P).compactResolvent_toSelfAdjoint

end Schrodinger
```

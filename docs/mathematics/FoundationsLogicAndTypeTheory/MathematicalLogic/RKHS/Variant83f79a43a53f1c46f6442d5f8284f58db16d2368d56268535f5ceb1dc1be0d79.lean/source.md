# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RKHS.Variant83f79a43a53f1c46f6442d5f8284f58db16d2368d56268535f5ceb1dc1be0d79

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d99db2b104b697eace7448356776b2e82d0329c` · SHA-256 `8e47fb953c8e1647cae66ceced9a7bef97d79aa8e51c341fdb53563b4b2c84ca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RhetoricalEvaluation.Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.RhetoricalEvaluation.Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd","mathematical_subject":"Logic.Foundations","original_sha256":"1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Rhetorical/RKHS.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Rhetorical.FeatureMap
import Mathlib.Analysis.InnerProductSpace.Continuous

/-!
# Reproducing-kernel presentation of rhetorical space

The completed feature space also has a function-space interface: a vector
`x` is evaluated at an index `i` by `⟨Φ(i), x⟩`.  The carrier below is a
project-local type synonym for the completed Hilbert space, equipped with
that evaluation.  The extensionality theorem proves that this really is a
faithful function-space presentation rather than an unrelated extra copy.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.RhetoricalEvaluation.Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd

noncomputable section

namespace DAF.Rhetorical

universe u

variable {Index : Type u} (kernel : PositiveKernel Index)

/-- The scalar function represented by a completed rhetorical vector. -/
def rhetoricalEvaluation
    (x : RhetoricalSpace kernel) (index : Index) : ℂ :=
  inner ℂ (rhetoricalVector kernel index) x

/-- Project-local RKHS carrier.  Its norm, inner product, and completeness
are transported definitionally from the completed feature space. -/
abbrev RhetoricalFunction := RhetoricalSpace kernel

instance : CoeFun (RhetoricalFunction kernel) (fun _ ↦ Index → ℂ) where
  coe function := rhetoricalEvaluation kernel function

/-- Isometric conversion from the feature-space interface to the RKHS
function-space interface. -/
def toRhetoricalFunction :
    RhetoricalSpace kernel →ₗᵢ[ℂ] RhetoricalFunction kernel :=
  LinearIsometry.id

@[simp]
theorem toRhetoricalFunction_apply
    (x : RhetoricalSpace kernel) (index : Index) :
    toRhetoricalFunction kernel x index =
      inner ℂ (rhetoricalVector kernel index) x :=
  rfl

/-- The RKHS kernel section at `index`. -/
def kernelSection (index : Index) : RhetoricalFunction kernel :=
  rhetoricalVector kernel index

@[simp]
theorem kernelSection_apply (i j : Index) :
    kernelSection kernel i j = kernel j i := by
  exact inner_rhetoricalVector kernel j i

/-- Reproducing property in the project convention (conjugate-linear in the
first argument and linear in the second). -/
@[simp]
theorem reproducing_property
    (function : RhetoricalFunction kernel) (index : Index) :
    function index = inner ℂ (kernelSection kernel index) function :=
  rfl

/-- Equality of all RKHS evaluations determines the completed vector. -/
theorem rhetoricalFunction_ext
    {left right : RhetoricalFunction kernel}
    (equalAt : ∀ index, left index = right index) :
    left = right := by
  have denseSpan : Dense ((rhetoricalSpan kernel : Set
      (RhetoricalSpace kernel))) :=
    Submodule.dense_iff_topologicalClosure_eq_top.mpr
      (rhetoricalVector_denseSpan kernel)
  apply denseSpan.eq_of_inner_right ℂ
  intro vector vectorMem
  change vector ∈ rhetoricalSpan kernel at vectorMem
  refine Submodule.span_induction ?_ ?_ ?_ ?_ vectorMem
  · intro generator generatorMem
    obtain ⟨index, rfl⟩ := generatorMem
    exact equalAt index
  · simp
  · intro leftVector rightVector _ _ leftEqual rightEqual
    simp only [inner_add_left, leftEqual, rightEqual]
  · intro scalar vector _ vectorEqual
    simp only [inner_smul_left, vectorEqual]

/-- Evaluation is injective, so no vector is hidden by the function-space
presentation. -/
theorem toRhetoricalFunction_injective :
    Function.Injective (toRhetoricalFunction kernel) := by
  intro left right equality
  apply rhetoricalFunction_ext kernel
  intro index
  exact congrFun (congrArg (fun function : RhetoricalFunction kernel ↦
    (function : Index → ℂ)) equality) index

/-- The feature and RKHS interfaces are isometrically equivalent. -/
def featureSpace_equiv_RKHS :
    RhetoricalSpace kernel ≃ₗᵢ[ℂ] RhetoricalFunction kernel :=
  LinearIsometryEquiv.refl ℂ (RhetoricalSpace kernel)

@[simp]
theorem featureSpace_equiv_RKHS_apply
    (x : RhetoricalSpace kernel) :
    featureSpace_equiv_RKHS kernel x = toRhetoricalFunction kernel x :=
  rfl

end DAF.Rhetorical
```

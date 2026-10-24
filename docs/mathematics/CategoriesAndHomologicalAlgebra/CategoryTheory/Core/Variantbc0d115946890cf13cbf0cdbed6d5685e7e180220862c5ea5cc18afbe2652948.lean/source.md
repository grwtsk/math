# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Core.Variantbc0d115946890cf13cbf0cdbed6d5685e7e180220862c5ea5cc18afbe2652948

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a3c42abe38c0b1488ac428b9fc3870da5d58c6d2` · SHA-256 `e88ebb998cd1939087564e5812df03fdc180b21782863051c62bfc808aab3934`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fabric.Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.Fabric.Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"ae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/Core.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.PresentationCategory
import DAF.Fabric.Shape

/-!
# Presented simplicial fabrics

A `Fabric` assigns a declarative presentation to each simplex of a Mathlib
simplicial shape and a presentation morphism to every simplex operator.  The
identity and composition fields state strict functorial coherence, with the
necessary dependent target transports made explicit.

A fabric is a coherence network, not automatically a geometric space or a
homotopy-correct resolution.  Its contracts are proofs about the hosted
`DAF.System` values; presentation names and versions provide no theorem
authority.  Generic fabric code does not import prismatic, matrix, filesystem,
or runtime implementations.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Fabric.Variantae1143b32b55f35728e828b146d774cfc84dcf88ea47933e9654a503d4963581

open CategoryTheory

universe u

namespace DAF.Fabric

/-- A simplicial network of declarative presentations and coherent contracts. -/
structure Fabric where
  shape : Shape
  presentation : ∀ n, shape.Cell n → Presentation
  contract :
    ∀ {m n} (θ : SimplexOperator m n) (x : shape.Cell n),
      Presentation.Hom
        (presentation n x)
        (presentation m (shape.restrict θ x))
  contract_id :
    ∀ (n : Nat) (x : shape.Cell n),
      contract (𝟙 (SimplexCategory.mk n)) x =
        eqToHom
          (congrArg (presentation n)
            (shape.restrict_id x).symm)
  contract_comp :
    ∀ {l m n}
      (ψ : SimplexOperator l m)
      (θ : SimplexOperator m n)
      (x : shape.Cell n),
      contract (ψ ≫ θ) x =
        contract θ x ≫
          contract ψ (shape.restrict θ x) ≫
            eqToHom
              (congrArg (presentation l)
                (shape.restrict_comp ψ θ x).symm)

namespace Fabric

/-- The type of `n`-cells in a fabric. -/
abbrev Cell (F : Fabric) (n : Nat) : Type _ :=
  F.shape.Cell n

/-- The declarative presentation hosted by a cell. -/
abbrev cellPresentation (F : Fabric) {n : Nat} (x : F.Cell n) : Presentation :=
  F.presentation n x

/-- The system semantics hosted by a cell presentation. -/
abbrev cellSystem (F : Fabric) {n : Nat} (x : F.Cell n) : DAF.System :=
  (F.cellPresentation x).system

/-- The contract attached to the `i`-th face of a cell. -/
def faceContract (F : Fabric) {n : Nat}
    (i : Fin (n + 2)) (x : F.Cell (n + 1)) :
    Presentation.Hom
      (F.cellPresentation x)
      (F.cellPresentation (F.shape.face i x)) :=
  F.contract (SimplexCategory.δ i) x

/-- The contract attached to the `i`-th degeneracy of a cell. -/
def degeneracyContract (F : Fabric) {n : Nat}
    (i : Fin (n + 1)) (x : F.Cell n) :
    Presentation.Hom
      (F.cellPresentation x)
      (F.cellPresentation (F.shape.degeneracy i x)) :=
  F.contract (SimplexCategory.σ i) x

/-- Every fabric contract exposes an existing system homomorphism. -/
def contractSystemHom (F : Fabric) {m n : Nat}
    (θ : SimplexOperator m n) (x : F.Cell n) :
    (F.cellSystem x).Hom (F.cellSystem (F.shape.restrict θ x)) :=
  (F.contract θ x).toHom

@[simp]
theorem contract_id_apply (F : Fabric) (n : Nat) (x : F.Cell n) :
    F.contract (𝟙 (SimplexCategory.mk n)) x =
      eqToHom
        (congrArg (F.presentation n)
          (F.shape.restrict_id x).symm) :=
  F.contract_id n x

theorem contract_comp_apply (F : Fabric) {l m n : Nat}
    (ψ : SimplexOperator l m)
    (θ : SimplexOperator m n)
    (x : F.Cell n) :
    F.contract (ψ ≫ θ) x =
      F.contract θ x ≫
        F.contract ψ (F.shape.restrict θ x) ≫
          eqToHom
            (congrArg (F.presentation l)
              (F.shape.restrict_comp ψ θ x).symm) :=
  F.contract_comp ψ θ x

end Fabric
end DAF.Fabric
```

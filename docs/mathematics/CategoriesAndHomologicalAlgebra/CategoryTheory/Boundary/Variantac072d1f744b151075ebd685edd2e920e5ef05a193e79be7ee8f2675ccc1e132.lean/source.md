# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Boundary.Variantac072d1f744b151075ebd685edd2e920e5ef05a193e79be7ee8f2675ccc1e132

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b497fad8c57d868de598d98afd3bb9c8609979a2` · SHA-256 `c49c78f72aa841da76637fe8d26ace6456e15f94b08ff091dfd2ad98b8a96d6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.CategoryTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProperBoundaryOperator.Variant11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.CategoryTheory.SourceCorpus.ProperBoundaryOperator.Variant11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389","mathematical_subject":"Algebra.CategoryTheory","original_sha256":"11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Fabric/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Fabric.Core

/-!
# Strict boundaries of fabric cells

A boundary profile ranges over every simplex operator whose source dimension
is strictly smaller than the cell dimension.  Its coherence field compares
iterated restriction with restriction along the composite operator.  This is
strict presentation-level data; no generic fiber, cofiber, or homotopy defect
is asserted.
-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ProperBoundaryOperator.Variant11a55426ea2b3c997cb721d02e00ba5a9fefea665e2dc423cafcdc844ed9b389

open CategoryTheory

namespace DAF.Fabric

universe u

/-- A simplex operator selecting a strictly lower-dimensional boundary cell. -/
structure ProperBoundaryOperator (m n : Nat) where
  operator : SimplexOperator m n
  lowerDimension : m < n

namespace ProperBoundaryOperator

/-- Composition of proper boundary operators remains proper. -/
def comp {l m n : Nat}
    (θ : ProperBoundaryOperator m n)
    (ψ : ProperBoundaryOperator l m) :
    ProperBoundaryOperator l n where
  operator := ψ.operator ≫ θ.operator
  lowerDimension := lt_trans ψ.lowerDimension θ.lowerDimension

end ProperBoundaryOperator

/-- The complete strict boundary contracts of one cell. -/
structure BoundaryProfile
    (F : Fabric)
    {n : Nat}
    (x : F.Cell n) where
  boundaryContract :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      Presentation.Hom
        (F.cellPresentation x)
        (F.cellPresentation (F.shape.restrict θ.operator x))
  agreesWithFabric :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      boundaryContract θ = F.contract θ.operator x
  coherent :
    ∀ {l m : Nat}
      (θ : ProperBoundaryOperator m n)
      (ψ : ProperBoundaryOperator l m),
      HEq
        ((F.contract ψ.operator (F.shape.restrict θ.operator x)).comp
          (boundaryContract θ))
        (boundaryContract (θ.comp ψ))

/-- A candidate replacement presentation equipped with all strict boundary maps. -/
structure BoundaryReplacement
    (F : Fabric)
    {n : Nat}
    (x : F.Cell n) where
  replacement : Presentation
  replacementContract :
    ∀ {m : Nat} (θ : ProperBoundaryOperator m n),
      Presentation.Hom
        replacement
        (F.cellPresentation (F.shape.restrict θ.operator x))
  coherent :
    ∀ {l m : Nat}
      (θ : ProperBoundaryOperator m n)
      (ψ : ProperBoundaryOperator l m),
      HEq
        ((F.contract ψ.operator (F.shape.restrict θ.operator x)).comp
          (replacementContract θ))
        (replacementContract (θ.comp ψ))

end DAF.Fabric
```

# diagonalSuccIsoTensorTrivial_inv_hom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b5237d2-41ed-cd83-c6f6-f2a9da4f7c1c",
  "kind": "theorem",
  "lexical_name": "diagonalSuccIsoTensorTrivial_inv_hom_apply",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "diagonalsuccisotensortrivial-inv-hom-apply--44941df3fc472e8785fac913",
  "source": {
    "blob": "b930976063ed83a973fee7cc3bcca32201e0ba3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 281,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44941df3fc472e8785fac913c454891ee25f5d974a1ec963cfb11cf4e95a19c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b5237d2-41ed-cd83-c6f6-f2a9da4f7c1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 281–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalSuccIsoTensorTrivial_inv_hom_apply {n : ℕ} (g : G) (f : Fin n → G) :
    dsimp% (diagonalSuccIsoTensorTrivial G n).inv.hom (g, f) =
      (g • Fin.partialProd f : Fin (n + 1) → G) := by
  induction n generalizing g with
  | zero =>
    funext (x : Fin 1)
    simp [diagonalSuccIsoTensorTrivial, diagonalOneIsoLeftRegular, Subsingleton.elim x 0,
      ofMulAction_V, types_tensorObj_def, types_tensorUnit_def]
  | succ n hn =>
    funext x
    induction x using Fin.cases with
    | zero => simp; rfl
    | succ i =>
      simpa [diagonalSuccIsoTensorTrivial, types_tensorObj_def, mul_assoc, Fin.partialProd_succ',
        ofMulAction_V] using! congrFun (hn (g * f 0) (Fin.tail f)) i

end

end Action

namespace CategoryTheory.Functor

open Action

variable {W : Type*} [Category* W] [MonoidalCategory V] [MonoidalCategory W]
  (F : V ⥤ W)

open Functor.LaxMonoidal Functor.OplaxMonoidal Functor.Monoidal

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- A lax monoidal functor induces a lax monoidal functor between
the categories of `G`-actions within those categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Varianta9f8cd861adebb2f8023a1804073c594b1cd31853e0898c78fa5f8cebf352a25.lean#L281).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b930976063ed83a973fee7cc3bcca32201e0ba3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

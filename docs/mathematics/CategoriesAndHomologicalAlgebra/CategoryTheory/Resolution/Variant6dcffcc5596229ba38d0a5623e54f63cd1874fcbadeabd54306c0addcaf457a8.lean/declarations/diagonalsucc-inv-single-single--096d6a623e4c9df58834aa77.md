# diagonalSucc_inv_single_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1552b7c0-dbd6-85a2-0d98-8027c68d7685",
  "kind": "theorem",
  "lexical_name": "diagonalSucc_inv_single_single",
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
  "slug": "diagonalsucc-inv-single-single--096d6a623e4c9df58834aa77",
  "source": {
    "blob": "e6b9161bb7b60f042c48cf598413a443784ba528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 207,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:096d6a623e4c9df58834aa77f37dce9d37c9ee0842d485355ac2c783992e94e2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1552b7c0-dbd6-85a2-0d98-8027c68d7685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem diagonalSucc_inv_single_single (g : G) (f : Gⁿ) (a b : k) :
    (diagonalSucc k G n).inv.hom (Finsupp.single g a ⊗ₜ Finsupp.single f b) =
      single (g • partialProd f) (a * b) := by
/- Porting note: broken proof was
  dsimp only [diagonalSucc]
  simp only [Iso.trans_inv, Iso.symm_inv, Iso.refl_inv, tensorIso_inv, Action.tensorHom,
    Action.comp_hom, ModuleCat.comp_def, LinearMap.comp_apply, asIso_hom, Functor.mapIso_inv,
    ModuleCat.MonoidalCategory.hom_apply, linearizationTrivialIso_inv_hom_apply,
    linearization_μ_hom, Action.id_hom ((linearization k G).obj _), actionDiagonalSucc_inv_apply,
    ModuleCat.id_apply, LinearEquiv.coe_toLinearMap,
    finsuppTensorFinsupp'_single_tmul_single k (Action.leftRegular G).V,
    linearization_map_hom_single (actionDiagonalSucc G n).inv (g, f) (a * b)] -/
  change mapDomain (actionDiagonalSucc G n).inv.hom
    (lcongr (Equiv.refl (G × (Fin n → G))) (TensorProduct.lid k k)
      (finsuppTensorFinsupp k k k G (Fin n → G) (single g a ⊗ₜ[k] single f b)))
    = single (g • partialProd f) (a * b)
  rw [finsuppTensorFinsupp_single, lcongr_single, mapDomain_single, Equiv.refl_apply,
    actionDiagonalSucc_inv_apply]
  rfl
#align group_cohomology.resolution.diagonal_succ_inv_single_single GroupCohomology.Resolution.diagonalSucc_inv_single_single

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Resolution/Variant6dcffcc5596229ba38d0a5623e54f63cd1874fcbadeabd54306c0addcaf457a8.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b9161bb7b60f042c48cf598413a443784ba528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

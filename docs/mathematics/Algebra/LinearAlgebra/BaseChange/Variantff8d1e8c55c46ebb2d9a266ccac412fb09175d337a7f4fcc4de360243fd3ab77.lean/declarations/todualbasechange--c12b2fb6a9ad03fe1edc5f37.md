# toDualBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcff0db795373b74728706fa90ec4b2429b042cbf8279381f7b71f75145539b9",
  "kind": "def",
  "lexical_name": "toDualBaseChange",
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
  "slug": "todualbasechange--c12b2fb6a9ad03fe1edc5f37",
  "source": {
    "blob": "3c424e60d5484127a8390b40680e3c056803ca8c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c12b2fb6a9ad03fe1edc5f37d7e12c08522a2b5403bbf19a20f0e42b8c6b2f7e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcff0db795373b74728706fa90ec4b2429b042cbf8279381f7b71f75145539b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toDualBaseChange :
    A ⊗[R] Dual R V ≃ₗ[A] Dual A W := by
  apply LinearEquiv.ofBijective ibc.toDualBaseChangeAux
  let b := Free.chooseBasis R V
  set ι := Free.ChooseBasisIndex R V
  have ibc_pow : IsBaseChange A ((Algebra.linearMap R A).compLeft ι) := (linearMap R A).finitePow ι
  suffices ibc.toDualBaseChangeAux =
      (((b.constr R).symm.baseChange ..).trans ibc_pow.equiv).trans ((ibc.basis b).constr A) from
    this ▸ LinearEquiv.bijective _
  ext f w
  simp only [AlgebraTensorModule.curry_apply, curry_apply, LinearMap.coe_restrictScalars,
    LinearEquiv.coe_coe, LinearEquiv.trans_apply]
  induction w using ibc.inductionOn with
  | tmul v =>
    simp only [toDualBaseChangeAux_tmul, one_mul]
    conv_lhs => rw [← Basis.sum_equivFun b v, map_sum]
    simp [LinearEquiv.baseChange, basis_repr_comp_apply]
  | smul a w h => simp [h]
  | add x y hx hy => simp [map_add, hx, hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BaseChange/Variantff8d1e8c55c46ebb2d9a266ccac412fb09175d337a7f4fcc4de360243fd3ab77.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c424e60d5484127a8390b40680e3c056803ca8c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

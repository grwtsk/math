# verschiebungFun_isPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:36f091ce18510f222688ab63a74a7f61d93b0995c56f09e3cf9afdcd75ea26f4",
  "kind": "instance",
  "lexical_name": "verschiebungFun_isPoly",
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
  "slug": "verschiebungfun-ispoly--4dfad382fd13525df05e689c",
  "source": {
    "blob": "c183cdbd3c11f6c002298e0211d14197f142ff38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 96,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4dfad382fd13525df05e689ccd23b7712e2bc643a6987bd60b6952d00aec5913",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:36f091ce18510f222688ab63a74a7f61d93b0995c56f09e3cf9afdcd75ea26f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance verschiebungFun_isPoly : IsPoly p fun R _Rcr => @verschiebungFun p R _Rcr := by
  use verschiebungPoly
  simp only [aeval_verschiebung_poly', eq_self_iff_true, forall₃_true_iff]

-- Porting note: we add this example as a verification that Lean 4's instance resolution
-- can handle what in Lean 3 we needed the `@[is_poly]` attribute to help with.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Verschiebung/Varianta80e6bec0b0f15299c13c9719d1859dc37ebc422f095f1cd197fc503b31f49e0.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c183cdbd3c11f6c002298e0211d14197f142ff38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

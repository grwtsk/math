# IsSMulRegular.of_flat_of_isBaseChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1691dcea-b0a0-fb46-043a-27b5ff6f6fd5",
  "kind": "theorem",
  "lexical_name": "IsSMulRegular.of_flat_of_isBaseChange",
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
  "slug": "issmulregular-of-flat-of-isbasechange--49c166c8db9d7e27e7552b1e",
  "source": {
    "blob": "f17ec10cf8724970eb2b234501ecf13949b5dc63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 640,
    "line": 636,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49c166c8db9d7e27e7552b1eafb8d6d016aeb2b6c9af3a10c10da82fe1ff0231",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1691dcea-b0a0-fb46-043a-27b5ff6f6fd5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–640.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSMulRegular.of_flat_of_isBaseChange {f : M →ₗ[R] N} (hf : IsBaseChange S f) {x : R}
    (reg : IsSMulRegular M x) : IsSMulRegular N (algebraMap R S x) := by
  have h := hf.map_id_injective_of_flat_left hf (LinearMap.lsmul R M x) reg
  rwa [hf.map_id_lsmul_eq_lsmul_algebraMap] at h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant79e31eeb5c39b445583b0eb1ce4afdf8cc00fdb1a808b1a9cc43dfc1098dbf0c.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17ec10cf8724970eb2b234501ecf13949b5dc63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

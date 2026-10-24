# cons_mulVec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f18ba00-30c2-835a-52fd-39705f71ca4c",
  "kind": "theorem",
  "lexical_name": "cons_mulVec",
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
  "slug": "cons-mulvec--a95ecfa787945f79fcb33cba",
  "source": {
    "blob": "b71d405ce90aff1f5441e43629dcacf01392514c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 316,
    "path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a95ecfa787945f79fcb33cba7e67e561290c57230d464e082ff09bfe44c4c4d1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f18ba00-30c2-835a-52fd-39705f71ca4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 316–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cons_mulVec [Fintype n'] (v : n' → α) (A : Fin m → n' → α) (w : n' → α) :
    mulVec (of <| vecCons v A) w = vecCons (dotProduct v w) (mulVec (of A) w) := by
  ext i
  refine' Fin.cases _ _ i <;> simp [mulVec]
#align matrix.cons_mul_vec Matrix.cons_mulVec

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean#L316).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71d405ce90aff1f5441e43629dcacf01392514c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

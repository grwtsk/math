# cross_cross_eq_smul_sub_smul'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5cb33ab05dd06448d34c37d777e69c80761f47a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8eb21053-07c9-8234-60aa-1f7b5560f2e3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed83b754-8f03-6e2f-1b3d-3a7fd27ee64b",
  "kind": "theorem",
  "lexical_name": "cross_cross_eq_smul_sub_smul'",
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
  "slug": "cross-cross-eq-smul-sub-smul--cc97729fe27fcca2f75130c9",
  "source": {
    "blob": "5cb33ab05dd06448d34c37d777e69c80761f47a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 179,
    "path": "GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc97729fe27fcca2f75130c9b5538659b6380c96ea9f122515a0b5dedd99a0bb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed83b754-8f03-6e2f-1b3d-3a7fd27ee64b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cross_cross_eq_smul_sub_smul' (u v w : Fin 3 → R) :
    u ×₃ (v ×₃ w) = (u ⬝ᵥ w) • v - (v ⬝ᵥ u) • w := by
  simp_rw [cross_apply, vec3_dotProduct]
  ext i
  fin_cases i <;>
  · simp only [Nat.succ_eq_add_one, Nat.reduceAdd, Fin.isValue, cons_val, cons_val_one,
      cons_val_zero, Fin.reduceFinMk, Pi.sub_apply, Pi.smul_apply, smul_eq_mul]
    ring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/CrossProduct/Variant4dbaf855822b7b74f2c2b26830ef3a92a12d162543535970ce554650b2c23672.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb33ab05dd06448d34c37d777e69c80761f47a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

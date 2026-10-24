# toMatrix_eq_toMatrix_constr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72def924832a5de8d4caf8c0631a780ba19f1cdd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 61,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:db25328f-1456-81ab-0164-5a4ee848c0d0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7200b2c-cba0-abcd-0aad-75e98a0c2ee2",
  "kind": "theorem",
  "lexical_name": "toMatrix_eq_toMatrix_constr",
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
  "slug": "tomatrix-eq-tomatrix-constr--f44638bd9fc52174421866df",
  "source": {
    "blob": "72def924832a5de8d4caf8c0631a780ba19f1cdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 61,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f44638bd9fc52174421866df532dfa98b4c0f4fdd95a55d9eba96e92fb3c6975",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7200b2c-cba0-abcd-0aad-75e98a0c2ee2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toMatrix_eq_toMatrix_constr [Fintype ι] [DecidableEq ι] (v : ι → M) :
    e.toMatrix v = LinearMap.toMatrix e e (e.constr ℕ v) := by
  ext
  rw [Basis.toMatrix_apply, LinearMap.toMatrix_apply, Basis.constr_basis]

-- TODO (maybe) Adjust the definition of `Basis.toMatrix` to eliminate the transpose.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72def924832a5de8d4caf8c0631a780ba19f1cdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

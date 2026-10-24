# nontrivial_of_finrank_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "43b68309e3ffe2db82bafedbc4fe5671574243bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 110,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d5f3bc4-51d9-e4c4-6ece-a39d1e62d491",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1f37c4b-34dd-1423-1947-d07915b92d40",
  "kind": "theorem",
  "lexical_name": "nontrivial_of_finrank_pos",
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
  "slug": "nontrivial-of-finrank-pos--438c3df63fd16b28dae86b2c",
  "source": {
    "blob": "43b68309e3ffe2db82bafedbc4fe5671574243bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 110,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:438c3df63fd16b28dae86b2ce8d76105a86cbeddd6f9ecf9ffe84b82f2b37a7a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1f37c4b-34dd-1423-1947-d07915b92d40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nontrivial_of_finrank_pos (h : 0 < finrank K V) : Nontrivial V :=
  rank_pos_iff_nontrivial.mp (lt_rank_of_lt_finrank h)
#align finite_dimensional.nontrivial_of_finrank_pos FiniteDimensional.nontrivial_of_finrank_pos

/-- A finite dimensional space is nontrivial if it has `finrank` equal to the successor of a
natural number. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finrank/Variantca8f769f4fa2297b07e3842ace54e2851caf7c1d36ccb67fdb71dce102b4fb0e.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `43b68309e3ffe2db82bafedbc4fe5671574243bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

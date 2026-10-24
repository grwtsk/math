# mul_le_mul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fbf200b85c96312a8a3f7d77dee0e54f4eb248bc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 236,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:83c7410b-2f0b-a254-d56b-9d57fab6601f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af628b00-f0ea-6857-fcb9-4863521232bb",
  "kind": "theorem",
  "lexical_name": "mul_le_mul_left",
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
  "slug": "mul-le-mul-left--d50c7b2860dd969ab694e8d9",
  "source": {
    "blob": "fbf200b85c96312a8a3f7d77dee0e54f4eb248bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 236,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d50c7b2860dd969ab694e8d9a8a7c5714abbfbe81688d0eb4f1b3fdccef8465a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af628b00-f0ea-6857-fcb9-4863521232bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_le_mul_left (h : M ≤ N) : M * P ≤ N * P :=
  map₂_le_map₂_left h
#align submodule.mul_le_mul_left Submodule.mul_le_mul_left

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant311f367bd80fe1060d0a574ab5888de13c9039a69d28c7046cafff87880661e9.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf200b85c96312a8a3f7d77dee0e54f4eb248bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

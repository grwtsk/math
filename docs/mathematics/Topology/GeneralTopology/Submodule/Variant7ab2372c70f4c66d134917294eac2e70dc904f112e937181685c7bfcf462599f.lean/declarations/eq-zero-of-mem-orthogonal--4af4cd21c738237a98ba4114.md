# eq_zero_of_mem_orthogonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "04adf9e649624722c3a747238d524938f47d05d7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 217,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be0957e3-82a7-ac37-de18-eed203064654",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8436e518-015c-ca93-5819-7ef6121a1d5f",
  "kind": "theorem",
  "lexical_name": "eq_zero_of_mem_orthogonal",
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
  "slug": "eq-zero-of-mem-orthogonal--4af4cd21c738237a98ba4114",
  "source": {
    "blob": "04adf9e649624722c3a747238d524938f47d05d7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 217,
    "path": "GRWTSK/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4af4cd21c738237a98ba411467e5331bee2ba7c2324de0a00027468674c5d263",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8436e518-015c-ca93-5819-7ef6121a1d5f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_of_mem_orthogonal (hK : Dense (K : Set E)) (h : x ∈ Kᗮ) : x = 0 :=
  eq_zero_of_inner_left 𝕜 hK fun _ ↦ (mem_orthogonal' _ _).1 h _

/-- If `S` is dense and `x - y ∈ Kᗮ`, then `x = y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Submodule/Variant7ab2372c70f4c66d134917294eac2e70dc904f112e937181685c7bfcf462599f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04adf9e649624722c3a747238d524938f47d05d7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

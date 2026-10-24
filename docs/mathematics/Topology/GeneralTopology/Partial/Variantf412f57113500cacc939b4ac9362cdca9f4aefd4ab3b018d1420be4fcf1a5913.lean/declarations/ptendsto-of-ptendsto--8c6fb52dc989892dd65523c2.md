# ptendsto'_of_ptendsto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b09c3cd41ecad10d051366c9ea1e22d9f3fcdce0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f4/f412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72c82d38-11d3-3147-18f8-51297eae5765",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee4c2fe9-a24c-dd85-a1de-1d745dfdad69",
  "kind": "theorem",
  "lexical_name": "ptendsto'_of_ptendsto",
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
  "slug": "ptendsto-of-ptendsto--8c6fb52dc989892dd65523c2",
  "source": {
    "blob": "b09c3cd41ecad10d051366c9ea1e22d9f3fcdce0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 244,
    "path": "GRWTSK/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c6fb52dc989892dd65523c226b496b2870870a31fbec26164a94e33087eae0b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee4c2fe9-a24c-dd85-a1de-1d745dfdad69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ptendsto'_of_ptendsto {f : α →. β} {l₁ : Filter α} {l₂ : Filter β} (h : f.Dom ∈ l₁) :
    PTendsto f l₁ l₂ → PTendsto' f l₁ l₂ := by
  rw [ptendsto_def, ptendsto'_def]
  intro h' s sl₂
  rw [PFun.preimage_eq]
  exact inter_mem (h' s sl₂) h

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Partial/Variantf412f57113500cacc939b4ac9362cdca9f4aefd4ab3b018d1420be4fcf1a5913.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b09c3cd41ecad10d051366c9ea1e22d9f3fcdce0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

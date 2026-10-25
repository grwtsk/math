# invalidated_exactly_when_invalid_time_present

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ac7cd1f1a4d20f9cedd8f6cf9d754ab788f2223",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 7,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29ed2c8e-ad7f-7d57-1c5b-d83c57534cba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b3d30de9-babd-3be5-9dd4-82de3cc2038e",
  "kind": "theorem",
  "lexical_name": "invalidated_exactly_when_invalid_time_present",
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
  "slug": "invalidated-exactly-when-invalid-time-present--db1e90cf644be527ba748249",
  "source": {
    "blob": "2ac7cd1f1a4d20f9cedd8f6cf9d754ab788f2223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 12,
    "line": 7,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TemporalInvalidationCorrect/Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db1e90cf644be527ba74824973558ab955d0cd1e26f33e8cbc7eaa9c5b977e60",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TemporalInvalidationCorrect/Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3d30de9-babd-3be5-9dd4-82de3cc2038e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 7–12.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem invalidated_exactly_when_invalid_time_present
    (e : Think.RadoProjectedModularHeatflow.MemoryCore.TemporalEdge) :
    e.invalidated = true ↔ e.invalidAt?.isSome = true :=
  Think.RadoProjectedModularHeatflow.MemoryCore.invalidated_iff_has_invalid_time e

end Think.Validation.TemporalInvalidationCorrect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TemporalInvalidationCorrect/Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TemporalInvalidationCorrect/Variant111585f5593eb308056af3e64cd8d60d4293116abbc339338d941577ca90a9c9.lean#L7).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ac7cd1f1a4d20f9cedd8f6cf9d754ab788f2223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

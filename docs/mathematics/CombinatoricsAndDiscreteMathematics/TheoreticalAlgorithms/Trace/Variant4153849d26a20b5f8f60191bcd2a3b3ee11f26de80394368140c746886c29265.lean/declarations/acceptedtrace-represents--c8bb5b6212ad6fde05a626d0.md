# acceptedTrace_represents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "470dfd70c1f25d129d5fdce3fd8acc1eeddb72ac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1072,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d12f56c-00f4-842f-4c98-30e4334b6f92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c15339d4-c00b-f95c-37cc-8da970ec4af0",
  "kind": "theorem",
  "lexical_name": "acceptedTrace_represents",
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
  "slug": "acceptedtrace-represents--c8bb5b6212ad6fde05a626d0",
  "source": {
    "blob": "470dfd70c1f25d129d5fdce3fd8acc1eeddb72ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1086,
    "line": 1072,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8bb5b6212ad6fde05a626d0b7c7b9613d2ed141cf6dc221f4416b215ee3fc24",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c15339d4-c00b-f95c-37cc-8da970ec4af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1072–1086.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem acceptedTrace_represents
    {Index : Type} {kernel : PositiveKernel Index} {dimension : Nat}
    {commitment : CanonicalTraceCommitment kernel dimension}
    (accepted : AcceptedTrace commitment) :
    Represents commitment := by
  obtain ⟨trace, decoded, conditions⟩ := accepted
  refine ⟨trace, decoded, ?_⟩
  intro row column
  have gramEquality : trace.gram = commitment.expectedGram := by
    unfold AcceptanceConditions at conditions
    aesop
  rw [gramEquality]
  exact commitment.representsFormal row column

/-- Operation preservation for every selected matrix coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Trace/Variant4153849d26a20b5f8f60191bcd2a3b3ee11f26de80394368140c746886c29265.lean#L1072).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `470dfd70c1f25d129d5fdce3fd8acc1eeddb72ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

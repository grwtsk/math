# ThresholdInterfaceObstruction.not_equal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e85d1315ff6f942b61c41018bbe6c2a6694f3e3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 461,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/dae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab42d019-fb5c-2bcc-5425-0d782512857f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a984e5b8-dff8-e2e4-e138-59954c092b03",
  "kind": "theorem",
  "lexical_name": "ThresholdInterfaceObstruction.not_equal",
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
  "slug": "thresholdinterfaceobstruction-not-equal--5332b35ce8b9bcb7548754f4",
  "source": {
    "blob": "9e85d1315ff6f942b61c41018bbe6c2a6694f3e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 471,
    "line": 461,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5332b35ce8b9bcb7548754f4d6527307248c2fae2df95dada1688f6f4f7f1b30",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a984e5b8-dff8-e2e4-e138-59954c092b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 461–471.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ThresholdInterfaceObstruction.not_equal
    {State : Type uState}
    {G : KnownMaximalState State}
    (obstruction : ThresholdInterfaceObstruction G) :
    obstruction.leftValue ≠ obstruction.rightValue :=
  obstruction.mismatch

/--
The partition-wide result is either backed by all exact capabilities, blocked
by concrete interface data, or retained as an unresolved typed obligation.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantdae4c8fc20724714690baf6fc0036bd9b1c2580988d3f2dc154ef7378f39831b.lean#L461).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e85d1315ff6f942b61c41018bbe6c2a6694f3e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

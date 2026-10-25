# historical_receipt_not_current

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a5f4d3a-771f-a176-ebcf-00434197aeb7",
  "kind": "theorem",
  "lexical_name": "historical_receipt_not_current",
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
  "slug": "historical-receipt-not-current--a739ca08209f1565aabaacbc",
  "source": {
    "blob": "6271cad870627bdf4ec71bbcb1c3b50da5e55b5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a739ca08209f1565aabaacbc25b7e91873ee5a8223d60fc44233e9d59a4c5f54",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples__SourceOccurrence2db0d71fe8feed443122ddff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a5f4d3a-771f-a176-ebcf-00434197aeb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem historical_receipt_not_current :
    correctedLedger.receipts = originalLedger.receipts ∧
      ReceiptValid policy historicalReceipt.source historicalReceipt ∧
        ¬ CurrentReceiptValid policy revisedSnapshot historicalReceipt := by
  refine ⟨rfl, ?_, ?_⟩
  · simp [ReceiptValid, policy]
  · apply changed_snapshot_receipt_not_current policy revisedSnapshot historicalReceipt false
    simp [historicalReceipt, originalSnapshot, revisedSnapshot]

/-- The first event retains both snapshots and its exact affected set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples__SourceOccurrence2db0d71fe8feed443122ddff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevisionExamples.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6271cad870627bdf4ec71bbcb1c3b50da5e55b5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

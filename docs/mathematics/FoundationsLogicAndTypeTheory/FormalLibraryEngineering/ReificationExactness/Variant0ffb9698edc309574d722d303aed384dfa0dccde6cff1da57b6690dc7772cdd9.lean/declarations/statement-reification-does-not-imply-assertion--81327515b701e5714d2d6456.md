# statement_reification_does_not_imply_assertion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c7097a6d-96a7-36d0-8241-c7b2551021f3",
  "kind": "theorem",
  "lexical_name": "statement_reification_does_not_imply_assertion",
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
  "slug": "statement-reification-does-not-imply-assertion--81327515b701e5714d2d6456",
  "source": {
    "blob": "818e70ed5b2f894f983c0849a297e1567df4c735",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 958,
    "line": 945,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:81327515b701e5714d2d645657e3c16abdd487261959ec3c46e39c746175183a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c7097a6d-96a7-36d0-8241-c7b2551021f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 945–958.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem statement_reification_does_not_imply_assertion :
    ∃ (reification : StatementReification Bool Bool)
      (proxy : Bool) (statement : Bool),
      reification.ReifiesStatement proxy statement ∧
        ¬ reification.IsAsserted ∧ statement ≠ true := by
  refine ⟨describedFalseStatement, false, false,
    describedFalseStatement.addressable, ?_, by decide⟩
  simp [IsAsserted, describedFalseStatement]

end StatementCounterexample

end StatementReification

end Cord
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReificationExactness/Variant0ffb9698edc309574d722d303aed384dfa0dccde6cff1da57b6690dc7772cdd9.lean#L945).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `818e70ed5b2f894f983c0849a297e1567df4c735` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

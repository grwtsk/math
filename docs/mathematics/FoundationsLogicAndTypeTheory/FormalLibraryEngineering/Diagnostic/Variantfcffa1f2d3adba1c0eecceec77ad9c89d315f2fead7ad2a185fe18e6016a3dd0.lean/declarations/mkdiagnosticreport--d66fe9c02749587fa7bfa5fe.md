# mkDiagnosticReport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e2cfccdea5c667bef43aafec9704c6f5cd87bfc6e1be55a3634db3af933b1c5",
  "kind": "def",
  "lexical_name": "mkDiagnosticReport",
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
  "slug": "mkdiagnosticreport--d66fe9c02749587fa7bfa5fe",
  "source": {
    "blob": "05cb8a0d102dbb68610315d3345661d41d3503fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 81,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d66fe9c02749587fa7bfa5fefb1d6baeea5d71c8f10344c2a99e1c72ac0479bc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e2cfccdea5c667bef43aafec9704c6f5cd87bfc6e1be55a3634db3af933b1c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkDiagnosticReport (tacticName : String) (goalType : Lean.Expr) (stage : String)
    (hint : Option MessageData := none) : MetaM MessageData := do
  let context ← formatGoalContext goalType
  let goalStructure ← analyzeGoalStructure goalType
  let suggestions ← suggestNextActions tacticName goalType
  let hintMsg := match hint with
    | some h => m!"\n{h}\n"
    | none => ""
  return m!"━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n\
            {tacticName} diagnostic ({stage})\n\
            ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\n\
            {context}\n\n\
            {goalStructure}\n{hintMsg}\n\
            Suggestions:\n{suggestions}"

end LeanCert.Tactic.Auto
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Diagnostic/Variantfcffa1f2d3adba1c0eecceec77ad9c89d315f2fead7ad2a185fe18e6016a3dd0.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05cb8a0d102dbb68610315d3345661d41d3503fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

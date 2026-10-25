# evalDecideCbv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ef6c2fc483981397de21506cae88007a3b4b28b7bb62996d1d8266a3e7a2a80f",
  "kind": "def",
  "lexical_name": "evalDecideCbv",
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
  "slug": "evaldecidecbv--78252180a385736de4d6b80b",
  "source": {
    "blob": "9cc951cccbee47d89bae558c90e20cbf5c408de5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cbv/Variantf46cef42eb9bece0b935645a798ca24c15ea2ddf3efed940046c46c5678bfef2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:78252180a385736de4d6b80b4103eb67e2c488a11bfc93b69c6e8c94a4aad725",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cbv/Variantf46cef42eb9bece0b935645a798ca24c15ea2ddf3efed940046c46c5678bfef2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ef6c2fc483981397de21506cae88007a3b4b28b7bb62996d1d8266a3e7a2a80f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_tactic Lean.Parser.Tactic.decide_cbv] def evalDecideCbv : Tactic := fun stx =>
  match stx with
  | `(tactic| decide_cbv) => withMainContext do
    if cbv.warning.get (← getOptions) then
      logWarningAt stx "The `decide_cbv` usage warning option is enabled. Disable it by setting `set_option cbv.warning false`."
    liftMetaFinishingTactic fun mvar => do
      let [mvar'] ← mvar.applyConst ``of_decide_eq_true | throwError "Could not apply `of_decide_eq_true`"
      cbvDecideGoal mvar'
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic.Cbv
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cbv/Variantf46cef42eb9bece0b935645a798ca24c15ea2ddf3efed940046c46c5678bfef2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cbv/Variantf46cef42eb9bece0b935645a798ca24c15ea2ddf3efed940046c46c5678bfef2.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cc951cccbee47d89bae558c90e20cbf5c408de5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

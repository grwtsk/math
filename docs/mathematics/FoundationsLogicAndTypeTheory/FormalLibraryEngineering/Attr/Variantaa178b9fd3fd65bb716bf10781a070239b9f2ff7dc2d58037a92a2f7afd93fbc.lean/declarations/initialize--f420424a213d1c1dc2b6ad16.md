# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79dc4105423838d440cd912325cab59c153e1dbc4e93b44bc5969562bcaa39c2",
  "kind": "initialize",
  "lexical_name": null,
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
  "slug": "initialize--f420424a213d1c1dc2b6ad16",
  "source": {
    "blob": "886fe20ef9cc7e7ee8a5f9084b5d436adb1c8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f420424a213d1c1dc2b6ad163a649fc7bb71bf5a858685249db43e364f5c761c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79dc4105423838d440cd912325cab59c153e1dbc4e93b44bc5969562bcaa39c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize tacticCodeActionExt :
    PersistentEnvExtension TacticCodeActionEntry (TacticCodeActionEntry × TacticCodeAction)
      (Array TacticCodeActionEntry × TacticCodeActions) ←
  registerPersistentEnvExtension {
    mkInitial := pure (#[], {})
    addImportedFn := fun as => return (#[], ← as.foldlM (init := {}) fun m as =>
      as.foldlM (init := m) fun m ⟨name, kinds⟩ =>
        return m.insert kinds (← mkTacticCodeAction name))
    addEntryFn := fun (s₁, s₂) (e, n₂) => (s₁.push e, s₂.insert e.tacticKinds n₂)
    exportEntriesFn := (·.1)
  }

/--
This attribute marks a code action, which is used to suggest new tactics or replace existing ones.

* `@[tactic_code_action]`: This is a code action which applies to the spaces between tactics,
  to suggest a new tactic to change the goal state.

* `@[tactic_code_action kind]`: This is a code action which applies to applications of the tactic
  `kind` (a tactic syntax kind), which can replace the tactic or insert things before or after it.

* `@[tactic_code_action kind₁ kind₂]`: shorthand for
  `@[tactic_code_action kind₁, tactic_code_action kind₂]`.

* `@[tactic_code_action *]`: This is a tactic code action that applies to all tactics.
  Use sparingly.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Attr/Variantaa178b9fd3fd65bb716bf10781a070239b9f2ff7dc2d58037a92a2f7afd93fbc.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `886fe20ef9cc7e7ee8a5f9084b5d436adb1c8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

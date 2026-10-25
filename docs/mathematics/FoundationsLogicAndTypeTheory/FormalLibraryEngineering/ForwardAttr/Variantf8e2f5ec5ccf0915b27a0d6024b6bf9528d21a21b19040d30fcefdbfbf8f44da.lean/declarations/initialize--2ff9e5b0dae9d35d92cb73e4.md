# Anonymous initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b948b6078e2b5a77d4c61576aee127cf6fcf29c68005a3b5545b64de52edcc13",
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
  "slug": "initialize--2ff9e5b0dae9d35d92cb73e4",
  "source": {
    "blob": "b2223676bf279e9ed3e8c87933d439630d934211",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ff9e5b0dae9d35d92cb73e48eda3f7a5c5abb17a5170a2de6ae222241377362",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b948b6078e2b5a77d4c61576aee127cf6fcf29c68005a3b5545b64de52edcc13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
initialize registerBuiltinAttribute {
  name := `gcongr_forward
  descr := "adds a gcongr_forward extension"
  applicationTime := .afterCompilation
  add := fun declName stx kind => match stx with
    | `(attr| gcongr_forward) => do
      unless kind == AttributeKind.global do
        throwError "invalid attribute 'gcongr_forward', must be global"
      let env ← getEnv
      unless (env.getModuleIdxFor? declName).isNone do
        throwError "invalid attribute 'gcongr_forward', declaration is in an imported module"
      if (IR.getSorryDep env declName).isSome then return -- ignore in progress definitions
      let ext ← mkForwardExt declName
      setEnv <| forwardExt.addEntry env (declName, ext)
    | _ => throwUnsupportedSyntax
}

end GCongr

end Mathlib.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForwardAttr/Variantf8e2f5ec5ccf0915b27a0d6024b6bf9528d21a21b19040d30fcefdbfbf8f44da.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2223676bf279e9ed3e8c87933d439630d934211` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# InductiveElabStep2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72f5728dcc55f0cba136dfdf97a2ec48474c7f33b6a95c5e0618c6e24b51e8d3",
  "kind": "structure",
  "lexical_name": "InductiveElabStep2",
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
  "slug": "inductiveelabstep2--8edf81b1d3c158b8429a9386",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 142,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8edf81b1d3c158b8429a938608a37c902f00c84f65333e6f76a03c4a85190e75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72f5728dcc55f0cba136dfdf97a2ec48474c7f33b6a95c5e0618c6e24b51e8d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InductiveElabStep2 where
  /-- The constructors produced by `InductiveElabStep1`. -/
  ctors : List Constructor
  /-- Function to collect additional fvars that might be missed by the constructors.
  It is permissible to include fvars that do not exist in the local context (`structure` for example includes its field fvars). -/
  collectUsedFVars : StateRefT CollectFVars.State MetaM Unit := pure ()
  /-- Function to collect additional level metavariables that are header-like (e.g. in `extends` clauses in `structure`).
  Header-like level metavariables can be promoted to be level parameters. -/
  collectExtraHeaderLMVars : StateRefT CollectLevelMVars.State MetaM Unit := pure ()
  /-- Function to check universes and provide a custom error. (`structure` uses this to do checks per field to give nicer messages.) -/
  checkUniverses (numParams : Nat) (u : Level) : TermElabM Unit := pure ()
  /-- Step to do final term elaboration error reporting, done immediately after universe levels are fully elaborated, but before the final level checks. -/
  finalizeTermElab : TermElabM Unit := pure ()
  /-- Like `finalize`, but occurs before `afterTypeChecking` attributes. -/
  prefinalize (levelParams : List Name) (params : Array Expr) (replaceIndFVars : Expr → MetaM Expr) : TermElabM InductiveElabStep3 := fun _ _ _ => pure {}
  deriving Inhabited

/-- An intermediate step for mutual inductive elaboration. See `InductiveElabDescr`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mkGrindParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ee8b295a90441634eb886e7e75ff30f732452e87fa6b9392fc7fb19ed867350",
  "kind": "def",
  "lexical_name": "mkGrindParams",
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
  "slug": "mkgrindparams--ec3661f2265c10d6780247da",
  "source": {
    "blob": "93798e57a87dfaf7967adb2e3d16f3091a812a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec3661f2265c10d6780247da9cbb2593cf2dca154b09178271bfb063ce0367fe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ee8b295a90441634eb886e7e75ff30f732452e87fa6b9392fc7fb19ed867350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkGrindParams
    (config : Grind.Config) (only : Bool) (ps : TSyntaxArray ``Parser.Tactic.grindParam) (mvarId : MVarId)
    (extensions? : Option Grind.ExtensionStateArray := none) :
    TermElabM Grind.Params := do
  let params ← match extensions? with
    | some extensions => Grind.mkParams config extensions
    | none => if only then Grind.mkOnlyParams config else Grind.mkDefaultParams config
  let mut params ← elabGrindParams params ps (lax := config.lax) (only := only)
  if config.suggestions then
    let lsConfig : LibrarySuggestions.Config := { caller := some "grind" }
    let lsConfig := match config.maxSuggestions with
      | some n => { lsConfig with maxSuggestions := n }
      | none => lsConfig
    params ← elabGrindSuggestions params (← LibrarySuggestions.select mvarId lsConfig)
  if config.locals then
    params ← elabGrindLocals params
  trace[grind.debug.inj] "{params.extensions[0]!.inj.getOrigins.map (·.pp)}"
  if params.anchorRefs?.isSome then
    /-
    **Note**: anchors are automatically computed in interactive mode where
    hygiene is turned on. So, we must disable hypotheses id cleanup since
    different ids will affect the anchor values.
    **TODO**: a more robust solution since users may use `grind +clean => finish?`
    -/
    params := { params with config.clean := false }
  return params

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93798e57a87dfaf7967adb2e3d16f3091a812a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

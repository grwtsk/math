# mkGrindParams

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ed9bba6e88456ff72ece0b86f82e5fbeb252fa954f51f55365fc07d1bccdbeb",
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
  "slug": "mkgrindparams--310585f9998a8ee14e09ab8f",
  "source": {
    "blob": "788dba46ec685bbf05cff5ba54441b470b0dc60d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:310585f9998a8ee14e09ab8fb1e9b49ba513a53218e05880f4abe01055f9b6fc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ed9bba6e88456ff72ece0b86f82e5fbeb252fa954f51f55365fc07d1bccdbeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–240.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant00d200bdea6e17b5a1da15be82f15066065eb1e89d844a3ce8a60b1eb0ef905c.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `788dba46ec685bbf05cff5ba54441b470b0dc60d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

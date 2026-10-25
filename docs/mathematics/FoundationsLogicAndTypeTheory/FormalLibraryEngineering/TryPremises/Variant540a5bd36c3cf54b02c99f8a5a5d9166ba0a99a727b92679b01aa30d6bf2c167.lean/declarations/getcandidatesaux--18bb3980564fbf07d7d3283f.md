# getCandidatesAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83f91d2e962c94e68952b4b79d21f40a9c35ba1fdddcfd5a6630d20e63ac6db5",
  "kind": "def",
  "lexical_name": "getCandidatesAux",
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
  "slug": "getcandidatesaux--18bb3980564fbf07d7d3283f",
  "source": {
    "blob": "cbd8843a7f631cbc8788c3b2b7e685b439122e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 40,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:18bb3980564fbf07d7d3283f828b013c0fd3e9895c296637ec4748ceb94acf0c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83f91d2e962c94e68952b4b79d21f40a9c35ba1fdddcfd5a6630d20e63ac6db5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getCandidatesAux (rwInfo : RwInfo) (gpos : Array GrwPos) (reportProgress : String → BaseIO Unit)
    (rw : Expr → MetaM (MatchResult RwLemma)) (grw : Expr → MetaM (MatchResult GrwLemma))
    (app : Expr → MetaM (MatchResult ApplyLemma)) (appAt : Expr → MetaM (MatchResult ApplyAtLemma))
    : ClickSuggestionsM (Array Candidates) := do
  let mut cands : Std.TreeMap Nat (Array Candidates) := {}
  /- The order in which we show the suggestions for the same pattern for different tactics
  depends on the following insertion order.
  We choose the order `grw` => `rw` => `apply(at)`. -/
  if !gpos.isEmpty then
    reportProgress "grw"
    let grwInfo := { rwInfo with gpos }
    cands := cands ++ (← grw rwInfo.subExpr).elts.map fun _ ↦ (·.map (.grw grwInfo))
  reportProgress "rw"
  let mut rwInfo := rwInfo
  repeat
    /- TODO: we are passing the same `rwKind` to each of these nested applications, but it is
    certainly possible that the correct `rwKind` is not the same for all of these.
    Though this edge case is probably very rare. -/
    cands := cands ++ (← rw rwInfo.subExpr).elts.map fun _ ↦ (·.map (.rw rwInfo))
    let .app f _ := rwInfo.subExpr | break
    rwInfo := { rwInfo with subExpr := f, pos := rwInfo.pos.pushAppFn }
  if (← read).pos == .root then
    if (← read).hyp?.isSome then
      reportProgress "apply at"
      cands := cands ++ (← appAt rwInfo.rootExpr).elts.map fun _ ↦ (·.map .appAt)
    else
      reportProgress "apply"
      cands := cands ++ (← app rwInfo.rootExpr).elts.map fun _ ↦ (·.map .app)
  return cands.foldr (init := #[]) fun _ val acc ↦ acc ++ val

/-- Get the candidate theorems from imported files. -/
@[specialize]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TryPremises/Variant540a5bd36c3cf54b02c99f8a5a5d9166ba0a99a727b92679b01aa30d6bf2c167.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbd8843a7f631cbc8788c3b2b7e685b439122e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

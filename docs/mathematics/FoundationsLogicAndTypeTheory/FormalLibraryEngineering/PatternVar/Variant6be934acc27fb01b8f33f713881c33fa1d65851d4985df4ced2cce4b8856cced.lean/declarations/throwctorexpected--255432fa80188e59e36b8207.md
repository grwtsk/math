# throwCtorExpected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09260aff8e36017d6181fae8f0ac1fadbd01b70f93b1394cf95ca4c7faa7c78d",
  "kind": "def",
  "lexical_name": "throwCtorExpected",
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
  "slug": "throwctorexpected--255432fa80188e59e36b8207",
  "source": {
    "blob": "d668088481e4fa5d2d3b1100b1d548dcc1752f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:255432fa80188e59e36b820739f83440809edc6cc86a6b60af43a68bf5ea69ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09260aff8e36017d6181fae8f0ac1fadbd01b70f93b1394cf95ca4c7faa7c78d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def throwCtorExpected {α} (ident : Option Syntax) : M α := do
  let message : MessageData :=
    "Invalid pattern: Expected a constructor or constant marked with `[match_pattern]`"
  let some idStx := ident | throwError message
  let name := idStx.getId
  if let .anonymous := name then throwError message
  let env ← getEnv
  let mut candidates : Array Name := #[]
  for (c, _) in env.constants do
    if isPrivateName c then continue
    if !(name.isSuffixOf c) then continue
    if env.isConstructor c || hasMatchPatternAttribute env c then
      candidates := candidates.push c

  if candidates.size = 0 then
    throwError message
  -- Sort for deterministic output (iteration order of `env.constants` is not stable)
  candidates := candidates.qsort Name.lt
  let oneOfThese := if h : candidates.size = 1 then m!"`{candidates[0]}`" else m!"one of these"
  let hint ← m!"Using {oneOfThese} would be valid:".hint (ref? := idStx) (candidates.map fun candidate => {
    suggestion := mkIdent candidate
    toCodeActionTitle? := .some (s!"Change to {·}")
    messageData? := .some m!"`{.ofConstName candidate}`",
  })
  throwError message ++ hint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d668088481e4fa5d2d3b1100b1d548dcc1752f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

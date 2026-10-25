# mkCleanName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5abde0234373d1b5975a59aa966c1e134c701ee6e2370cf1bdaa27d7367ad408",
  "kind": "def",
  "lexical_name": "mkCleanName",
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
  "slug": "mkcleanname--f12fc4ddbd4d557d6507ea49",
  "source": {
    "blob": "85653d8956e3ac9952558d4e6fb74ab4eaa4b09b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f12fc4ddbd4d557d6507ea495e65929e44e6c08eb96c060552c141a5fd0bda1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5abde0234373d1b5975a59aa966c1e134c701ee6e2370cf1bdaa27d7367ad408`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkCleanName (name : Name) (type : Expr) : GoalM Name := do
  if (← getConfig).clean then
    let mut name := name
    if name.hasMacroScopes then
      name := name.eraseMacroScopes
      if name == `x || name == `a then
        if (← isProp type) then
          name := `h
    if (← get).clean.used.contains name then
      let base ← mkBaseName name type
      let mut i := if let some i := (← get).clean.next.find? base then i else 1
      repeat
        name := base.appendIndexAfter i
        i := i + 1
        unless (← get).clean.used.contains name do
          break
      modify fun s => { s with clean.next := s.clean.next.insert base i }
    modify fun s => { s with clean.used := s.clean.used.insert name }
    return name
  else if let some originalName := getOriginalName? name then
    return originalName
  else if name.hasMacroScopes then
    let name' := name.eraseMacroScopes
    if name' == `x || name' == `a then
      if (← isProp type) then
        return (← mkFreshUserName `h)
    return name
  else
    mkFreshUserName name

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Intro/Variantb5ff8abf004f2d18edff211afaf21157ff9aec9410b70d0323f0c0cbc50792f8.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85653d8956e3ac9952558d4e6fb74ab4eaa4b09b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

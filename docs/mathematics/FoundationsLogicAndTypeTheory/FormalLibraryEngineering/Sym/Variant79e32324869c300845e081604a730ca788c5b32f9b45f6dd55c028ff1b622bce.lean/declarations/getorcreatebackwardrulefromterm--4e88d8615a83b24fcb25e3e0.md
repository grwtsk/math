# getOrCreateBackwardRuleFromTerm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63a91e2db10b7a3180e077ba61eda8a72bd80806cffcd3833cca8ca2a86ee5ae",
  "kind": "def",
  "lexical_name": "getOrCreateBackwardRuleFromTerm",
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
  "slug": "getorcreatebackwardrulefromterm--4e88d8615a83b24fcb25e3e0",
  "source": {
    "blob": "157db5163a75aba8c3cb91b5568f79234d9c4d9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e88d8615a83b24fcb25e3e0f581142a9c00b042ddd026b2a021251bdca100db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63a91e2db10b7a3180e077ba61eda8a72bd80806cffcd3833cca8ca2a86ee5ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getOrCreateBackwardRuleFromTerm (term : Syntax) : GrindTacticM Sym.BackwardRule := do
  let startPos := term.getPos?.map (·.byteIdx) |>.getD 0
  let endPos := term.getTailPos?.map (·.byteIdx) |>.getD 0
  let pos := (startPos, endPos)
  if let some rule := (← get).cache.backwardRuleSyntax.find? pos then
    return rule
  let e ← withMainContext do
    let e ← Term.elabTerm term none
    Term.synthesizeSyntheticMVars (postpone := .no)
    instantiateMVars e
  let rule ← Sym.mkBackwardRuleFromExpr e
  modify fun s => { s with cache.backwardRuleSyntax := s.cache.backwardRuleSyntax.insert pos rule }
  return rule

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sym/Variant79e32324869c300845e081604a730ca788c5b32f9b45f6dd55c028ff1b622bce.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `157db5163a75aba8c3cb91b5568f79234d9c4d9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

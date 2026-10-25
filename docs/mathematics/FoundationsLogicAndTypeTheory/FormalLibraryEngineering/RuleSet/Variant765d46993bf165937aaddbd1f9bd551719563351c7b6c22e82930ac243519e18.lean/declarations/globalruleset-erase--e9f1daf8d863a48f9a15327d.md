# GlobalRuleSet.erase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cff5907e9a6513cb90423a4a5b9c5d58b23b2afe9f4d13a97d9f97e3a009177d",
  "kind": "def",
  "lexical_name": "GlobalRuleSet.erase",
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
  "slug": "globalruleset-erase--e9f1daf8d863a48f9a15327d",
  "source": {
    "blob": "aded577a0dad76b7a413b1a75ca6231b31d23e0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 416,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9f1daf8d863a48f9a15327d2a22e8ad2a473ecfeb05fd74d788cacebd5b084e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cff5907e9a6513cb90423a4a5b9c5d58b23b2afe9f4d13a97d9f97e3a009177d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def GlobalRuleSet.erase (rs : GlobalRuleSet) (f : RuleFilter) :
    GlobalRuleSet × Bool := Id.run do
  let (rs, anyErased) := rs.onBase (·.erase f)
  if let some decl := f.matchesSimpTheorem? then
    if SimpTheorems.containsDecl rs.simpTheorems decl then
      let simpTheorems := rs.simpTheorems.eraseCore (.decl decl (inv := false))
      return ({ rs with simpTheorems := simpTheorems }, true)
  return (rs, anyErased)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aded577a0dad76b7a413b1a75ca6231b31d23e0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

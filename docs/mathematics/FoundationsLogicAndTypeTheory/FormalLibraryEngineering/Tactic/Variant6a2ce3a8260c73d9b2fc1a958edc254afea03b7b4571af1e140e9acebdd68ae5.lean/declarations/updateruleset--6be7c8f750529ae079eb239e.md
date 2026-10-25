# updateRuleSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:023ffa20a8523c51166286ebe12542c8dc65370b6633521a81e09b7b9b1fe26d",
  "kind": "def",
  "lexical_name": "updateRuleSet",
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
  "slug": "updateruleset--6be7c8f750529ae079eb239e",
  "source": {
    "blob": "ffcd9f515096d8cfa43a08373e60afd92f37dba8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 178,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant6a2ce3a8260c73d9b2fc1a958edc254afea03b7b4571af1e140e9acebdd68ae5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6be7c8f750529ae079eb239e3d0902ad3ef8d453d5c3def61e93d968d4be1a59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant6a2ce3a8260c73d9b2fc1a958edc254afea03b7b4571af1e140e9acebdd68ae5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:023ffa20a8523c51166286ebe12542c8dc65370b6633521a81e09b7b9b1fe26d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def updateRuleSet (rs : LocalRuleSet) (c : TacticConfig) (goal : MVarId):
    TermElabM LocalRuleSet := do
  let mut rs := rs
  for ruleExpr in c.additionalRules do
    let rules ← ruleExpr.buildAdditionalLocalRules goal
    for rule in rules do
      rs := rs.add rule

  -- Erase erased rules
  for ruleExpr in c.erasedRules do
    let filters ← ruleExpr.toLocalRuleFilters |>.run $ .forErasing goal
    for rFilter in filters do
      let (rs', anyErased) := rs.erase rFilter
      rs := rs'
      if ! anyErased then
        throwError "aesop: '{rFilter.name}' is not registered (with the given features) in any rule set."
  return rs

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant6a2ce3a8260c73d9b2fc1a958edc254afea03b7b4571af1e140e9acebdd68ae5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactic/Variant6a2ce3a8260c73d9b2fc1a958edc254afea03b7b4571af1e140e9acebdd68ae5.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffcd9f515096d8cfa43a08373e60afd92f37dba8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

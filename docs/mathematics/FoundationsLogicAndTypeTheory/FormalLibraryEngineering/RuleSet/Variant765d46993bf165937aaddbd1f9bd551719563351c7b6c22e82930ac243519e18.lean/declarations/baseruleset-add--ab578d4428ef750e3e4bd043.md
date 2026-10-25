# BaseRuleSet.add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:070f98f75d2f648e356654ad8e71a0a74fda4a7430942798802a382bd5298f7d",
  "kind": "def",
  "lexical_name": "BaseRuleSet.add",
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
  "slug": "baseruleset-add--ab578d4428ef750e3e4bd043",
  "source": {
    "blob": "aded577a0dad76b7a413b1a75ca6231b31d23e0b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 322,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab578d4428ef750e3e4bd043484a387796e695c9e1be4707027fa144cbf65ea7",
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

Occurrence: `declaration:070f98f75d2f648e356654ad8e71a0a74fda4a7430942798802a382bd5298f7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 322–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BaseRuleSet.add (rs : BaseRuleSet) (r : BaseRuleSetMember) :
    BaseRuleSet :=
  let erased := rs.erased.erase r.name
  let name := r.name.name
  let ruleNames :=
    match rs.ruleNames.find? name with
    | none => rs.ruleNames.insert name $ .singleton r.name
    | some ns => rs.ruleNames.insert name $ ns.insert r.name
  let rs := { rs with erased, ruleNames }
  match r with
  | .normRule r =>
    let rs := { rs with normRules := rs.normRules.add r r.indexingMode }
    addRulePattern r.name r.pattern? rs
  | .unsafeRule r =>
    let rs := { rs with unsafeRules := rs.unsafeRules.add r r.indexingMode }
    addRulePattern r.name r.pattern? rs
  | .safeRule r =>
    let rs := { rs with safeRules := rs.safeRules.add r r.indexingMode }
    addRulePattern r.name r.pattern? rs
  | .unfoldRule r =>
    { rs with unfoldRules := rs.unfoldRules.insert r.decl r.unfoldThm? }
  | .normForwardRule r₁ r₂ =>
    let rs := {
      rs with
      forwardRules := rs.forwardRules.insert r₁
      forwardRuleNames := rs.forwardRuleNames.insert r₁.name
      normRules := rs.normRules.add r₂ r₂.indexingMode
    }
    addRulePattern r₂.name r₂.pattern? rs
  | .unsafeForwardRule r₁ r₂ =>
    let rs := {
      rs with
      forwardRules := rs.forwardRules.insert r₁
      forwardRuleNames := rs.forwardRuleNames.insert r₁.name
      unsafeRules := rs.unsafeRules.add r₂ r₂.indexingMode
    }
    addRulePattern r₂.name r₂.pattern? rs
  | .safeForwardRule r₁ r₂ =>
    let rs := {
      rs with
      forwardRules := rs.forwardRules.insert r₁
      forwardRuleNames := rs.forwardRuleNames.insert r₁.name
      safeRules := rs.safeRules.add r₂ r₂.indexingMode
    }
    addRulePattern r₂.name r₂.pattern? rs
where
  addRulePattern (n : RuleName) (pat? : Option RulePattern)
      (rs : BaseRuleSet) : BaseRuleSet :=
    match pat? with
    | none => rs
    | some pat => { rs with rulePatterns := rs.rulePatterns.add n pat }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleSet/Variant765d46993bf165937aaddbd1f9bd551719563351c7b6c22e82930ac243519e18.lean#L322).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aded577a0dad76b7a413b1a75ca6231b31d23e0b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

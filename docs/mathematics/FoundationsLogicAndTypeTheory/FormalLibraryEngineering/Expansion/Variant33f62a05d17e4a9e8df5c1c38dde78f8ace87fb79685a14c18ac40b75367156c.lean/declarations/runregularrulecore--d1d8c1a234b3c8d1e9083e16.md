# runRegularRuleCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3b84177bce1f3be42cea9dde208355855b1a3e9e14f8f9668f5037ced850905",
  "kind": "def",
  "lexical_name": "runRegularRuleCore",
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
  "slug": "runregularrulecore--d1d8c1a234b3c8d1e9083e16",
  "source": {
    "blob": "ec07351f3b5fb86236f1a4bb90dcdb852bf0e2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1d8c1a234b3c8d1e9083e1692642d997e861c3f7a9700d910b4e3eeac72147e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3b84177bce1f3be42cea9dde208355855b1a3e9e14f8f9668f5037ced850905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runRegularRuleCore (parentRef : GoalRef) (rule : RegularRule)
    (indexMatchLocations : Array IndexMatchLocation)
    (patternSubsts? : Option (Array Substitution)) :
    SearchM Q (Option RuleTacOutput) := do
  let parent ← parentRef.get
  let ruleOutput? ←
    runRegularRuleTac parent rule.tac.run rule.name indexMatchLocations
      patternSubsts? (← read).options
  match ruleOutput? with
  | .error exc =>
    aesop_trace[steps] exc.toMessageData
    return none
  | .ok { applications := #[], .. } =>
    aesop_trace[steps] "Rule returned no rule applications"
    return none
  | .ok output =>
    return some output

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec07351f3b5fb86236f1a4bb90dcdb852bf0e2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

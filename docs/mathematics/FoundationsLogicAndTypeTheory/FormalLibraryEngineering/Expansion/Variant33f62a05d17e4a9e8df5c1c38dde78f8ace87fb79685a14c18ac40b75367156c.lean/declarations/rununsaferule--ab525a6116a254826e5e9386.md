# runUnsafeRule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:659565c893fa46ca4a0b2324b2668d777dde2385640b40358773f24fc8adc25a",
  "kind": "def",
  "lexical_name": "runUnsafeRule",
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
  "slug": "rununsaferule--ab525a6116a254826e5e9386",
  "source": {
    "blob": "ec07351f3b5fb86236f1a4bb90dcdb852bf0e2ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 168,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab525a6116a254826e5e9386cd918df7e5349635e3bb86f10d3c66a83e2497e1",
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

Occurrence: `declaration:659565c893fa46ca4a0b2324b2668d777dde2385640b40358773f24fc8adc25a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def runUnsafeRule (parentRef : GoalRef)
    (matchResult : IndexMatchResult UnsafeRule) : SearchM Q RuleResult := do
  let rule := matchResult.rule
  profilingRule (.ruleName rule.name) (·.isSuccessful) do
    withRuleTraceNode rule.name (·.toEmoji) "" do
      let some output ←
          runRegularRuleCore parentRef (.unsafe rule) matchResult.locations
            matchResult.patternSubsts?
        | do addRuleFailure (.unsafe rule) parentRef; return .failed
      addRapps parentRef (.unsafe rule) output.applications

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Expansion/Variant33f62a05d17e4a9e8df5c1c38dde78f8ace87fb79685a14c18ac40b75367156c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec07351f3b5fb86236f1a4bb90dcdb852bf0e2ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

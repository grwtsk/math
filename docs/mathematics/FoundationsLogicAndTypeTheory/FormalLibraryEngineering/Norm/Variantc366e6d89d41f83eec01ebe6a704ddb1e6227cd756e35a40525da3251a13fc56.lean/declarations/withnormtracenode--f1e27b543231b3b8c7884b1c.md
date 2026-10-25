# withNormTraceNode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b44fa4d4b112d28fbb9f894c80e88618e8b54364f83ffdcf1f6b122a0549bc3",
  "kind": "def",
  "lexical_name": "withNormTraceNode",
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
  "slug": "withnormtracenode--f1e27b543231b3b8c7884b1c",
  "source": {
    "blob": "49aafd0e2479937b27e3e66b03fb9833b4548d53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1e27b543231b3b8c7884b1c445def8b071065c8ae83377098fe87623e12b2bd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b44fa4d4b112d28fbb9f894c80e88618e8b54364f83ffdcf1f6b122a0549bc3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withNormTraceNode (ruleName : DisplayRuleName)
    (k : NormM (Option NormRuleResult)) : NormM (Option NormRuleResult) :=
  withAesopTraceNode .steps fmt do
    let result? ← k
    if let some newGoal := result?.bind (·.newGoal?) then
      aesop_trace[steps] newGoal
    return result?
  where
    fmt (r : Except Exception (Option NormRuleResult)) : NormM MessageData := do
      let emoji := exceptRuleResultToEmoji (optNormRuleResultEmoji ·) r
      return m!"{emoji} {ruleName}"

/-- On success, returns the rule tactic's result, the new forward state and the
new forward rule matches. If `rule` corresponds to some forward rule matches,
returns the matches as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Norm/Variantc366e6d89d41f83eec01ebe6a704ddb1e6227cd756e35a40525da3251a13fc56.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49aafd0e2479937b27e3e66b03fb9833b4548d53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

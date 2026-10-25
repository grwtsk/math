# mkFrameBackwardRuleCached

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6480ffead33a3b13429cd187d816ba1cbc14df117c4ee8fbeadda67f192affb",
  "kind": "def",
  "lexical_name": "mkFrameBackwardRuleCached",
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
  "slug": "mkframebackwardrulecached--ca37966e8e035df114f6c62c",
  "source": {
    "blob": "a8897bf38550e561911822eeff40b6e1c8f74c63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleCache/Variant38d869966f0a1bf90bdc13f9bf431288bab46f6fb1d9ff0021ae65d380e91e2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ca37966e8e035df114f6c62ce56255808254892d0a2d41c71f87f49567369299",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleCache/Variant38d869966f0a1bf90bdc13f9bf431288bab46f6fb1d9ff0021ae65d380e91e2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6480ffead33a3b13429cd187d816ba1cbc14df117c4ee8fbeadda67f192affb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkFrameBackwardRuleCached (op : Expr) (info : WPApp) : VCGenM BackwardRule := do
  let key := (ExprPtr.mk info.instWP, info.excessArgs.size)
  if let some rule := (← get).frameBackwardRuleCache[key]? then return rule
  let rule ← (← mkFrameBackwardRule op info).shareCommon
  modify fun st => { st with frameBackwardRuleCache := st.frameBackwardRuleCache.insert key rule }
  return rule

end VCGen

end Lean.Elab.Tactic.Do.Internal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleCache/Variant38d869966f0a1bf90bdc13f9bf431288bab46f6fb1d9ff0021ae65d380e91e2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RuleCache/Variant38d869966f0a1bf90bdc13f9bf431288bab46f6fb1d9ff0021ae65d380e91e2a.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8897bf38550e561911822eeff40b6e1c8f74c63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

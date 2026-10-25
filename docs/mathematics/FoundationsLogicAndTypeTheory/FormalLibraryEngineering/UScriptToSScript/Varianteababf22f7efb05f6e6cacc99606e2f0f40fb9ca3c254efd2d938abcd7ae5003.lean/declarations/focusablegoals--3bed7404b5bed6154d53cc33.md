# focusableGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adad84ced0d449aa5a67676aeb3672d7623b4e339ff146af35ecca4c5375986e",
  "kind": "def",
  "lexical_name": "focusableGoals",
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
  "slug": "focusablegoals--3bed7404b5bed6154d53cc33",
  "source": {
    "blob": "27a959a8610dfe98e7a28d9478c93b891be466d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bed7404b5bed6154d53cc3334fda6181ff8df9fdca54c39f36a1aa2b5b0731a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adad84ced0d449aa5a67676aeb3672d7623b4e339ff146af35ecca4c5375986e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def focusableGoals (t : StepTree) : Std.HashMap MVarId Nat :=
  runST (λ _ => go t |>.run ∅) |>.2
where
  go {σ} : StepTree → StateRefT (Std.HashMap MVarId Nat) (ST σ) (Array Nat)
    | .empty => return #[]
    | .node step i children => do
      let childIndexes := sortDedupArrays $ ← children.mapM go
      let indexes :=
        (Array.mkEmpty $ childIndexes.size + 1).push i ++ childIndexes
      if isConsecutiveSequence indexes then
        let lastIndex := childIndexes[childIndexes.size - 1]?.getD i
        modify (·.insert step.preGoal lastIndex)
      return indexes

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/UScriptToSScript/Varianteababf22f7efb05f6e6cacc99606e2f0f40fb9ca3c254efd2d938abcd7ae5003.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27a959a8610dfe98e7a28d9478c93b891be466d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

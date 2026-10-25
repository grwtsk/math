# compactLratChecker

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85cb0324eee35d46c98041ca1b53f273c31424a14eb3f810b1e985688e9fb7db",
  "kind": "def",
  "lexical_name": "compactLratChecker",
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
  "slug": "compactlratchecker--9503b07b6a9344ef0d37362d",
  "source": {
    "blob": "c4cdd808bb8b66500311d59cddceeb7ebe1dbc1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATChecker/Variantee495fc64f7179bfdbdeb6b7150951ad038f3b1bd24dd3d3cb9480d3b8beea82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9503b07b6a9344ef0d37362d79c092ce17c6902300adf16a49975ca1d30f4d31",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATChecker/Variantee495fc64f7179bfdbdeb6b7150951ad038f3b1bd24dd3d3cb9480d3b8beea82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85cb0324eee35d46c98041ca1b53f273c31424a14eb3f810b1e985688e9fb7db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compactLratChecker (f : DefaultFormula n) (proof : Array IntAction) :
    Result :=
  go f proof 0
where
  go {n : Nat} (f : DefaultFormula n) (proof : Array IntAction) (idx : Nat) : Result :=
    if h : idx < proof.size then
      let step := intActionToDefaultClauseAction n proof[idx]
      match step with
      | none => go f proof (idx + 1)
      | some (.addEmpty _ rupHints) =>
        let (_, checkSuccess) := Formula.performRupAdd f Clause.empty rupHints
        if checkSuccess then
          .success
        else
          .rupFailure
      | some (.addRup _ c rupHints) =>
        let (f, checkSuccess) := Formula.performRupAdd f c rupHints
        if checkSuccess then
          go f proof (idx + 1)
        else
          .rupFailure
      | some (.addRat _ c pivot rupHints ratHints) =>
        if pivot ∈ Clause.toList c then
          let (f, checkSuccess) := Formula.performRatAdd f c pivot rupHints ratHints
          if checkSuccess then
            go f proof (idx + 1)
          else
            .rupFailure
        else
          go f proof (idx + 1)
      | some (.del ids) => go (Formula.delete f ids) proof (idx + 1)
    else
      .outOfProof

end Internal
end LRAT
end Std.Tactic.BVDecide
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATChecker/Variantee495fc64f7179bfdbdeb6b7150951ad038f3b1bd24dd3d3cb9480d3b8beea82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CompactLRATChecker/Variantee495fc64f7179bfdbdeb6b7150951ad038f3b1bd24dd3d3cb9480d3b8beea82.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4cdd808bb8b66500311d59cddceeb7ebe1dbc1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

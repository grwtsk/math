# patternAccumulatorMemberAvoidanceBundle_project

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cf00c52-7042-fa43-ff47-afe6e5d850aa",
  "kind": "theorem",
  "lexical_name": "patternAccumulatorMemberAvoidanceBundle_project",
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
  "slug": "patternaccumulatormemberavoidancebundle-project--051d40c0cffb043bead11609",
  "source": {
    "blob": "f47665c6fd650080e150cf43456750e6437ce5e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 517,
    "line": 506,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:051d40c0cffb043bead11609662df0eb51d543b866416204f525ee577897eca6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cf00c52-7042-fa43-ff47-afe6e5d850aa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–517.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem patternAccumulatorMemberAvoidanceBundle_project
    {x : Nat} {xs forbidden acc : List Nat}
    (hacc :
      Think.Pipeline.Center.RadoFinitePatternAccumulatorStep.PatternAccumulator
        x xs forbidden acc)
    {y : Nat}
    (hy : y ∈ acc) :
    y ≠ x ∧ y ∉ xs ∧ y ∉ forbidden := by
  exact
    Think.Pipeline.Center.RadoFinitePatternAccumulatorProjection.pattern_accumulator_member_avoidance_bundle
      hacc hy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M56616c69646174696f6e2f5468656f72656d466f726d616c697a6174696f6e2e6c65616e/Variant9bac85923dace99d6fc39f0a5add5970af8830afcaf1452c7e38451e428c0f3d.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f47665c6fd650080e150cf43456750e6437ce5e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

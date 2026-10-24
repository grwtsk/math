# targetSeparationCost_pair_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "003929f7dd94332b0795211d8242684b906c1fb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:322711c7-0d65-239c-b3c0-40fcd9be98f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70333182-dc8e-4ec2-bde4-dd47cb5e4478",
  "kind": "theorem",
  "lexical_name": "targetSeparationCost_pair_le",
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
  "slug": "targetseparationcost-pair-le--44e449cb6c13a7625015bb9d",
  "source": {
    "blob": "003929f7dd94332b0795211d8242684b906c1fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 352,
    "line": 331,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44e449cb6c13a7625015bb9dc9609ae49b4d955ac997cbb13cf97d299fe858bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70333182-dc8e-4ec2-bde4-dd47cb5e4478`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–352.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem targetSeparationCost_pair_le [DecidableEq OtherResult]
    [LinearOrder Cost] [AddCommMonoid Cost] [IsOrderedAddMonoid Cost]
    {obs : Test → Object → Value} {admitted firstTests secondTests : Finset Test}
    {first : Object → Result} {second : Object → OtherResult}
    (cost : Test → Cost) (nonnegative : ∀ test ∈ admitted, 0 ≤ cost test)
    (firstSubset : firstTests ⊆ admitted) (secondSubset : secondTests ⊆ admitted)
    (firstSeparates : SeparatesTarget obs firstTests first)
    (secondSeparates : SeparatesTarget obs secondTests second) :
    TargetSeparationCost obs admitted (fun x => (first x, second x)) cost ≤
      (↑((∑ test ∈ firstTests, cost test) + ∑ test ∈ secondTests, cost test) : WithTop Cost) := by
  classical
  apply (targetSeparationCost_le_of_sufficient cost
    (Finset.union_subset firstSubset secondSubset)
    (firstSeparates.union_pair secondSeparates)).trans
  apply WithTop.coe_le_coe.mpr
  rw [← Finset.sum_sdiff (Finset.subset_union_left :
    firstTests ⊆ firstTests ∪ secondTests)]
  rw [Finset.union_sdiff_left, add_comm]
  exact add_le_add (le_refl _) (Finset.sum_le_sum_of_subset_of_nonneg Finset.sdiff_subset
    (fun test member _ => nonnegative test (secondSubset member)))

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/MinimumObservation/Variant6c3e00dacab3cd673aff7a3b57ae958b6476573e4bf8e2c4648366ce4a75e749.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `003929f7dd94332b0795211d8242684b906c1fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# exists_nontrivial_cycle_data_with_zero_avalanche

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6196fcf8-ea17-3713-534f-a2d8812d3596",
  "kind": "theorem",
  "lexical_name": "exists_nontrivial_cycle_data_with_zero_avalanche",
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
  "slug": "exists-nontrivial-cycle-data-with-zero-avalanche--c959a115d29c12723a270f2b",
  "source": {
    "blob": "e3e1a9fe7d5783348354993da8536af8ef7659d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 143,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteCycleAndAvalancheCounterexamples/Variant3c830f470ac69f39/ZeroAvalancheCounterexamples.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c959a115d29c12723a270f2b4f1c488d258adc23c1c8ee2893dab66478f0992e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteCycleAndAvalancheCounterexamples/Variant3c830f470ac69f39/ZeroAvalancheCounterexamples.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6196fcf8-ea17-3713-534f-a2d8812d3596`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_nontrivial_cycle_data_with_zero_avalanche
    {n : Nat}
    (hn : 1 < n) :
    ∃ H : BitPerm n,
      cycleEulerFactorData H ≠ cycleEulerFactorData (1 : BitPerm n) ∧
      sacScore H = 0 ∧
      varianceScore H = 0 := by
  let π := firstSecondSwap hn
  let H : BitPerm n := coordinatePermutation π
  have hH : H ≠ 1 := coordinate_firstSecondSwap_ne_one hn
  refine ⟨H, cycleEulerFactorData_ne_identity_of_ne H hH,
    coordinatePermutation_sacScore π (by omega),
    coordinatePermutation_varianceScore π (by omega)⟩

end GRWTSK.Algebra.GroupTheory.BasicGroupTheory.GroupActions.FixedPointCounting.BooleanPermutationCycles.Variant3c830f470ac69f39
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteCycleAndAvalancheCounterexamples/Variant3c830f470ac69f39/ZeroAvalancheCounterexamples.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CombinatorialObjects/Permutations/FiniteCycleAndAvalancheCounterexamples/Variant3c830f470ac69f39/ZeroAvalancheCounterexamples.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e1a9fe7d5783348354993da8536af8ef7659d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

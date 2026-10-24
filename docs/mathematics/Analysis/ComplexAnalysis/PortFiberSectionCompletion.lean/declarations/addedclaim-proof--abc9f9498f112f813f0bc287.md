# addedClaim_proof

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 114,
      "path": "GRWTSK/Interfaces/PortFiberSectionCompletion.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dcf6fad8-13bd-0422-7770-a4a44b8ec7ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40d8f105-bfd9-3c0b-c76f-f4d90f5dee30",
  "kind": "theorem",
  "lexical_name": "addedClaim_proof",
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
  "slug": "addedclaim-proof--abc9f9498f112f813f0bc287",
  "source": {
    "blob": "bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 114,
    "path": "GRWTSK/Interfaces/PortFiberSectionCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abc9f9498f112f813f0bc287295acdf76bf000b042daf4a8e56bdcb8e8f470d2",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40d8f105-bfd9-3c0b-c76f-f4d90f5dee30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem addedClaim_proof (i : AddedIndex) : AddedClaim i := by
  cases i with
  | completionEmbedding =>
      intro ι D C M μ hOpen
      exact ⟨sectionCompletion_complete M μ hOpen, toCompletion_injective M μ hOpen,
        toCompletion_denseRange M μ hOpen, toCompletion_isometry M μ hOpen⟩
  | innerEnergyBinding =>
      intro ι D C M μ hOpen q r s t x
      exact ⟨toCompletion_inner M μ hOpen q r, toCompletion_classOf_inner M μ hOpen s t,
        completionEnergy_toCompletion M μ hOpen q, completionEnergy_lt_top M μ hOpen x,
        toCompletion_dist M μ hOpen q r⟩
  | boundedExtension =>
      intro ι D C M μ hOpen
      constructor
      · intro F _ _ _ f
        exact existsUnique_extension M μ hOpen f
      · exact extendLinear_embedding M μ hOpen
  | gaugeEmbedding =>
      intro ι D C E G M μ hOpen q r
      exact ⟨gaugeCompletion_toCompletion G M μ hOpen q,
        gaugeCompletion_symm_toCompletion G M μ hOpen r, gaugeCompletion_isometry G M μ hOpen⟩
  | gaugePreservation =>
      intro ι D C E G M μ hOpen x y z
      exact ⟨gaugeCompletion_inner G M μ hOpen x y, completionEnergy_gauge G M μ hOpen x,
        (gaugeCompletionEquiv G M μ hOpen).symm_apply_apply x,
        (gaugeCompletionEquiv G M μ hOpen).apply_symm_apply z⟩
  | gaugeUniqueness =>
      intro ι D C E G M μ hOpen f hf h
      exact gaugeCompletion_unique G M μ hOpen f hf h
  | failureBoundaries =>
      constructor
      · intro ι D C M hOpen x
        exact zeroMeasure_completion_eq_zero M hOpen x
      · let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
        let h := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen
        let x := GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint
        exact ⟨D, Cocycle.identity D, MetricWeights.identity D, Measure.dirac x, h,
          Fixtures.diracVector 1, Fixtures.diracVector (-1), Fixtures.equal_norm_distinct_completed⟩
  | complexOrder =>
      let D := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts
      let h := GRWTSK.Analysis.Complex.HolomorphicLineCocycle.Fixtures.twoCharts_isOpen
      let x := GRWTSK.Analysis.Complex.HolomorphicLineSectionEnergy.Fixtures.zeroPoint
      exact ⟨D, Cocycle.identity D, MetricWeights.identity D, Measure.dirac x, h,
        Fixtures.diracVector 1, Fixtures.diracVector Complex.I,
        Fixtures.completed_imaginary_pairing, Fixtures.completed_reversed_imaginary_pairing⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/PortFiberSectionCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Interfaces/PortFiberSectionCompletion.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfafe3828711d94b9fa04bd99ab3e98ab3f2dec0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

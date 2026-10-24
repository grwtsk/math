# tendsto_map_of_tendsto_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4f50e853a720d185d4e2d5da32b30e6cc1d752bb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 658,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e7f7d56-670a-14b7-fc0b-d04f842ac3eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f5cd5fc3-2521-b8f1-2f1b-13da51fae30a",
  "kind": "lemma",
  "lexical_name": "tendsto_map_of_tendsto_of_continuous",
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
  "slug": "tendsto-map-of-tendsto-of-continuous--5e7e2e7897cda8f5afed9f56",
  "source": {
    "blob": "4f50e853a720d185d4e2d5da32b30e6cc1d752bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 671,
    "line": 658,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e7e2e7897cda8f5afed9f564a2faf97ff518a735ca29759ff23e4feba83b50c",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5cd5fc3-2521-b8f1-2f1b-13da51fae30a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 658–671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma tendsto_map_of_tendsto_of_continuous {ι : Type*} {L : Filter ι}
    (νs : ι → ProbabilityMeasure Ω) (ν : ProbabilityMeasure Ω) (lim : Tendsto νs L (𝓝 ν))
    {f : Ω → Ω'} (f_cont : Continuous f) :
    Tendsto (fun i ↦ (νs i).map f) L (𝓝 (ν.map f)) := by
  rw [ProbabilityMeasure.tendsto_iff_forall_lintegral_tendsto] at lim ⊢
  intro g
  convert! lim (g.compContinuous ⟨f, f_cont⟩) <;>
  · simp only [map, compContinuous_apply, ContinuousMap.coe_mk]
    refine lintegral_map ?_ f_cont.measurable
    exact (ENNReal.continuous_coe.comp g.continuous).measurable

/-- If `f : X → Y` is continuous and `Y` is equipped with the Borel sigma algebra, then
the push-forward of probability measures `f* : ProbabilityMeasure X → ProbabilityMeasure Y`
is continuous (in the topologies of convergence in distribution). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantb17f8dc9a9fb066f3fe9ccecbfbfebfe522181ca896977c078bef5f4e62a6705.lean#L658).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f50e853a720d185d4e2d5da32b30e6cc1d752bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

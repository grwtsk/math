# iIndepFun_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:160501a2-2dea-6b0c-d112-1ee4e55a919f",
  "kind": "lemma",
  "lexical_name": "iIndepFun_pi",
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
  "slug": "iindepfun-pi--2e8a8e0afb7384c9cf8b8067",
  "source": {
    "blob": "85ec99af5f0329fa116611e43c504dc386f66128",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 914,
    "line": 896,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variantd0f572428b9be6cdcce1ac8b9f1143a581d10f6d3e3191197de1681e1cccc6d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e8a8e0afb7384c9cf8b80677980783e7d41f5fc425bf1f4449294574b364c45",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variantd0f572428b9be6cdcce1ac8b9f1143a581d10f6d3e3191197de1681e1cccc6d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:160501a2-2dea-6b0c-d112-1ee4e55a919f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 896–914.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma iIndepFun_pi (mX : ∀ i, AEMeasurable (X i) (μ i)) :
    iIndepFun (fun i ω ↦ X i (ω i)) (Measure.pi μ) := by
  refine iIndepFun_iff_map_fun_eq_pi_map ?_ |>.2 ?_
  · exact fun i ↦ (mX i).comp_quasiMeasurePreserving (Measure.quasiMeasurePreserving_eval _ i)
  rw [Measure.pi_map_pi mX]
  congr
  ext i : 1
  rw [← (measurePreserving_eval μ i).map_eq, AEMeasurable.map_map_of_aemeasurable,
    Function.comp_def]
  · rw [(measurePreserving_eval μ i).map_eq]
    exact mX i
  · exact (measurable_pi_apply i).aemeasurable

end iIndepFun

section Mul
variable {β : Type*} {m : MeasurableSpace β} [Mul β] [MeasurableMul₂ β] {f : ι → Ω → β}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variantd0f572428b9be6cdcce1ac8b9f1143a581d10f6d3e3191197de1681e1cccc6d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Basic/Variantd0f572428b9be6cdcce1ac8b9f1143a581d10f6d3e3191197de1681e1cccc6d7.lean#L896).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ec99af5f0329fa116611e43c504dc386f66128` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

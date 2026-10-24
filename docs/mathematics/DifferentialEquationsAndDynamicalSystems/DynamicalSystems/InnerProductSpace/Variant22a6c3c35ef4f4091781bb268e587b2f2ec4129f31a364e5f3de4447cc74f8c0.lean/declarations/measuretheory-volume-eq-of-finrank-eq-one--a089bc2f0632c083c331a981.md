# MeasureTheory.volume_eq_of_finrank_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:152f1752-5ebd-7940-a814-1f2d66273c9e",
  "kind": "theorem",
  "lexical_name": "MeasureTheory.volume_eq_of_finrank_eq_one",
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
  "slug": "measuretheory-volume-eq-of-finrank-eq-one--a089bc2f0632c083c331a981",
  "source": {
    "blob": "ccff5045d9b2511827e4a36ab713135714b8a496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 225,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a089bc2f0632c083c331a981b9d39012398a3363b99fa0f0f01eeededd7b4173",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:152f1752-5ebd-7940-a814-1f2d66273c9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem MeasureTheory.volume_eq_of_finrank_eq_one (h : Module.finrank ℝ E = 1) {v : E}
    (hv : v ≠ 0) : (volume : Measure E) = ‖v‖ₑ • (volume : Measure ℝ).map (· • v) := calc
  volume = ((volume : Measure ℝ).map (‖v‖⁻¹ • ·)).map (· • v) := by
    have hv' : Submodule.span ℝ {‖v‖⁻¹ • v} = ⊤ := by
      rw [Submodule.span_singleton_eq_top_iff]
      apply exists_smul_eq_of_finrank_eq_one h
      simpa
    let f : ℝ ≃ₗᵢ[ℝ] E := (LinearIsometryEquiv.toSpanUnitSingleton (‖v‖⁻¹ • v)
      (by simp [norm_smul, hv])).trans (LinearIsometryEquiv.ofTop E _ hv')
    rw [map_map (by fun_prop) (by fun_prop)]
    convert! f.measurePreserving.map_eq.symm
    ext x
    simp [f, mul_comm, smul_smul]
  _ = ‖v‖ₑ • (volume : Measure ℝ).map (· • v) := by
    rw [map_addHaar_smul _ (by simpa using hv), Measure.map_smul _ (by fun_prop)]
    simp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant22a6c3c35ef4f4091781bb268e587b2f2ec4129f31a364e5f3de4447cc74f8c0.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccff5045d9b2511827e4a36ab713135714b8a496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

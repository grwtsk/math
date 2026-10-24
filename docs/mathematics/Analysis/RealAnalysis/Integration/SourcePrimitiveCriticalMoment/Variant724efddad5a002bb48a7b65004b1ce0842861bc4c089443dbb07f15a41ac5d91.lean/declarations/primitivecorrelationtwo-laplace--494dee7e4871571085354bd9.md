# primitiveCorrelationTwo_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b080e54abd7cf5743b0437585927f066041fa209",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/724efddad5a002bb48a7b65004b1ce0842861bc4c089443dbb07f15a41ac5d91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb6d54a0-ef73-bbe4-c48f-3c4b1f32f36a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc169512-2ff0-56ef-a160-c9c208d78955",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationTwo_laplace",
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
  "slug": "primitivecorrelationtwo-laplace--494dee7e4871571085354bd9",
  "source": {
    "blob": "b080e54abd7cf5743b0437585927f066041fa209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant724efddad5a002bb48a7b65004b1ce0842861bc4c089443dbb07f15a41ac5d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:494dee7e4871571085354bd9119925de457433f4c4a104db16d68c42309b13d9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant724efddad5a002bb48a7b65004b1ce0842861bc4c089443dbb07f15a41ac5d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc169512-2ff0-56ef-a160-c9c208d78955`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationTwo_laplace {A : ℝ} (hA : 0 < A) (σ : ℝ) :
    (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationTwo A s) =
      σ ^ 4 * ∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s := by
  have hc := normalizedPrimitiveBump_contDiff hA
  have hc1 : ContDiff ℝ 1 (deriv (normalizedPrimitiveBump A)) := hc.deriv'
  have hs := normalizedPrimitiveBump_hasCompactSupport hA
  have h2 := weighted_correlation_integral (deriv (deriv (normalizedPrimitiveBump A))) σ
    (weighted_compact_integrable hc1.continuous_deriv_one hs.deriv.deriv σ)
    (weighted_compact_integrable hc1.continuous_deriv_one hs.deriv.deriv (-σ))
  have h0 := weighted_correlation_integral (normalizedPrimitiveBump A) σ
    (weighted_compact_integrable hc.continuous hs σ)
    (weighted_compact_integrable hc.continuous hs (-σ))
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationTwo A s) = _ at h2
  change (∫ s : ℝ, Real.exp (σ * s) * primitiveCorrelationZero A s) = _ at h0
  rw [primitive_second_laplace hA σ, primitive_second_laplace hA (-σ)] at h2
  rw [h2, h0]
  ring

/-- The actual source filter has its squared Laplace polynomial; no absolute lag bound is used. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant724efddad5a002bb48a7b65004b1ce0842861bc4c089443dbb07f15a41ac5d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variant724efddad5a002bb48a7b65004b1ce0842861bc4c089443dbb07f15a41ac5d91.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b080e54abd7cf5743b0437585927f066041fa209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

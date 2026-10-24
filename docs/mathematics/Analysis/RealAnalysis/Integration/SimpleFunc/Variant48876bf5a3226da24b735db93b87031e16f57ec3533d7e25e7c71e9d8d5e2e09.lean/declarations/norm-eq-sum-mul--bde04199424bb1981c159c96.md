# norm_eq_sum_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ae390f18-070a-7241-c7cd-4852cb393511",
  "kind": "theorem",
  "lexical_name": "norm_eq_sum_mul",
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
  "slug": "norm-eq-sum-mul--bde04199424bb1981c159c96",
  "source": {
    "blob": "8d5c9380c34692eb83f0af27bfde738dbb47b0a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 45,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bde04199424bb1981c159c96d1c080725e1b7533939a793bbf3b36aefa3a692f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae390f18-070a-7241-c7cd-4852cb393511`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eq_sum_mul (f : α →₁ₛ[μ] G) :
    ‖f‖ = ∑ x ∈ (toSimpleFunc f).range, μ.real (toSimpleFunc f ⁻¹' {x}) * ‖x‖ := by
  rw [norm_toSimpleFunc, eLpNorm_one_eq_lintegral_enorm ((toSimpleFunc f)).aestronglyMeasurable]
  have h_eq := SimpleFunc.map_apply (‖·‖ₑ) (toSimpleFunc f)
  simp_rw [← h_eq, measureReal_def]
  rw [SimpleFunc.lintegral_eq_lintegral, SimpleFunc.map_lintegral, ENNReal.toReal_sum]
  · congr
    ext1 x
    rw [ENNReal.toReal_mul, mul_comm, ← ofReal_norm,
      ENNReal.toReal_ofReal (norm_nonneg _)]
  · intro x _
    by_cases hx0 : x = 0
    · rw [hx0]; simp
    · finiteness [SimpleFunc.measure_preimage_lt_top_of_integrable _ (SimpleFunc.integrable f) hx0]

section SetToL1S

variable [NormedRing 𝕜] [Module 𝕜 E] [IsBoundedSMul 𝕜 E]

attribute [local instance] Lp.simpleFunc.module

attribute [local instance] Lp.simpleFunc.normedSpace

/-- Extend `Set α → (E →L[ℝ] F')` to `(α →₁ₛ[μ] E) → F'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SimpleFunc/Variant48876bf5a3226da24b735db93b87031e16f57ec3533d7e25e7c71e9d8d5e2e09.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d5c9380c34692eb83f0af27bfde738dbb47b0a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

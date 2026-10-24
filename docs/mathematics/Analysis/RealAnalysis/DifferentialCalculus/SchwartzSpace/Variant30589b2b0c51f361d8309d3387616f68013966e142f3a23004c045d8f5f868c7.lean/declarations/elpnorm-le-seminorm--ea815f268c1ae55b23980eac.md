# eLpNorm_le_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a1f9f3d5dc8594c97f095b99298437b6a095ccf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1258,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/30/30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:212167bb-ec58-af6e-b821-1c25c2c9f321",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:76dff6bc-1aca-5d94-2833-0c4f6c5c399e",
  "kind": "theorem",
  "lexical_name": "eLpNorm_le_seminorm",
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
  "slug": "elpnorm-le-seminorm--ea815f268c1ae55b23980eac",
  "source": {
    "blob": "6a1f9f3d5dc8594c97f095b99298437b6a095ccf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1287,
    "line": 1258,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea815f268c1ae55b23980eac5abf8fe513d220d9d014fe5785914f17aac9b9d6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76dff6bc-1aca-5d94-2833-0c4f6c5c399e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1258–1287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eLpNorm_le_seminorm (p : ℝ≥0∞) (μ : Measure E := by volume_tac)
    [hμ : μ.HasTemperateGrowth] :
    ∃ (k : ℕ) (C : ℝ≥0), ∀ (f : 𝓢(E, F)), eLpNorm f p μ ≤
      C * ENNReal.ofReal ((Finset.Iic (k, 0)).sup (schwartzSeminormFamily 𝕜 E F) f) := by
  -- Apply Hölder's inequality `‖f‖_p ≤ ‖f₁‖_p * ‖f₂‖_∞` to obtain the `L^p` norm of `f = f₁ • f₂`
  -- using `f₁ = (1 + ‖x‖) ^ (-k)` and `f₂ = (1 + ‖x‖) ^ k • f x`.
  rcases hμ.exists_eLpNorm_lt_top p with ⟨k, hk⟩
  refine ⟨k, (eLpNorm (fun x ↦ (1 + ‖x‖) ^ (-k : ℝ)) p μ).toNNReal * 2 ^ k, fun f ↦ ?_⟩
  have h_one_add (x : E) : 0 < 1 + ‖x‖ := lt_add_of_pos_of_le zero_lt_one (norm_nonneg x)
  calc eLpNorm (⇑f) p μ
  _ = eLpNorm ((fun x : E ↦ (1 + ‖x‖) ^ (-k : ℝ)) • fun x ↦ (1 + ‖x‖) ^ k • f x) p μ := by
    refine congrArg (eLpNorm · p μ) (funext fun x ↦ ?_)
    simp [Real.rpow_neg (h_one_add x).le, (h_one_add x).ne']
  _ ≤ eLpNorm (fun x ↦ (1 + ‖x‖) ^ (-k : ℝ)) p μ * eLpNorm (fun x ↦ (1 + ‖x‖) ^ k • f x) ⊤ μ := by
    refine eLpNorm_smul_le_eLpNorm_mul_eLpNorm_top p _ ?_
    refine Continuous.aestronglyMeasurable ?_
    exact .rpow_const (.add continuous_const continuous_norm) fun x ↦ .inl (h_one_add x).ne'
  _ ≤ eLpNorm (fun x ↦ (1 + ‖x‖) ^ (-k : ℝ)) p μ *
      (2 ^ k * ENNReal.ofReal (((Finset.Iic (k, 0)).sup (schwartzSeminormFamily 𝕜 E F)) f)) := by
    gcongr
    refine eLpNormEssSup_le_of_ae_nnnorm_bound (ae_of_all μ fun x ↦ ?_)
    rw [← norm_toNNReal, Real.toNNReal_le_iff_le_coe]
    simpa [norm_smul, abs_of_nonneg (h_one_add x).le] using
      one_add_le_sup_seminorm_apply (m := (k, 0)) (le_refl k) (le_refl 0) f x
  _ = _ := by
    rw [ENNReal.coe_mul, ENNReal.coe_toNNReal hk.ne]
    simp only [ENNReal.coe_pow, ENNReal.coe_ofNat]
    ring

/-- The `L^p` norm of a Schwartz function is finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SchwartzSpace/Variant30589b2b0c51f361d8309d3387616f68013966e142f3a23004c045d8f5f868c7.lean#L1258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a1f9f3d5dc8594c97f095b99298437b6a095ccf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

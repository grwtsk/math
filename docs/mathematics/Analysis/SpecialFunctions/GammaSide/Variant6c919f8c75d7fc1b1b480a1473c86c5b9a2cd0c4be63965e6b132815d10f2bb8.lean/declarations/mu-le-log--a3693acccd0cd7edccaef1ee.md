# mu_le_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:55c57dd5-ac8b-5747-b687-26839eb067d1",
  "kind": "theorem",
  "lexical_name": "mu_le_log",
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
  "slug": "mu-le-log--a3693acccd0cd7edccaef1ee",
  "source": {
    "blob": "376a2cd6a598862f487e75be59d2e645495db596",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 173,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3693acccd0cd7edccaef1ee4f2c199b3f122e7e24161cfaedcd66e01de76d63",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55c57dd5-ac8b-5747-b687-26839eb067d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 173–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mu_le_log (hΓ : Zeta23.GammaFacts) : ∃ C : ℝ, 0 < C ∧ ∀ τ : ℝ, 1 ≤ τ →
    |mu τ| ≤ C * Real.log (τ + 3) := by
  obtain ⟨C₀, hC₀⟩ := hΓ.stirling
  have hlog2π : 0 ≤ Real.log (2 * Real.pi) :=
    Real.log_nonneg (by nlinarith [Real.pi_gt_three])
  refine ⟨1 + |C₀| + Real.log (2 * Real.pi),
    by linarith [abs_nonneg C₀], fun τ hτ => ?_⟩
  have hτ0 : (0:ℝ) < τ := by linarith
  have h1 := hC₀ τ (by rw [abs_of_pos hτ0]; exact hτ)
  rw [abs_of_pos hτ0] at h1
  obtain ⟨hl, hr⟩ := abs_le.mp h1
  have hlog3 : 1 ≤ Real.log (τ + 3) := by
    rw [← Real.log_exp 1]
    apply Real.log_le_log (Real.exp_pos 1)
    have := Real.exp_one_lt_d9; linarith
  have hlogτ0 : 0 ≤ Real.log τ := Real.log_nonneg hτ
  have hlogτ : Real.log τ ≤ Real.log (τ + 3) := Real.log_le_log hτ0 (by linarith)
  have hdiv : Real.log (τ / (2 * Real.pi)) = Real.log τ - Real.log (2 * Real.pi) :=
    Real.log_div (by linarith) (by positivity)
  rw [hdiv] at hl hr
  have hC₀τ : |C₀ / τ ^ 2| ≤ |C₀| := by
    rw [abs_div, abs_of_pos (by positivity : (0:ℝ) < τ ^ 2)]
    apply div_le_self (abs_nonneg _) (by nlinarith)
  obtain ⟨hCl, hCr⟩ := abs_le.mp hC₀τ
  have h2π : 1 / (2 * Real.pi) ≤ 1 := by
    rw [div_le_one (by positivity)]; nlinarith [Real.pi_gt_three]
  have h2π0 : 0 < 1 / (2 * Real.pi) := by positivity
  rw [abs_le]
  constructor
  · -- lower bound: mu τ ≥ (1/2π)(log τ − log 2π) − C₀/τ² ≥ −(…)·log(τ+3)
    have e1 : -(Real.log (2 * Real.pi)) ≤ 1 / (2 * Real.pi) * (Real.log τ - Real.log (2 * Real.pi)) := by
      nlinarith
    nlinarith
  · have e2 : 1 / (2 * Real.pi) * (Real.log τ - Real.log (2 * Real.pi)) ≤ Real.log (τ + 3) := by
      nlinarith
    nlinarith

end Zeta23.RvM
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaSide/Variant6c919f8c75d7fc1b1b480a1473c86c5b9a2cd0c4be63965e6b132815d10f2bb8.lean#L173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `376a2cd6a598862f487e75be59d2e645495db596` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

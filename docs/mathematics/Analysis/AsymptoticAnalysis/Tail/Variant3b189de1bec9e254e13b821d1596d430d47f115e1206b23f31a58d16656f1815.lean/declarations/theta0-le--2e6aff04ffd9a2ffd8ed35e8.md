# theta0_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 82,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3b/3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:03561921-fb0c-8918-2e1c-644f4c0f76b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc0efc5d-1176-22a0-ebce-823394d9be53",
  "kind": "theorem",
  "lexical_name": "theta0_le",
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
  "slug": "theta0-le--2e6aff04ffd9a2ffd8ed35e8",
  "source": {
    "blob": "b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 82,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e6aff04ffd9a2ffd8ed35e84c5f48ef26baf159df2353e6642785a6949e3d67",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc0efc5d-1176-22a0-ebce-823394d9be53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta0_le (P : Params) (hP : P.Valid) {T A₀ C₁ R : ℝ} (hT : T₀ ≤ T) (hA₀ : 0 ≤ A₀)
    (hC₁ : 0 ≤ C₁) (hC₁R : C₁ ≤ 2 * R) :
    theta0 A₀ (Real.exp (P.L T / 4) * C₁) T ≤ 32 * A₀ * R ^ 2 * l T * T ^ (P.lam / 2 - 1) := by
  have hT' : (300:ℝ) ≤ T := hT
  have hT0 : 0 < T := by linarith
  have hπ0 : 0 < Real.pi := Real.pi_pos
  have hlam := hP.lam_pos
  -- e^{L/2} = (T/2π)^{λ/2} ≤ T^{λ/2}
  have hexp : Real.exp (P.L T / 4) ^ 2 ≤ T ^ (P.lam / 2) := by
    rw [← Real.exp_nat_mul]; push_cast
    have : (2:ℝ) * (P.L T / 4) = (P.lam / 2) * Real.log (T / (2 * Real.pi)) := by
      unfold Params.L l; ring
    rw [this, ← Real.log_rpow (by positivity), Real.exp_log (by positivity)]
    apply Real.rpow_le_rpow (by positivity) _ (by positivity)
    rw [div_le_iff₀ (by positivity)]; nlinarith [Real.two_le_pi]
  have hlog := log_four_mul_le_two_mul_l hT
  have hl0 : 0 ≤ l T := by
    have := one_le_log_four_mul hT; linarith
  have hK2 : (Real.exp (P.L T / 4) * C₁) ^ 2 ≤ T ^ (P.lam / 2) * (4 * R ^ 2) := by
    rw [mul_pow]
    apply mul_le_mul hexp _ (by positivity) (by positivity)
    nlinarith
  unfold theta0
  rw [div_le_iff₀ hT0]
  have hTpow : T ^ (P.lam / 2 - 1) * T = T ^ (P.lam / 2) := by
    rw [Real.rpow_sub hT0, Real.rpow_one, div_mul_cancel₀ _ hT0.ne']
  calc 4 * A₀ * (Real.exp (P.L T / 4) * C₁) ^ 2 * Real.log (4 * T)
      ≤ 4 * A₀ * (T ^ (P.lam / 2) * (4 * R ^ 2)) * (2 * l T) := by
        apply mul_le_mul _ hlog (by linarith [one_le_log_four_mul hT]) (by positivity)
        exact mul_le_mul_of_nonneg_left hK2 (by positivity)
    _ = 32 * A₀ * R ^ 2 * l T * T ^ (P.lam / 2 - 1) * T := by rw [mul_assoc _ _ T, hTpow]; ring

/-! ### The local count from PaperInputs.RvM.local -/

/-- From the two-sided local count on Z.N (PaperInputs.RvM.local) to the
finite-sub-family form LocalCount used by Zeta23/Tail/Count.lean, for the family of all
distinct zeros ρ ∈ Z.carrier with ordinate γ_ρ = Im ρ and multiplicity m_ρ = Z.mult ρ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Tail/Variant3b189de1bec9e254e13b821d1596d430d47f115e1206b23f31a58d16656f1815.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4d913b40612a2af4d950b0c83ce59cb7d7a0ff3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

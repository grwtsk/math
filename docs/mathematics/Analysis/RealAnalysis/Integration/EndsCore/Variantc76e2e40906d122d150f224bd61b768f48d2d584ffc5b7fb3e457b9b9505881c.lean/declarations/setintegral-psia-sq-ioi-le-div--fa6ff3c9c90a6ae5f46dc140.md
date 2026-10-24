# setIntegral_psiA_sq_Ioi_le_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3d47056d-d886-48c2-7afc-9bb5c8736d92",
  "kind": "theorem",
  "lexical_name": "setIntegral_psiA_sq_Ioi_le_div",
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
  "slug": "setintegral-psia-sq-ioi-le-div--fa6ff3c9c90a6ae5f46dc140",
  "source": {
    "blob": "76395d7f7e7303c94775bff76ac7487ba1a94ab8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 500,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6ff3c9c90a6ae5f46dc1402c19c3e249f3b80fc40464bfec48201265dab609",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d47056d-d886-48c2-7afc-9bb5c8736d92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 500–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_psiA_sq_Ioi_le_div (hF : LocalHypsCoreW cϱ p F) {Δ : ℝ} (hΔ : 0 < Δ) :
    ∫ r in Set.Ioi Δ, psiA cϱ p r ^ 2 ≤ (cϱ / p.w) ^ 2 / (3 * Δ ^ 3) := by
  have hw : 0 < p.w := by linarith [hF.one_le_w]
  have hc : 0 ≤ cϱ := by linarith [hF.four_le_cϱ]
  have hg : IntegrableOn (fun x : ℝ => (cϱ / p.w) ^ 2 * x ^ (-4:ℝ)) (Set.Ioi Δ) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num) hΔ).const_mul _
  calc ∫ r in Set.Ioi Δ, psiA cϱ p r ^ 2 ≤ ∫ r in Set.Ioi Δ, (cϱ / p.w) ^ 2 * r ^ (-4:ℝ) := by
        refine setIntegral_mono_on hF.psi_sq_integrable.integrableOn hg measurableSet_Ioi
          fun r hr => ?_
        have hr0 : 0 < r := hΔ.trans hr
        have h1 : psiA cϱ p r ≤ cϱ / (p.w * r ^ 2) := psiA_le_div_sq hr0.ne'
        calc psiA cϱ p r ^ 2 ≤ (cϱ / (p.w * r ^ 2)) ^ 2 := pow_le_pow_left₀ (psiA_nonneg_of hF r) h1 2
          _ = (cϱ / p.w) ^ 2 * r ^ (-4:ℝ) := by
              rw [show (-4:ℝ) = -((4:ℕ):ℝ) by norm_num, Real.rpow_neg hr0.le, Real.rpow_natCast]
              field_simp
    _ = (cϱ / p.w) ^ 2 / (3 * Δ ^ 3) := by
        rw [integral_const_mul, integral_Ioi_rpow_of_lt (by norm_num) hΔ]
        norm_num
        field_simp

/-- ∫_{(Δ,∞)} ψ² ≤ ∫_ℝ ψ² ≤ 8L. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variantc76e2e40906d122d150f224bd61b768f48d2d584ffc5b7fb3e457b9b9505881c.lean#L500).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76395d7f7e7303c94775bff76ac7487ba1a94ab8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

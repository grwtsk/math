# mu_part_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c2addf6-12ba-3e37-e61d-7c88fc210caa",
  "kind": "lemma",
  "lexical_name": "mu_part_integrable",
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
  "slug": "mu-part-integrable--83daa3c19e1f7556875cd47a",
  "source": {
    "blob": "7f5598539f46f75f1cb8a084bcef17c567c1e3c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1277,
    "line": 1256,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:83daa3c19e1f7556875cd47a474b2bbe39e510febfced9f8382115da9e2e13b9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c2addf6-12ba-3e37-e61d-7c88fc210caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1256–1277.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mu_part_integrable (hΓ : Zeta23.GammaFacts) (hF : LocalHypsCore cϱ p F) {t : ℝ} (ht0 : 0 < t) :
    Integrable (fun r => F.phiHat r ^ 2 * Zeta23.mu (t + r)) := by
  obtain ⟨M, hM0, hM⟩ := mu_linear_bound hΓ
  have hmeas : AEStronglyMeasurable (fun r => F.phiHat r ^ 2 * Zeta23.mu (t + r)) volume := by
    have hc : Continuous fun r => F.phiHat r ^ 2 * Zeta23.mu (t + r) := by
      have := hΓ.smooth.continuous; have := hF.phiHat_cont; fun_prop
    exact hc.aestronglyMeasurable
  refine Integrable.mono'
    ((hF.phiHat_sq_integrable.const_mul (M + t)).add hF.phiHat_sq_mul_abs_integrable) hmeas ?_
  refine Filter.Eventually.of_forall fun r => ?_
  simp only [Real.norm_eq_abs, Pi.add_apply]
  rw [abs_mul, abs_of_nonneg (sq_nonneg _)]
  have htr : |t + r| ≤ t + |r| := by
    calc |t + r| ≤ |t| + |r| := abs_add_le _ _
      _ = t + |r| := by rw [abs_of_pos ht0]
  calc F.phiHat r ^ 2 * |Zeta23.mu (t + r)| ≤ F.phiHat r ^ 2 * (M + |t + r|) := by
        gcongr; exact hM _
    _ ≤ F.phiHat r ^ 2 * (M + (t + |r|)) := by gcongr
    _ = (M + t) * F.phiHat r ^ 2 + F.phiHat r ^ 2 * |r| := by ring

/-- **Decomposition of a diagonal entry** (§5.2: `G_kk = ∫ φ̂(τ−τ_k)² ν_X(τ)dτ =: G^μ_kk +
G^Π_kk + G^P_kk according to (eq:nudef)`), after translating `τ = τ_k + r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Varianta2d8a134ab26d3c470c571b6c24ecda58fa303a7f65fcb6481b05c20c28b2c49.lean#L1256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f5598539f46f75f1cb8a084bcef17c567c1e3c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

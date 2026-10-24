# setIntegral_psiA_sq_Ioi_le_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 492,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/70/70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:35bf3ef0-6e55-f32a-b201-b117efd1a139",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0dfd0e7b-2def-531e-6031-67431e8ab6bf",
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
  "slug": "setintegral-psia-sq-ioi-le-div--48304a8b9bb1a1e9cd543b44",
  "source": {
    "blob": "a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 492,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48304a8b9bb1a1e9cd543b448e202857ad619ea1b1e486e2264b19a4cf85debe",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dfd0e7b-2def-531e-6031-67431e8ab6bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–512.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsCore/Variant70dfd12f92a3a3f51750c48e46717f5c2624083c93e997402b96cf537e843421.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a25c85d7b9ce75b04c4a0e1b913105f1afcabe0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

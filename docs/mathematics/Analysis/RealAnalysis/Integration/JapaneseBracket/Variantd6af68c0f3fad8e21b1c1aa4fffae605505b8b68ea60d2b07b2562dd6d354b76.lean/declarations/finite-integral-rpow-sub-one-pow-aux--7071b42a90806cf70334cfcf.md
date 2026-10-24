# finite_integral_rpow_sub_one_pow_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2b97b87d-2c53-6649-af5b-34c512b1d5da",
  "kind": "theorem",
  "lexical_name": "finite_integral_rpow_sub_one_pow_aux",
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
  "slug": "finite-integral-rpow-sub-one-pow-aux--7071b42a90806cf70334cfcf",
  "source": {
    "blob": "93a1be435cf4c08f7648f8fec6ecf57be1dc0420",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7071b42a90806cf70334cfcfd74d8061c3fb4cc10ed56bd9a00edc13d9f1b946",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2b97b87d-2c53-6649-af5b-34c512b1d5da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_integral_rpow_sub_one_pow_aux {r : ℝ} (n : ℕ) (hnr : (n : ℝ) < r) :
    (∫⁻ x : ℝ in Ioc 0 1, ENNReal.ofReal ((x ^ (-r⁻¹) - 1) ^ n)) < ∞ := by
  have hr : 0 < r := lt_of_le_of_lt n.cast_nonneg hnr
  have h_int : ∀ x : ℝ, x ∈ Ioc (0 : ℝ) 1 →
      ENNReal.ofReal ((x ^ (-r⁻¹) - 1) ^ n) ≤ ENNReal.ofReal (x ^ (-(r⁻¹ * n))) := fun x hx ↦ by
    apply ENNReal.ofReal_le_ofReal
    rw [← neg_mul, rpow_mul hx.1.le, rpow_nat_cast]
    refine' pow_le_pow_of_le_left _ (by simp only [sub_le_self_iff, zero_le_one]) n
    rw [le_sub_iff_add_le', add_zero]
    refine' Real.one_le_rpow_of_pos_of_le_one_of_nonpos hx.1 hx.2 _
    rw [Right.neg_nonpos_iff, inv_nonneg]
    exact hr.le
  refine' lt_of_le_of_lt (set_lintegral_mono' measurableSet_Ioc h_int) _
  refine' IntegrableOn.set_lintegral_lt_top _
  rw [← intervalIntegrable_iff_integrable_Ioc_of_le zero_le_one]
  apply intervalIntegral.intervalIntegrable_rpow'
  rwa [neg_lt_neg_iff, inv_mul_lt_iff' hr, one_mul]
#align finite_integral_rpow_sub_one_pow_aux finite_integral_rpow_sub_one_pow_aux

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variantd6af68c0f3fad8e21b1c1aa4fffae605505b8b68ea60d2b07b2562dd6d354b76.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93a1be435cf4c08f7648f8fec6ecf57be1dc0420` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

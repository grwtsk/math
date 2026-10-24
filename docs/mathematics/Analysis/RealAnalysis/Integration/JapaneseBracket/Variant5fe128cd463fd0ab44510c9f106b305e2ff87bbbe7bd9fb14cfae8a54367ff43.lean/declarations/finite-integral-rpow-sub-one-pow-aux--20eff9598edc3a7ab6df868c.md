# finite_integral_rpow_sub_one_pow_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78737319-1096-c65b-dbfc-ee16128a465e",
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
  "slug": "finite-integral-rpow-sub-one-pow-aux--20eff9598edc3a7ab6df868c",
  "source": {
    "blob": "84d86d9ae7feaa31beacc09ee085e123e57ca273",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 80,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20eff9598edc3a7ab6df868c528dbd5bfa93efee818c9d48e959dfc826a97a91",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78737319-1096-c65b-dbfc-ee16128a465e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_integral_rpow_sub_one_pow_aux {r : ℝ} (n : ℕ) (hnr : (n : ℝ) < r) :
    (∫⁻ x : ℝ in Ioc 0 1, ENNReal.ofReal ((x ^ (-r⁻¹) - 1) ^ n)) < ∞ := by
  have hr : 0 < r := lt_of_le_of_lt n.cast_nonneg hnr
  have h_int x (hx : x ∈ Ioc (0 : ℝ) 1) := by
    calc
      ENNReal.ofReal ((x ^ (-r⁻¹) - 1) ^ n) ≤ .ofReal ((x ^ (-r⁻¹) - 0) ^ n) := by
        gcongr
        · rw [sub_nonneg]
          exact Real.one_le_rpow_of_pos_of_le_one_of_nonpos hx.1 hx.2 (by simpa using hr.le)
        · norm_num
      _ = .ofReal (x ^ (-(r⁻¹ * n))) := by simp [rpow_mul hx.1.le, ← neg_mul]
  refine lt_of_le_of_lt (setLIntegral_mono' measurableSet_Ioc h_int) ?_
  refine IntegrableOn.setLIntegral_lt_top ?_
  rw [← intervalIntegrable_iff_integrableOn_Ioc_of_le zero_le_one]
  apply intervalIntegral.intervalIntegrable_rpow'
  rwa [neg_lt_neg_iff, inv_mul_lt_iff₀' hr, one_mul]

variable [MeasurableSpace E] [BorelSpace E] {μ : Measure E} [μ.IsAddHaarMeasure]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/JapaneseBracket/Variant5fe128cd463fd0ab44510c9f106b305e2ff87bbbe7bd9fb14cfae8a54367ff43.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84d86d9ae7feaa31beacc09ee085e123e57ca273` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# norm_eGen_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e71ca5a-8057-b08e-bc75-1d217f4c0f53",
  "kind": "theorem",
  "lexical_name": "norm_eGen_le",
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
  "slug": "norm-egen-le--c9aeba821b465b09d41739bc",
  "source": {
    "blob": "c44add26a7f407e151ee79ab0dff13008593abc6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 161,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c9aeba821b465b09d41739bc1899cc2f4b75733569b15e53a69a8aadef62ace7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e71ca5a-8057-b08e-bc75-1d217f4c0f53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_eGen_le (T : ℝ) (r N : ℕ) :
    ‖eGen Lb T r N‖ ≤ (2 / ‖Lb T‖) ^ r * (Real.log N * Fmaj (2 / ‖Lb T‖) N) := by
  unfold eGen Fmaj
  rw [Finset.mul_sum, Finset.mul_sum]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun j _ => ?_)
  have hconv0 : 0 ≤ lamLogConv j N := lamLogConv_nonneg j N
  have hconv : lamLogConv j N ≤ Real.log N * (Λ ^ (j + 1)) N := lamLogConv_le j N
  have hL0 : 0 ≤ ‖Lb T‖⁻¹ := inv_nonneg.mpr (norm_nonneg _)
  rw [norm_mul, norm_mul, norm_mul, norm_pow, norm_neg, norm_one, one_pow, one_mul, Complex.norm_natCast,
    norm_pow, norm_inv, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg hconv0]
  have hch : (((r + j).choose j : ℕ) : ℝ) ≤ 2 ^ (r + j) := by exact_mod_cast choose_le_two_pow (r + j) j
  have hlam0 : 0 ≤ Real.log N * (Λ ^ (j + 1)) N :=
    mul_nonneg (Real.log_natCast_nonneg N) (lamPow_nonneg _ _)
  calc (((r + j).choose j : ℕ) : ℝ) * ‖Lb T‖⁻¹ ^ (j + 1 + r) * lamLogConv j N
      ≤ 2 ^ (r + j) * ‖Lb T‖⁻¹ ^ (j + 1 + r) * (Real.log N * (Λ ^ (j + 1)) N) := by
        gcongr
    _ ≤ 2 * (2 ^ (r + j) * ‖Lb T‖⁻¹ ^ (j + 1 + r) * (Real.log N * (Λ ^ (j + 1)) N)) := by
        have : 0 ≤ 2 ^ (r + j) * ‖Lb T‖⁻¹ ^ (j + 1 + r) * (Real.log N * (Λ ^ (j + 1)) N) := by positivity
        linarith
    _ = (2 / ‖Lb T‖) ^ r * (Real.log N * ((2 / ‖Lb T‖) ^ (j + 1) * (Λ ^ (j + 1)) N)) := by
        rw [div_eq_mul_inv]; ring

/-! ### the core sum bound -/

/-- **core**: Σ_{N≤x} ‖e_r(N)‖²/N ≤ CF·(4/l)^{2r}·log²x for 2 ≤ x ≤ e^{l}, T ≥ T0re. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ReexpansionGen/Variantc4439ea7448f2274f5deb63e4050b771a347a8f89013dfd568f4d06002fa9341.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c44add26a7f407e151ee79ab0dff13008593abc6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# branch3_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0dc32ef6-50da-cbd4-6554-2ecd5231382b",
  "kind": "theorem",
  "lexical_name": "branch3_aux",
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
  "slug": "branch3-aux--4d0d89aca32ba4b22513631b",
  "source": {
    "blob": "570e76c38ddee829cb5740278651fdf506e91cdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d0d89aca32ba4b22513631bbd48fda1ca7b7f2230c4173693b0ab29e1a01ec2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0dc32ef6-50da-cbd4-6554-2ecd5231382b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem branch3_aux {t : ℝ} (ht : t ∈ Set.Ico (exp 58) (exp 1169)) :
    (log t) ^ 5 *
      (sqrt (8 / (17 * Real.pi)) * (log t / 6.455) ^ ((1 : ℝ) / 4) *
        exp (-sqrt (log t / 6.455)))
      ≤ (100000000000000000000 : ℝ) := by
  have htpos : 0 < t := lt_of_lt_of_le (by positivity : (0 : ℝ) < exp 58) ht.1
  have hlog_ge : (58 : ℝ) ≤ log t := by
    have h := log_le_log (by positivity : (0 : ℝ) < exp 58) ht.1
    simpa [log_exp] using h
  have hlog_le : log t ≤ (1169 : ℝ) := by
    have h := log_le_log htpos (le_of_lt ht.2)
    simpa [log_exp] using h
  have hlog_nonneg : 0 ≤ log t := by linarith [hlog_ge]
  have hsqrt_le_one : sqrt (8 / (17 * Real.pi)) ≤ (1 : ℝ) :=
    (sqrt_le_iff).2 ⟨by norm_num,
      (div_le_iff₀ (by positivity : (0 : ℝ) < 17 * Real.pi)).2
        (by simpa using show (8 : ℝ) ≤ 17 * Real.pi by nlinarith [Real.pi_gt_three])⟩
  have hbase_ge_one : (1 : ℝ) ≤ log t / 6.455 := by
    have : (6.455 : ℝ) ≤ log t := by linarith [hlog_ge]
    exact (one_le_div (by positivity)).2 this
  have hrpow_le_base :
      (log t / 6.455) ^ ((1 : ℝ) / 4) ≤ (log t / 6.455) ^ (1 : ℝ) := by
    exact Real.rpow_le_rpow_of_exponent_le hbase_ge_one (by norm_num)
  have hrpow_le : (log t / 6.455) ^ ((1 : ℝ) / 4) ≤ log t / 6.455 := by
    simpa using hrpow_le_base
  have hexp_le_one : exp (-sqrt (log t / 6.455)) ≤ 1 := by
    have harg : -sqrt (log t / 6.455) ≤ 0 := by
      nlinarith [sqrt_nonneg (log t / 6.455)]
    exact exp_le_one_iff.mpr harg
  have hlog5_le : (log t) ^ 5 ≤ (1169 : ℝ) ^ 5 := by
    exact pow_le_pow_left₀ hlog_nonneg hlog_le 5
  have hratio_le : log t / 6.455 ≤ (1169 : ℝ) / 6.455 := by
    gcongr
  calc
    (log t) ^ 5 *
      (sqrt (8 / (17 * Real.pi)) * (log t / 6.455) ^ ((1 : ℝ) / 4) *
        exp (-sqrt (log t / 6.455)))
      ≤ (log t) ^ 5 * (1 * (log t / 6.455) * 1) := by
      gcongr
    _ ≤ (1169 : ℝ) ^ 5 * (1 * ((1169 : ℝ) / 6.455) * 1) := by
      gcongr
    _ ≤ (100000000000000000000 : ℝ) := by
      norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variantce46f0d5dfa409983aadb6a229d3aa69401a1cdccf89b6a05a4eb99870de6d94.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `570e76c38ddee829cb5740278651fdf506e91cdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# high_branch_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a58137c7-eb74-aa19-423c-965199a38632",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:19ea0686-38d6-9858-beb6-2010f82a1bc6",
  "kind": "theorem",
  "lexical_name": "high_branch_aux",
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
  "slug": "high-branch-aux--8134ded299f1f7608a48a833",
  "source": {
    "blob": "453e830095347a4b4868e31bd20aa3dede73817f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8134ded299f1f7608a48a83397fd4292913ca5083a8c59df6d861855e145d34b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ea0686-38d6-9858-beb6-2010f82a1bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem high_branch_aux {t c : ℝ}
    (ht : t ∈ Set.Icc (exp 1169) (exp 3870))
    (hc : c ≤ 462) :
    (log t) ^ 5 *
      (c * (log t / 5.573412) ^ (1.52 : ℝ) *
        exp (-(1.89 : ℝ) * sqrt (log t / 5.573412)))
      ≤ (100000000000000000000 : ℝ) := by
  have htpos : 0 < t := lt_of_lt_of_le (by positivity : (0 : ℝ) < exp 1169) ht.1
  have hlog_ge : (1169 : ℝ) ≤ log t := by
    have h := log_le_log (by positivity : (0 : ℝ) < exp 1169) ht.1
    simpa [log_exp] using h
  have hlog_le : log t ≤ (3870 : ℝ) := by
    have h := log_le_log htpos ht.2
    simpa [log_exp] using h
  have hlog_nonneg : 0 ≤ log t := by linarith [hlog_ge]
  have hratio_ge_one : (1 : ℝ) ≤ log t / 5.573412 := by
    have htmp : (5.573412 : ℝ) ≤ log t := by linarith [hlog_ge]
    exact (one_le_div (by positivity)).2 htmp
  have hratio_le : log t / 5.573412 ≤ (3870 : ℝ) / 5.573412 := by
    gcongr
  have hrpow_le_sq :
      (log t / 5.573412) ^ (1.52 : ℝ) ≤ (log t / 5.573412) ^ (2 : ℝ) := by
    exact rpow_le_rpow_of_exponent_le hratio_ge_one (by norm_num : (1.52 : ℝ) ≤ 2)
  have hratio_sq_le :
      (log t / 5.573412) ^ (2 : ℝ) ≤ ((3870 : ℝ) / 5.573412) ^ (2 : ℝ) := by
    exact rpow_le_rpow (by positivity) hratio_le (by positivity)
  have hexp_le :
      exp (-(1.89 : ℝ) * sqrt (log t / 5.573412)) ≤ (1 : ℝ) / 10000000 := by
    have : sqrt ((1169 : ℝ) / 5.573412) ≤ sqrt (log t / 5.573412) :=
      sqrt_le_sqrt (by gcongr)
    have : (-(1.89 : ℝ)) * sqrt (log t / 5.573412) ≤
        (-(1.89 : ℝ)) * sqrt ((1169 : ℝ) / 5.573412) := by nlinarith
    exact le_trans (by simpa [mul_comm, mul_left_comm, mul_assoc] using exp_le_exp.mpr this)
      exp_1169_small
  have hlog5_le : (log t) ^ 5 ≤ (3870 : ℝ) ^ 5 := pow_le_pow_left₀ hlog_nonneg hlog_le 5
  calc
    (log t) ^ 5 *
      (c * (log t / 5.573412) ^ (1.52 : ℝ) *
        exp (-(1.89 : ℝ) * sqrt (log t / 5.573412)))
      ≤ (log t) ^ 5 * (462 * (log t / 5.573412) ^ (2 : ℝ) * ((1 : ℝ) / 10000000)) := by
      gcongr
    _ ≤ (3870 : ℝ) ^ 5 * (462 * (((3870 : ℝ) / 5.573412) ^ (2 : ℝ)) * ((1 : ℝ) / 10000000)) := by
      gcongr
    _ ≤ (100000000000000000000 : ℝ) := by
      norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RamanujanCalculations/Variant5f91bddfe86f40f2999d0c7ad3ed85a7ba0ae27bc2c2e15e84c22b4be1157a92.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `453e830095347a4b4868e31bd20aa3dede73817f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# source_union_exp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:abfeafdc-799d-b909-b545-92a599bd35fb",
  "kind": "theorem",
  "lexical_name": "source_union_exp_le",
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
  "slug": "source-union-exp-le--b56dbd33f02c6fa92699d803",
  "source": {
    "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 231,
    "path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b56dbd33f02c6fa92699d8037fd6a83749f79e381e6e1ea6a05d4c6e744fb244",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:abfeafdc-799d-b909-b545-92a599bd35fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_union_exp_le (n m : ℕ) (hn : 2 ≤ n) (hm : 0 < m)
    (hu : (m : ℝ) ≤ (1 / 1000 : ℝ) * n / Real.log n)
    (c : ℝ) (hc : 0 < c) (hcrate : 10 * c ≤ 1000) :
    (n : ℝ) * Real.exp (-(n : ℝ) / (c * m)) ≤ 1 / (n : ℝ) ^ 9 := by
  have hnR : (0 : ℝ) < n := by exact_mod_cast (show 0 < n by omega)
  have hmR : (0 : ℝ) < m := by exact_mod_cast hm
  have hlog : 0 < Real.log (n : ℝ) := Real.log_pos (by exact_mod_cast (show 1 < n by omega))
  have hmul := (le_div_iff₀ hlog).mp hu
  have hrate := mul_le_mul_of_nonneg_right hcrate (mul_nonneg hmR.le hlog.le)
  have hratio : 10 * Real.log (n : ℝ) ≤ (n : ℝ) / (c * m) := by
    apply (le_div_iff₀ (mul_pos hc hmR)).mpr
    nlinarith
  calc
    _ ≤ (n : ℝ) * Real.exp (-(10 * Real.log n)) := by
      apply mul_le_mul_of_nonneg_left _ hnR.le
      apply Real.exp_le_exp.mpr
      simpa only [neg_div] using neg_le_neg hratio
    _ = _ := by
      rw [Real.exp_neg, show (10 : ℝ) * Real.log n = (10 : ℕ) * Real.log n by norm_num,
        Real.exp_nat_mul, Real.exp_log hnR]
      field_simp

open GRWTSK.ZModIndependentSelection

/-- The union bound for the actual finite uniform sample space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actualUpperColumn_time_width_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bcfa50a8-a498-8ecc-061a-aa4681b43e39",
  "kind": "theorem",
  "lexical_name": "actualUpperColumn_time_width_le",
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
  "slug": "actualuppercolumn-time-width-le--7fe4f61f1ae63e4f499a4654",
  "source": {
    "blob": "37e1a1f3dcb9a67743c6fe390829586bbb1e6ba2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 39,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variant6f3b7139e7b446d6e04b963126f2781c49caedb19e59b39460d7c228c5300d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7fe4f61f1ae63e4f499a46545e77ddf9b0ff2628a197c231a77af2f35c97b37e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variant6f3b7139e7b446d6e04b963126f2781c49caedb19e59b39460d7c228c5300d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcfa50a8-a498-8ecc-061a-aa4681b43e39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUpperColumn_time_width_le {A : ℝ} (hA : 1 ≤ A) :
    2 * A - actualColumnUpper A - actualTimeLower A ≤
      3 / (vaughanCutoff A : ℝ) := by
  let U := vaughanCutoff A
  let a := U + 1
  let K := sourceKernelCutoff A / a
  have hU : 0 < (U : ℝ) := by exact_mod_cast vaughanCutoff_pos A hA
  have hKa : a ≤ K := actual_column_window_nonempty hA
  have ha : 0 < (a : ℝ) := by dsimp [a]; positivity
  have hK : 0 < (K : ℝ) := by exact_mod_cast (show 0 < K by dsimp [a] at hKa; omega)
  have he := actualUpperColumn_quotient_gap hA
  change Real.exp (2 * A) < ((K : ℝ) + 2) * (a : ℝ) at he
  have hl := Real.log_le_log (Real.exp_pos (2 * A)) he.le
  rw [Real.log_exp, Real.log_mul (by positivity : (K : ℝ) + 2 ≠ 0) ha.ne'] at hl
  have hu := Real.log_le_sub_one_of_pos (div_pos ha hU)
  rw [Real.log_div ha.ne' hU.ne'] at hu
  have hk := Real.log_le_sub_one_of_pos (div_pos (by positivity : 0 < (K : ℝ) + 2) hK)
  rw [Real.log_div (by positivity : (K : ℝ) + 2 ≠ 0) hK.ne'] at hk
  have hau : (a : ℝ) = (U : ℝ) + 1 := by dsimp [a]; simp
  have hu' : Real.log (a : ℝ) - Real.log (U : ℝ) ≤ 1 / (U : ℝ) := by
    rw [hau] at hu
    have hr : ((U : ℝ) + 1) / (U : ℝ) - 1 = 1 / (U : ℝ) := by
      field_simp
      ring
    simpa only [hr, ← hau] using hu
  have hk' : Real.log ((K : ℝ) + 2) - Real.log (K : ℝ) ≤ 2 / (K : ℝ) := by
    have hr : ((K : ℝ) + 2) / (K : ℝ) - 1 = 2 / (K : ℝ) := by
      field_simp
      ring
    simpa only [hr] using hk
  have hUK : (U : ℝ) ≤ (K : ℝ) := by
    exact_mod_cast (show U ≤ K by dsimp [a] at hKa; omega)
  have hinv : 2 / (K : ℝ) ≤ 2 / (U : ℝ) :=
    div_le_div_of_nonneg_left (by norm_num) hU hUK
  change 2 * A - Real.log (K : ℝ) - Real.log (U : ℝ) ≤ 3 / (U : ℝ)
  linarith

/-- Every source jet vanishes beyond the genuine closed right seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variant6f3b7139e7b446d6e04b963126f2781c49caedb19e59b39460d7c228c5300d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperColumnWindow/Variant6f3b7139e7b446d6e04b963126f2781c49caedb19e59b39460d7c228c5300d94.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37e1a1f3dcb9a67743c6fe390829586bbb1e6ba2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

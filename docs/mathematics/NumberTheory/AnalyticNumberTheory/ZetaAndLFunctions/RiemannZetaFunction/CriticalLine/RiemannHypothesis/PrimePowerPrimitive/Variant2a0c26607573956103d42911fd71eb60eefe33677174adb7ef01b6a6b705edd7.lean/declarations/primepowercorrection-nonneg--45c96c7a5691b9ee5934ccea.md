# primePowerCorrection_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a659e6a-255f-05fd-ed6c-dd1eeea57848",
  "kind": "theorem",
  "lexical_name": "primePowerCorrection_nonneg",
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
  "slug": "primepowercorrection-nonneg--45c96c7a5691b9ee5934ccea",
  "source": {
    "blob": "6ddd3785598ccd3abcb04781cfc25f9e4fb84cd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c96c7a5691b9ee5934cceae1cbc68d7531fe580d9ea5f0d39ebbb0f0ebe066",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a659e6a-255f-05fd-ed6c-dd1eeea57848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primePowerCorrection_nonneg {x : ℝ} (hx : 1 ≤ x) : 0 ≤ primePowerCorrection x := by
  rw [primePowerCorrection_eq_sum]
  apply mul_nonneg (by norm_num)
  apply Finset.sum_nonneg
  intro n hn
  have hn2 := (Finset.mem_Icc.mp hn).1
  have hnx : (n : ℝ) ≤ x := (Nat.cast_le.mpr (Finset.mem_Icc.mp hn).2).trans
    (Nat.floor_le (by linarith : 0 ≤ x))
  have hn0 : (0 : ℝ) < n := by exact_mod_cast (by omega : 0 < n)
  have hi := one_div_le_one_div_of_le (Real.sqrt_pos.2 hn0) (Real.sqrt_le_sqrt hnx)
  exact mul_nonneg (mangoldt_minus_primeLog_nonneg n) (by linarith)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimePowerPrimitive/Variant2a0c26607573956103d42911fd71eb60eefe33677174adb7ef01b6a6b705edd7.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ddd3785598ccd3abcb04781cfc25f9e4fb84cd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

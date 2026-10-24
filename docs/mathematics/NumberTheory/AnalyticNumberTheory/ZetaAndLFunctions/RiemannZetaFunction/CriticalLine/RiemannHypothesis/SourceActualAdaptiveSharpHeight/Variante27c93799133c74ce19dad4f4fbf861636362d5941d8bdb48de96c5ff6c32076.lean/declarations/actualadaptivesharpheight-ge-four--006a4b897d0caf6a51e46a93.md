# actualAdaptiveSharpHeight_ge_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1c6f478-4a24-87bf-c2e5-b261b661b4e3",
  "kind": "theorem",
  "lexical_name": "actualAdaptiveSharpHeight_ge_four",
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
  "slug": "actualadaptivesharpheight-ge-four--006a4b897d0caf6a51e46a93",
  "source": {
    "blob": "9113d2e98461853ae1502bf7b9f8c79bc07fe767",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:006a4b897d0caf6a51e46a93f01d20faf7d1093bd067f8a0b72bffa33a2b8783",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1c6f478-4a24-87bf-c2e5-b261b661b4e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdaptiveSharpHeight_ge_four {η A : ℝ} (hη : 1 ≤ η) (hA : 91 ≤ A) :
    4 ≤ actualAdaptiveSharpHeight η A := by
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have he := Real.add_one_le_exp (A / 60)
  have hp := pow_le_pow_left₀ (by linarith : 0 ≤ A / 60 + 1) he 12
  have hexp : Real.exp (A / 60) ^ 12 = Real.exp (A / 5) := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [hexp] at hp
  have hs := six_factor_lower A hA
  have hs2 := pow_le_pow_left₀ (by linarith : 0 ≤ 2 * A) hs 2
  have hexplow : 4 * A ^ 2 ≤ Real.exp (A / 5) := by
    nlinarith only [hp, hs2]
  have hrpow : A ^ ((8 : ℝ) / 5) ≤ A ^ 2 := by
    simpa only [Real.rpow_natCast] using
      Real.rpow_le_rpow_of_exponent_le hA1 (by norm_num : (8 : ℝ) / 5 ≤ 2)
  have hden : 0 < A ^ ((8 : ℝ) / 5) := Real.rpow_pos_of_pos hApos _
  unfold actualAdaptiveSharpHeight
  apply (le_div_iff₀ hden).mpr
  have heη := mul_le_mul_of_nonneg_right hη (Real.exp_pos (A / 5)).le
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualAdaptiveSharpHeight/Variante27c93799133c74ce19dad4f4fbf861636362d5941d8bdb48de96c5ff6c32076.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9113d2e98461853ae1502bf7b9f8c79bc07fe767` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

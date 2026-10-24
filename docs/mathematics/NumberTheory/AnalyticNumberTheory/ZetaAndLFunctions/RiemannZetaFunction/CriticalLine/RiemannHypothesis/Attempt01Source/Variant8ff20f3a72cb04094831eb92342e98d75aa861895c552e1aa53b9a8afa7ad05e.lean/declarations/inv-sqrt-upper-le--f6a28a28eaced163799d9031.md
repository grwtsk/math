# inv_sqrt_upper_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e35025-7194-565d-fbf0-27ea2625c047",
  "kind": "theorem",
  "lexical_name": "inv_sqrt_upper_le",
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
  "slug": "inv-sqrt-upper-le--f6a28a28eaced163799d9031",
  "source": {
    "blob": "cd8b6da4d40ceef733eeabc96f9b8163d7a1a7eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 102,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6a28a28eaced163799d90315422592adb8e1cc2a6165bb10193f5b286a0cce1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e35025-7194-565d-fbf0-27ea2625c047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inv_sqrt_upper_le {A : ℝ} (hA : 4 ≤ A) :
    1 / Real.sqrt ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) ≤
      2 * Real.sqrt ((vaughanCutoff A + 1 : ℕ) : ℝ) * Real.exp (-A) := by
  have hK := actual_column_window_nonempty (by linarith : 1 ≤ A)
  have hU := vaughanCutoff_pos A (by linarith : 1 ≤ A)
  have hL : 0 < ((sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 : ℕ) : ℝ) := by
    exact_mod_cast (show 0 < sourceKernelCutoff A / (vaughanCutoff A + 1) - 1 by omega)
  rw [Real.exp_neg, div_le_iff₀ (Real.sqrt_pos.2 hL)]
  have he := sqrt_upper_gap hA
  have hm := mul_le_mul_of_nonneg_left he (Real.exp_pos A).le
  apply (le_div_iff₀ (Real.exp_pos A)).1
  convert he using 1 <;> ring

/-- The complete actual finite upper harmonic error has an explicit real-scale decay budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01Source/Variant8ff20f3a72cb04094831eb92342e98d75aa861895c552e1aa53b9a8afa7ad05e.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd8b6da4d40ceef733eeabc96f9b8163d7a1a7eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

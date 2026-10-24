# logTerm_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7407b5f1-2c3f-0083-04b5-ba025aba1860",
  "kind": "theorem",
  "lexical_name": "logTerm_norm_le",
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
  "slug": "logterm-norm-le--12b94d26819a457a04e4e6d7",
  "source": {
    "blob": "ec0b0cfb7294392f1e40e395d02ead1e05686674",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 200,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12b94d26819a457a04e4e6d722641365eeb07f6b44519796767ebe664584d047",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7407b5f1-2c3f-0083-04b5-ba025aba1860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem logTerm_norm_le (c t : ℝ) (n : ℕ) :
    ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ))‖ ≤
        ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ / Real.log 2 := by
  rcases eq_or_ne n 0 with rfl | hn0
  · simp
  rcases eq_or_ne n 1 with rfl | hn1
  · simp [actualMangoldtCoefficients]
  have hn2 : 2 ≤ n := by omega
  have hlog : 0 < Real.log (n:ℝ) := Real.log_pos (by exact_mod_cast hn2)
  have hl2 : 0 < Real.log 2 := Real.log_pos (by norm_num)
  have hlo : Real.log 2 ≤ Real.log (n:ℝ) :=
    Real.log_le_log (by norm_num) (by exact_mod_cast hn2)
  have he : ((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ):ℂ) *
      Complex.exp (-((c:ℂ)+(t:ℂ)*I)*(Real.log n:ℂ)) =
        LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n /
          (Real.log n:ℂ) := by
    rw [term_eq_exp, Complex.ofReal_div]
    ring
  rw [he, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hlog]
  have ht : ‖LSeries.term actualMangoldtCoefficients ((c:ℂ)+(t:ℂ)*I) n‖ =
      ‖LSeries.term actualMangoldtCoefficients (c:ℂ) n‖ := by
    simp [LSeries.norm_term_eq]
  rw [ht]
  exact div_le_div_of_nonneg_left (norm_nonneg _) hl2 hlo

/-- The literal finite potential is uniformly bounded by the genuine initial Dirichlet mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualEulerLogarithmicPrimitive/Variant4540bf6ca716d58cecc7be531ccdb029699c1bc4e28941f8e59473f47659a2bf.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ec0b0cfb7294392f1e40e395d02ead1e05686674` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

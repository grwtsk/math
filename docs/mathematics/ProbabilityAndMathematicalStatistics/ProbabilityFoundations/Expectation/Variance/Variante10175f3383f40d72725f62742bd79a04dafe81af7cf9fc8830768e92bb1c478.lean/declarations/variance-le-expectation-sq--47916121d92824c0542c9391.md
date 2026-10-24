# variance_le_expectation_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7543f2e9-e8eb-a1c0-0c7c-851464091c3b",
  "kind": "theorem",
  "lexical_name": "variance_le_expectation_sq",
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
  "slug": "variance-le-expectation-sq--47916121d92824c0542c9391",
  "source": {
    "blob": "34a4c6fa3818b09f2413169a1f56da463914c95a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 230,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47916121d92824c0542c9391d2aea9dc0ca9e6643a4dd3af0181dbd17ee73d52",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7543f2e9-e8eb-a1c0-0c7c-851464091c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem variance_le_expectation_sq [@IsProbabilityMeasure Ω _ ℙ] {X : Ω → ℝ}
    (hm : AEStronglyMeasurable X ℙ) : Var[X] ≤ 𝔼[X ^ 2] := by
  by_cases hX : Memℒp X 2
  · rw [variance_def' hX]
    simp only [sq_nonneg, sub_le_self_iff]
  rw [variance, evariance_eq_lintegral_ofReal, ← integral_eq_lintegral_of_nonneg_ae]
  by_cases hint : Integrable X; swap
  · simp only [integral_undef hint, Pi.pow_apply, Pi.sub_apply, sub_zero]
    exact le_rfl
  · rw [integral_undef]
    · exact integral_nonneg fun a => sq_nonneg _
    · intro h
      have A : Memℒp (X - fun ω : Ω => 𝔼[X]) 2 ℙ :=
        (memℒp_two_iff_integrable_sq (hint.aestronglyMeasurable.sub aestronglyMeasurable_const)).2 h
      have B : Memℒp (fun _ : Ω => 𝔼[X]) 2 ℙ := memℒp_const _
      apply hX
      convert A.add B
      simp
  · exact @ae_of_all _ (_) _ _ fun x => sq_nonneg _
  · exact (AEMeasurable.pow_const (hm.aemeasurable.sub_const _) _).aestronglyMeasurable
#align probability_theory.variance_le_expectation_sq ProbabilityTheory.variance_le_expectation_sq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Variance/Variante10175f3383f40d72725f62742bd79a04dafe81af7cf9fc8830768e92bb1c478.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34a4c6fa3818b09f2413169a1f56da463914c95a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

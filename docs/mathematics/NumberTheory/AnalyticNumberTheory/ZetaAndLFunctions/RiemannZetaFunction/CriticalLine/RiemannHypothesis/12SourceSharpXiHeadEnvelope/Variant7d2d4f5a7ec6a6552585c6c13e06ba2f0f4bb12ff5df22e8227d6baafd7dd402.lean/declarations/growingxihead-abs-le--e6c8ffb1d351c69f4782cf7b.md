# growingXiHead_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59d9a0cf-0654-5edb-af9e-f245f91677b6",
  "kind": "theorem",
  "lexical_name": "growingXiHead_abs_le",
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
  "slug": "growingxihead-abs-le--e6c8ffb1d351c69f4782cf7b",
  "source": {
    "blob": "82c26f10712369d24a3cd165ec9b300934ed03c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant7d2d4f5a7ec6a6552585c6c13e06ba2f0f4bb12ff5df22e8227d6baafd7dd402.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c8ffb1d351c69f4782cf7bb4162b693d7999e9d50f1a74e2cee44644e5b9d4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant7d2d4f5a7ec6a6552585c6c13e06ba2f0f4bb12ff5df22e8227d6baafd7dd402.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59d9a0cf-0654-5edb-af9e-f245f91677b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem growingXiHead_abs_le {A : ℝ} (hA : 91 ≤ A) :
    |growingXiHead A| ≤ sharpGrowingXiHeadCost A := by
  obtain ⟨hL, hH, hHA⟩ := floor_head_orders hA
  have hh := actual_f7_head_abs_le hA hL (hH.trans hHA)
  have hp : 0 < A := by linarith
  have hlog : 0 ≤ Real.log (⌊A ^ 2⌋₊ : ℝ) :=
    (Real.log_nonneg (by norm_num : (1 : ℝ) ≤ 7)).trans hL
  have hla : 0 ≤ Real.log A := Real.log_nonneg (by linarith)
  have hex : Real.exp (Real.log (⌊A ^ 2⌋₊ : ℝ) / 2) ≤ A := by
    simpa only [Real.exp_log hp] using Real.exp_le_exp.mpr
      (show Real.log (⌊A ^ 2⌋₊ : ℝ) / 2 ≤ Real.log A by linarith)
  have hprod := mul_le_mul hH hex (Real.exp_pos _).le (by positivity : 0 ≤ 2 * Real.log A)
  have he := mul_le_mul_of_nonneg_left hprod
    (div_nonneg (mul_nonneg (by norm_num : (0 : ℝ) ≤ 10) coefficient_nonneg) (sq_nonneg A))
  change |growingXiHead A| ≤ _ at hh
  exact hh.trans (by
    unfold sharpGrowingXiHeadCost
    convert he using 1
    all_goals field_simp
    all_goals ring)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant7d2d4f5a7ec6a6552585c6c13e06ba2f0f4bb12ff5df22e8227d6baafd7dd402.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/12SourceSharpXiHeadEnvelope/Variant7d2d4f5a7ec6a6552585c6c13e06ba2f0f4bb12ff5df22e8227d6baafd7dd402.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82c26f10712369d24a3cd165ec9b300934ed03c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

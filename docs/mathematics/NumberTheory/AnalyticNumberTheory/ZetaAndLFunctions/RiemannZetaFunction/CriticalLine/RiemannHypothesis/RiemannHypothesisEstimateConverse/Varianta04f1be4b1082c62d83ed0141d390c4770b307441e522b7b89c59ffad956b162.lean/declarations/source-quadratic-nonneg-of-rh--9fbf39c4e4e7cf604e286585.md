# source_quadratic_nonneg_of_rh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "053ae6c50d4af083f310456c897abbd85e19cf12",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:16a3d6aa-7d00-3b99-c17c-fa35f5fe3078",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:297d2895-f796-95cb-02c8-67b9be4929c9",
  "kind": "theorem",
  "lexical_name": "source_quadratic_nonneg_of_rh",
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
  "slug": "source-quadratic-nonneg-of-rh--9fbf39c4e4e7cf604e286585",
  "source": {
    "blob": "053ae6c50d4af083f310456c897abbd85e19cf12",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Varianta04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fbf39c4e4e7cf604e286585a1840dd88d185d4c9da31c79b843d285b81ac43c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Varianta04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:297d2895-f796-95cb-02c8-67b9be4929c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_quadratic_nonneg_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A := by
  obtain ⟨_, _, hs, hscale, hform⟩ := ZeroSide.Assembly.zero_side_identity A hA
  have hi (o : ZeroOccurrence) : (bilateralTransform A (shiftedValue o)).im = 0 :=
    actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
  have hn : 0 ≤ (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2).re := by
    rw [Complex.re_tsum hs]
    apply tsum_nonneg
    intro o
    simp only [pow_two, Complex.mul_re, hi o, mul_zero, sub_zero]
    exact mul_self_nonneg _
  have he := congrArg Complex.re (hscale.trans hform)
  simp only [Complex.ofReal_re] at he
  rw [← he] at hn
  exact (mul_nonneg_iff_of_pos_left (source_normalization_pos A hA)).mp hn

/-- The unchanged all-real-radius estimate follows from RH with constant zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Varianta04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RiemannHypothesisEstimateConverse/Varianta04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053ae6c50d4af083f310456c897abbd85e19cf12` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

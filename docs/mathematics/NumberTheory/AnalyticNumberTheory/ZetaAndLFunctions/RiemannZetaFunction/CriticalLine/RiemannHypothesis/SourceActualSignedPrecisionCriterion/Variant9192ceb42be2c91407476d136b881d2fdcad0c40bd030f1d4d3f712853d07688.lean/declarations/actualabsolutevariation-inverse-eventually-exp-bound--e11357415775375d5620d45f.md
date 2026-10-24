# actualAbsoluteVariation_inverse_eventually_exp_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6dba4ec-0c58-fe99-c484-14de92265006",
  "kind": "theorem",
  "lexical_name": "actualAbsoluteVariation_inverse_eventually_exp_bound",
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
  "slug": "actualabsolutevariation-inverse-eventually-exp-bound--e11357415775375d5620d45f",
  "source": {
    "blob": "5b56037408fa2a16cac527118edee016ce50f158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 111,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9192ceb42be2c91407476d136b881d2fdcad0c40bd030f1d4d3f712853d07688.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e11357415775375d5620d45f7c321d2552155044f200da7f61301d95c850b48e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9192ceb42be2c91407476d136b881d2fdcad0c40bd030f1d4d3f712853d07688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6dba4ec-0c58-fe99-c484-14de92265006`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAbsoluteVariation_inverse_eventually_exp_bound :
    ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      0 < actualClosedAbsolutePrimeMoment A ∧
        1 / actualClosedAbsolutePrimeMoment A ≤
          2 * A ^ 9 * Real.exp (-A) / actualNegativeEdgeConstant := by
  obtain ⟨R,hR,hv⟩ := actualClosedAbsolutePrimeMoment_eventually_lower
  have hc := actualNegativeEdgeConstant_pos
  refine ⟨R,by linarith,?_⟩
  intro A hA
  have hAp : 0 < A := by linarith
  have hmass := hv A hA
  have hl : 0 < (actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9 := by positivity
  refine ⟨hl.trans_le hmass,?_⟩
  calc
    _ ≤ 1 / ((actualNegativeEdgeConstant / 2) * Real.exp A / A ^ 9) :=
      div_le_div₀ (by norm_num : (0 : ℝ) ≤ 1) le_rfl hl hmass
    _ = _ := by
      rw [Real.exp_neg]
      field_simp

/-- A cap would imply this weaker exponential fraction budget; it supplies no cap. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9192ceb42be2c91407476d136b881d2fdcad0c40bd030f1d4d3f712853d07688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualSignedPrecisionCriterion/Variant9192ceb42be2c91407476d136b881d2fdcad0c40bd030f1d4d3f712853d07688.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b56037408fa2a16cac527118edee016ce50f158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

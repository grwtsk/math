# integral_weighted_correlation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "01c8d867e911d4db3a7ba107d6ef490d4f5fd4ec",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 100,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:48066bb6-5a77-3a9b-53e0-69e072c07c04",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae1e2a26-cf58-216b-ba3c-17a9ada6fb6a",
  "kind": "theorem",
  "lexical_name": "integral_weighted_correlation",
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
  "slug": "integral-weighted-correlation--be6906ad2349e76473cec684",
  "source": {
    "blob": "01c8d867e911d4db3a7ba107d6ef490d4f5fd4ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 100,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:be6906ad2349e76473cec684b83fe6ff8d4c1218df49b5531c19cc58692c18d1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae1e2a26-cf58-216b-ba3c-17a9ada6fb6a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_weighted_correlation (t a b : ℝ) (ha : 1 ≤ a) (hab : a ≤ b)
    (ht : 0 ≤ t) (hta : t ≤ 2 * a) :
    (∫ A in a..b, scaleWeight A * sourceCorrelation explicitSecondDerivative A t) =
      scalePrimitive b t - scalePrimitive a t := by
  have he : (∫ A in a..b, scaleWeight A * sourceCorrelation explicitSecondDerivative A t) =
      ∫ A in a..b, scalePolynomial A t := by
    apply intervalIntegral.integral_congr
    intro A hA
    rw [uIcc_of_le hab] at hA
    exact (scalePolynomial_eq_source A t (ha.trans hA.1) ht (by linarith [hA.1])).symm
  rw [he]
  apply intervalIntegral.integral_eq_sub_of_hasDerivAt
  · intro A _
    exact scalePrimitive_hasDerivAt A t
  · exact (by unfold scalePolynomial; fun_prop :
      Continuous (fun A ↦ scalePolynomial A t)).intervalIntegrable _ _

/-- The original normalization has an explicit uniform upper bound for real scale at least one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantbbb15015b4954edac78e697c363a22e369a6ea99845b33bed75bdd57230488a4.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01c8d867e911d4db3a7ba107d6ef490d4f5fd4ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

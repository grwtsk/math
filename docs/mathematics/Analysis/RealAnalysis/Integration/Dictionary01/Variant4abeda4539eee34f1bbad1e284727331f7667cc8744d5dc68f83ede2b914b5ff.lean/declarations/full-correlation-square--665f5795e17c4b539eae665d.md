# full_correlation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3335c323-012c-814e-5bb9-f4bc1a61c086",
  "kind": "theorem",
  "lexical_name": "full_correlation_square",
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
  "slug": "full-correlation-square--665f5795e17c4b539eae665d",
  "source": {
    "blob": "a76695226ac85bcd65261c1583e0d6761fda3f0c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Dictionary01/Variant4abeda4539eee34f1bbad1e284727331f7667cc8744d5dc68f83ede2b914b5ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:665f5795e17c4b539eae665d4cb610a5a23ec5ba67488fb777e242224b83219f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Dictionary01/Variant4abeda4539eee34f1bbad1e284727331f7667cc8744d5dc68f83ede2b914b5ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3335c323-012c-814e-5bb9-f4bc1a61c086`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_correlation_square (A : ℝ) (hA : 1 ≤ A) (σ : ℝ) :
    (∫ t : ℝ, Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) =
      normalizedSquare A σ := by
  have hp := weighted_normalizedTest_integrable A σ hA
  have hn := weighted_normalizedTest_integrable A (-σ) hA
  have hs := weighted_correlation_integral (normalizedTest explicitSecondDerivative A) σ hp hn
  have he : (∫ x : ℝ, Real.exp ((-σ)*x)*normalizedTest explicitSecondDerivative A x) =
      ∫ x : ℝ, Real.exp (σ*x)*normalizedTest explicitSecondDerivative A x := by
    have h := integral_neg_eq_self (fun x : ℝ => Real.exp ((-σ)*x)*normalizedTest explicitSecondDerivative A x) volume
    simpa only [neg_mul_neg,actual_normalized_even A hA] using h.symm
  change (∫ t : ℝ, Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) = _ at hs
  rw [hs,he]
  have hq := real_transform_dictionary A σ
  unfold normalizedSquare
  rw [← hq,← Complex.ofReal_pow,Complex.ofReal_re]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Dictionary01/Variant4abeda4539eee34f1bbad1e284727331f7667cc8744d5dc68f83ede2b914b5ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Dictionary01/Variant4abeda4539eee34f1bbad1e284727331f7667cc8744d5dc68f83ede2b914b5ff.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a76695226ac85bcd65261c1583e0d6761fda3f0c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

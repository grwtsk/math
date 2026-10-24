# full_correlation_square

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0fd5f18-467c-d28b-6586-e8076dcd0a81",
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
  "slug": "full-correlation-square--bb5687eb4c66b71d0aba21bd",
  "source": {
    "blob": "79fe83c650f955903e0db131f1734544ce09561c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variantac0db847f6fda71d72c6040eeffbd46e7b1344957e155d546e4f39c05b25d5da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb5687eb4c66b71d0aba21bd4980c48b27b20b1b3ab5e9f8fdc7cacf712cba38",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variantac0db847f6fda71d72c6040eeffbd46e7b1344957e155d546e4f39c05b25d5da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0fd5f18-467c-d28b-6586-e8076dcd0a81`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–59.

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
    have heven (x : ℝ) := actual_normalized_even A hA x
    simpa only [neg_mul_neg,heven] using h.symm
  change (∫ t : ℝ, Real.exp (σ*t)*sourceCorrelation explicitSecondDerivative A t) = _ at hs
  rw [hs,he]
  have hq := real_transform_dictionary A σ
  unfold normalizedSquare
  rw [← hq,← Complex.ofReal_pow,Complex.ofReal_re]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variantac0db847f6fda71d72c6040eeffbd46e7b1344957e155d546e4f39c05b25d5da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ActualMomentDictionary/Variantac0db847f6fda71d72c6040eeffbd46e7b1344957e155d546e4f39c05b25d5da.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fe83c650f955903e0db131f1734544ce09561c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

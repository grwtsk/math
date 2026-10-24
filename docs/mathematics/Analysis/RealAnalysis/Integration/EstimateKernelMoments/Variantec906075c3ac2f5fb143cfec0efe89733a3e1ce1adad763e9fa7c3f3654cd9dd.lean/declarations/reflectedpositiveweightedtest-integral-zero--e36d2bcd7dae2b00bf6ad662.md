# reflectedPositiveWeightedTest_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2922c33b-8ef3-5212-ceca-a2141406f4a2",
  "kind": "theorem",
  "lexical_name": "reflectedPositiveWeightedTest_integral_zero",
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
  "slug": "reflectedpositiveweightedtest-integral-zero--e36d2bcd7dae2b00bf6ad662",
  "source": {
    "blob": "1d128e14ef5f0066e7ba5687f40b0215c225a292",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 166,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e36d2bcd7dae2b00bf6ad6627f65085731f962d9d8ee46536dddb965e27bdf7a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2922c33b-8ef3-5212-ceca-a2141406f4a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedPositiveWeightedTest_integral_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, reflectedPositiveWeightedTest A x) = 0 := by
  calc
    (∫ x, reflectedPositiveWeightedTest A x) =
        ∫ x,
          Real.exp (-x / 2) *
            normalizedTest explicitSecondDerivative A x := by
      have h :=
        integral_neg_eq_self
          (fun x : ℝ =>
            Real.exp (-x / 2) *
              normalizedTest explicitSecondDerivative A x)
          volume
      simpa [reflectedPositiveWeightedTest] using h
    _ = 0 :=
      CorrelationMoment.negative_pole_zero A hA

/-- Multiplication by the convolution output splits exactly between its two
input coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variantec906075c3ac2f5fb143cfec0efe89733a3e1ce1adad763e9fa7c3f3654cd9dd.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d128e14ef5f0066e7ba5687f40b0215c225a292` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

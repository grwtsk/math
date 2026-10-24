# doubleSumReindexing_to_cyclicConvolutionL1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e2fc60e-6bac-49ab-ce64-de7d57ae2352",
  "kind": "theorem",
  "lexical_name": "doubleSumReindexing_to_cyclicConvolutionL1",
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
  "slug": "doublesumreindexing-to-cyclicconvolutionl1--97a923cda11edecc7c7f6b47",
  "source": {
    "blob": "51fb8f589dcfcb749215ab53b460a1a65563132c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 134,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97a923cda11edecc7c7f6b47632eafb93376c32adad6bb2cacedbe4b0b747c50",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e2fc60e-6bac-49ab-ce64-de7d57ae2352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem doubleSumReindexing_to_cyclicConvolutionL1
    (hreindex : CyclicConvolutionDoubleSumReindexingClaim) :
    CyclicConvolutionL1ByTranslationClaim := by
  intro X N m hreg
  unfold cyclicFejerSharpStepL1Error
  calc
    (∑ x : ZMod (fejerOctavePeriod X),
      |cyclicSharpPrefixIndicator X m x -
        cyclicFejerSmoothedPrefix X N m x|)
      ≤
      ∑ x : ZMod (fejerOctavePeriod X),
        ∑ y : ZMod (fejerOctavePeriod X),
          cyclicFejerKernel X N (x - y) *
            |cyclicSharpPrefixIndicator X m x -
              cyclicSharpPrefixIndicator X m y| := by
                exact Finset.sum_le_sum fun x hx =>
                  cyclicFejer_pointwise_error_le_translation_average hreg x
    _ =
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r :=
            hreindex X N m hreg

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51fb8f589dcfcb749215ab53b460a1a65563132c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

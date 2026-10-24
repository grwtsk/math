# cyclicFejerSharpStepL1Error_le_distanceWeightedKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dcd160a1-0f4a-37b2-5d77-b44f441c5269",
  "kind": "theorem",
  "lexical_name": "cyclicFejerSharpStepL1Error_le_distanceWeightedKernel",
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
  "slug": "cyclicfejersharpstepl1error-le-distanceweightedkernel--10bae248b76bc61087007b07",
  "source": {
    "blob": "36d97fcf12f5abb54457d21c6cf2457bdb162619",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 17,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10bae248b76bc61087007b07b20306e234997dd9e39964a97f693526e298f0b6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dcd160a1-0f4a-37b2-5d77-b44f441c5269`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclicFejerSharpStepL1Error_le_distanceWeightedKernel
    {X N m : ℕ}
    (hreg : NonAliasingFejerCutoffRegime X N)
    (hm0 : 2 * X ≤ m)
    (hm1 : m ≤ 4 * X) :
    cyclicFejerSharpStepL1Error X N m ≤
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          (2 * cyclicFejerDistance X r : ℕ) := by
  have hconv :=
    cyclicConvolutionL1ByTranslation X N m hreg
  calc
    cyclicFejerSharpStepL1Error X N m
      ≤
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          cyclicSharpTranslationL1 X m r := hconv
    _ ≤
      ∑ r : ZMod (fejerOctavePeriod X),
        cyclicFejerKernel X N r *
          (2 * cyclicFejerDistance X r : ℕ) := by
            apply Finset.sum_le_sum
            intro r hr
            exact mul_le_mul_of_nonneg_left
              (cyclicSharpTranslationCardinality X m
                (by
                  rcases hreg with ⟨hX, hN, hNL⟩
                  exact hX)
                hm0 hm1 r)
              (cyclicFejerKernel_nonnegative hreg r)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36d97fcf12f5abb54457d21c6cf2457bdb162619` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

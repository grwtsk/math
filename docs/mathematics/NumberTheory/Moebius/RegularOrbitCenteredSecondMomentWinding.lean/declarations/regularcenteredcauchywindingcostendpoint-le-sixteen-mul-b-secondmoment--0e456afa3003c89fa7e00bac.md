# regularCenteredCauchyWindingCostEndpoint_le_sixteen_mul_b_secondMoment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9393b73-9330-59d5-1b8b-ee2ef57698bd",
  "kind": "theorem",
  "lexical_name": "regularCenteredCauchyWindingCostEndpoint_le_sixteen_mul_b_secondMoment",
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
  "slug": "regularcenteredcauchywindingcostendpoint-le-sixteen-mul-b-secondmoment--0e456afa3003c89fa7e00bac",
  "source": {
    "blob": "e44ebebb57ac3f6f8eda89dc83abcfaeede76d95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 59,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e456afa3003c89fa7e00bac6751dac2001247b937cb557162f9620db9a78fe0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9393b73-9330-59d5-1b8b-ee2ef57698bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularCenteredCauchyWindingCostEndpoint_le_sixteen_mul_b_secondMoment
    (b : ℕ) :
    regularCenteredCauchyWindingCostEndpoint b ≤
      16 * (b : ℝ) * regularCenteredFourFamilySecondMoment b := by
  unfold regularCenteredCauchyWindingCostEndpoint
    regularCenteredCauchyWindingCostAtModulus
  have hM : 0 ≤ regularCenteredFourFamilySecondMoment b := by
    unfold regularCenteredFourFamilySecondMoment parityCenteredIntegerCoordinateSecondMoment
    positivity
  calc
    _ ≤ ∑ d ∈ effectiveEndpointSquareModulusSet b,
        8 * ((b : ℝ) * (((d : ℝ) ^ 2)⁻¹)) *
          regularCenteredFourFamilySecondMoment b := by
      apply Finset.sum_le_sum
      intro d hdmem
      have hdpos : 0 < d :=
        (Finset.mem_Ico.mp (Finset.mem_filter.mp hdmem).1).1
      let : NeZero d := ⟨ne_of_gt hdpos⟩
      exact mul_le_mul_of_nonneg_right
        (mul_le_mul_of_nonneg_left
          (centeredWindingRadius_cast_le_b_mul_reciprocalSquare b d)
          (by norm_num))
        hM
    _ = 8 * (b : ℝ) * regularCenteredFourFamilySecondMoment b *
        (∑ d ∈ effectiveEndpointSquareModulusSet b,
          (((d : ℝ) ^ 2)⁻¹)) := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro d _
      ring
    _ ≤ 8 * (b : ℝ) * regularCenteredFourFamilySecondMoment b * 2 := by
      exact mul_le_mul_of_nonneg_left
        (effectiveSquareModulusReciprocalSquareMass_le_two b)
        (by positivity)
    _ = 16 * (b : ℝ) * regularCenteredFourFamilySecondMoment b := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredSecondMomentWinding.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e44ebebb57ac3f6f8eda89dc83abcfaeede76d95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

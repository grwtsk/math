# actualCenteredPrimePhase_density_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51f37312-b729-9f00-011b-8475483b85a0",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrimePhase_density_le",
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
  "slug": "actualcenteredprimephase-density-le--fe70804cefd418278e204741",
  "source": {
    "blob": "8871d1c4e6fb2ab6646f6d8f374d612411f99a8a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 105,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe70804cefd418278e20474147980c30b3fdffd30d5b1921275dcea9ba0a5677",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f37312-b729-9f00-011b-8475483b85a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrimePhase_density_le (A c t : ℝ) :
    (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).im *
        actualClosedPrimeSineComponent A c t -
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re *
        actualClosedPrimeCosineDeficit A c t ≤
      actualClosedPrimeLogMass A c *
        (‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ -
          (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re) := by
  have he : (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).im *
        actualClosedPrimeSineComponent A c t -
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re *
        actualClosedPrimeCosineDeficit A c t =
      (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I) *
        actualClosedPrimeLogPotential A ((c : ℂ)+(t : ℂ)*I)).re -
      actualClosedPrimeLogMass A c *
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re := by
    simp only [actualClosedPrimeCosineDeficit, actualClosedPrimeSineComponent,
      actualClosedPrimeLogMass, Complex.sub_re, Complex.sub_im,
      potential_at_real_im, sub_zero, Complex.mul_re]
    ring
  rw [he]
  calc
    _ ≤ ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I) *
        actualClosedPrimeLogPotential A ((c : ℂ)+(t : ℂ)*I)‖ -
      actualClosedPrimeLogMass A c *
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re :=
      sub_le_sub_right (Complex.re_le_norm _) _
    _ ≤ ‖actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)‖ *
        actualClosedPrimeLogMass A c -
      actualClosedPrimeLogMass A c *
        (actualEulerMellinSlope A ((c : ℂ)+(t : ℂ)*I)).re := by
      rw [norm_mul]
      exact sub_le_sub_right (mul_le_mul_of_nonneg_left
        (actualClosedPrimeLogPotential_norm_le_mass A c t) (norm_nonneg _)) _
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variantb65978e54a8108d4a395fc711a279238d233499c8fc489234120421a83f760ee.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8871d1c4e6fb2ab6646f6d8f374d612411f99a8a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

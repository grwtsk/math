# regularShiftParityResidueEndpointMajorant_le_frequencyL2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac3652fd-34f0-1ebf-60b1-22c621fd1cd7",
  "kind": "theorem",
  "lexical_name": "regularShiftParityResidueEndpointMajorant_le_frequencyL2",
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
  "slug": "regularshiftparityresidueendpointmajorant-le-frequencyl2--7e69aeb75602a3c2e5cbeff6",
  "source": {
    "blob": "f51caa56d98e3cbd37bbb051cb3f63855021b82b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 160,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e69aeb75602a3c2e5cbeff6ca1a96b472d0f896b2c9c6f35a1753081b499e35",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac3652fd-34f0-1ebf-60b1-22c621fd1cd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regularShiftParityResidueEndpointMajorant_le_frequencyL2
    (b : ℕ) :
    twoNonunitRegularShiftParityResidueEndpointMajorant b ≤
      twoNonunitRegularShiftParityFrequencyL2EndpointMajorant b := by
  unfold twoNonunitRegularShiftParityResidueEndpointMajorant
    twoNonunitRegularShiftParityFrequencyL2EndpointMajorant
  apply Finset.sum_le_sum
  intro d hd
  have hdpos :
      0 < d := (Finset.mem_Ico.mp (Finset.mem_filter.mp hd).1).1
  simp only [dif_pos hdpos]
  let : NeZero d := ⟨ne_of_gt hdpos⟩
  by_cases hNonunit : TwoNonunitSquareModulusParameter d
  · simp only [hNonunit, dif_pos]
    have hsum :=
      sum_regularShiftParityResidueFourierMajorant_le_l2 b d
    have hdreal : 0 < (d : ℝ) := by exact_mod_cast hdpos
    calc
      (((d * d : ℕ) : ℝ))⁻¹ *
          (∑ k ∈ twoKernelRegularOrbitRepresentativeSet d,
            twoNonunitRegularShiftParityResidueFourierMajorant b d k)
          ≤
        (((d * d : ℕ) : ℝ))⁻¹ *
          ((d : ℝ) *
            twoNonunitRegularShiftParityFrequencyL2Majorant b d) := by
              exact mul_le_mul_of_nonneg_left hsum (by positivity)
      _ = ((d : ℝ))⁻¹ *
          twoNonunitRegularShiftParityFrequencyL2Majorant b d := by
            push_cast
            field_simp
  · simp [hNonunit]

/-- Natural-scale supplier for the canonical regular-frequency L2 endpoint
surface.  No value is constructed here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitFrequencyL2Reduction.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f51caa56d98e3cbd37bbb051cb3f63855021b82b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

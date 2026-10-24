# normalized_nonzero_parityFourierEnergy_eq_residueVariance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daf47a0c-66ab-ca21-4280-629a1956588e",
  "kind": "theorem",
  "lexical_name": "normalized_nonzero_parityFourierEnergy_eq_residueVariance",
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
  "slug": "normalized-nonzero-parityfourierenergy-eq-residuevariance--8c0422e95ede2269143a601c",
  "source": {
    "blob": "2014e78cd3486736ca7ad3be6001ba99a09f6798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 202,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c0422e95ede2269143a601ccaf2324a0904f3c40d69fc7d1f48dedce272ca92",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daf47a0c-66ab-ca21-4280-629a1956588e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalized_nonzero_parityFourierEnergy_eq_residueVariance
    (b d r : ℕ) [NeZero d] :
    (((d * d : ℕ) : ℝ))⁻¹ *
      (∑ k ∈ nonzeroSquareModulusFrequencySet d,
        ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2) =
      parityMertensResidueVariance b d r := by
  classical
  have hfull :=
    sum_norm_sq_parityOnePointMobiusFourierSum b d r
  have hsplit :
      (∑ k : ZMod (d * d),
        ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2) =
      ‖parityOnePointMobiusFourierSum b d r
        (0 : ZMod (d * d))‖ ^ 2 +
      ∑ k ∈ nonzeroSquareModulusFrequencySet d,
        ‖parityOnePointMobiusFourierSum b d r k‖ ^ 2 := by
    rw [Finset.sum_eq_sum_sdiff_singleton_add
      (Finset.mem_univ (0 : ZMod (d * d)))]
    simp [nonzeroSquareModulusFrequencySet, add_comm]
  rw [hsplit, parityOnePointMobiusFourierSum_zero] at hfull
  unfold parityMertensResidueVariance
  have hq : (((d * d : ℕ) : ℝ)) ≠ 0 := by
    exact_mod_cast mul_ne_zero (NeZero.ne d) (NeZero.ne d)
  rw [Complex.norm_real, Real.norm_eq_abs, sq_abs] at hfull
  field_simp [hq]
  nlinarith [hfull]

/-- Residue variance is nonnegative because it is a normalized sum of squared
nonzero Fourier coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2014e78cd3486736ca7ad3be6001ba99a09f6798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

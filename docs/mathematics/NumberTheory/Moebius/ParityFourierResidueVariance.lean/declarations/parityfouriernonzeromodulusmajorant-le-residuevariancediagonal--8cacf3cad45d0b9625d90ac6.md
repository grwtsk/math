# parityFourierNonzeroModulusMajorant_le_residueVarianceDiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c398f01-982d-dc8a-dc97-a3e2864a3495",
  "kind": "theorem",
  "lexical_name": "parityFourierNonzeroModulusMajorant_le_residueVarianceDiagonal",
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
  "slug": "parityfouriernonzeromodulusmajorant-le-residuevariancediagonal--8cacf3cad45d0b9625d90ac6",
  "source": {
    "blob": "2014e78cd3486736ca7ad3be6001ba99a09f6798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 326,
    "line": 285,
    "path": "GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cacf3cad45d0b9625d90ac656b9fc9559727be41e8e9dbfe3112c5322600a7f",
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

Occurrence: `result:6c398f01-982d-dc8a-dc97-a3e2864a3495`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–326.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityFourierNonzeroModulusMajorant_le_residueVarianceDiagonal
    (b d : ℕ) [NeZero d] :
    parityFourierNonzeroModulusMajorant b d ≤
      parityResidueVarianceDiagonalModulusMajorant b d := by
  unfold parityFourierNonzeroModulusMajorant
    parityResidueVarianceDiagonalModulusMajorant
    paritySquarefreeDiagonalNonzeroFourierL1
  have hqnonneg :
      0 ≤ (((d * d : ℕ) : ℝ))⁻¹ := by positivity
  calc
    (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          parityFourierQuadraticMajorant b d k ≤
      (((d * d : ℕ) : ℝ))⁻¹ *
        ∑ k ∈ nonzeroSquareModulusFrequencySet d,
          (1 / 2 : ℝ) *
            (‖parityOnePointMobiusFourierSum b d 0 k‖ ^ 2 +
              ‖parityOnePointMobiusFourierSum b d 1 k‖ ^ 2 +
              ‖parityOnePointMobiusFourierDiagonal b d 0 k‖ +
              ‖parityOnePointMobiusFourierDiagonal b d 1 k‖) := by
          apply mul_le_mul_of_nonneg_left ?_ hqnonneg
          apply Finset.sum_le_sum
          intro k _hk
          exact parityFourierQuadraticMajorant_le_energy_add_diagonal b d k
    _ = (1 / 2 : ℝ) *
        (parityMertensResidueVariance b d 0 +
          parityMertensResidueVariance b d 1 +
          (((d * d : ℕ) : ℝ))⁻¹ *
            ∑ k ∈ nonzeroSquareModulusFrequencySet d,
              ‖parityOnePointMobiusFourierDiagonal b d 0 k‖ +
          (((d * d : ℕ) : ℝ))⁻¹ *
            ∑ k ∈ nonzeroSquareModulusFrequencySet d,
              ‖parityOnePointMobiusFourierDiagonal b d 1 k‖) := by
          rw [← normalized_nonzero_parityFourierEnergy_eq_residueVariance
              b d 0,
            ← normalized_nonzero_parityFourierEnergy_eq_residueVariance
              b d 1]
          simp only [Finset.mul_sum, mul_add, Finset.sum_add_distrib]
          ring_nf

/-- Endpoint aggregate expressed through residue variance and the separate
squarefree-diagonal nonzero-frequency L1 term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ParityFourierResidueVariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ParityFourierResidueVariance.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2014e78cd3486736ca7ad3be6001ba99a09f6798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

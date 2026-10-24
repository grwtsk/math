# finite_transverseNatCharacter_Ico_norm_le_two_mul_invMultiplier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fbe95b7-1169-2699-d384-21e920890eb7",
  "kind": "theorem",
  "lexical_name": "finite_transverseNatCharacter_Ico_norm_le_two_mul_invMultiplier",
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
  "slug": "finite-transversenatcharacter-ico-norm-le-two-mul-invmultiplier--9de61a2286c5f55eefef86b3",
  "source": {
    "blob": "64f490dc18a0e344c1cf99964cc3df081447714e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 389,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9de61a2286c5f55eefef86b3ec584852cad3c55dae48149f80e7f4e205957d9b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fbe95b7-1169-2699-d384-21e920890eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 389–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_transverseNatCharacter_Ico_norm_le_two_mul_invMultiplier
    (j : ℕ)
    (t : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (A B : ℕ)
    (hA : 1 ≤ A)
    (ht : t ≠ 0) :
    ‖∑ n ∈ Finset.Ico A B,
        coreGrowingShiftEndpointTransverseNatCharacter j t n‖ ≤
      2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ := by
  by_cases hAB : A ≤ B
  · have hm : coreGrowingShiftEndpointTransverseMultiplier j t ≠ 0 :=
      coreGrowingShiftEndpointTransverseMultiplier_ne_zero ht
    have hid :=
      finite_transverseNatCharacter_Ico_multiplier_identity
        j t A B hA hAB
    have hrewrite :
        (∑ n ∈ Finset.Ico A B,
          coreGrowingShiftEndpointTransverseNatCharacter j t n) =
        (coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
          (coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
            coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)) := by
      calc
        (∑ n ∈ Finset.Ico A B,
          coreGrowingShiftEndpointTransverseNatCharacter j t n) =
            1 * (∑ n ∈ Finset.Ico A B,
              coreGrowingShiftEndpointTransverseNatCharacter j t n) := by ring
        _ = ((coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
              coreGrowingShiftEndpointTransverseMultiplier j t) *
            (∑ n ∈ Finset.Ico A B,
              coreGrowingShiftEndpointTransverseNatCharacter j t n) := by
                rw [inv_mul_cancel₀ hm]
        _ = (coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹ *
            (coreGrowingShiftEndpointTransverseMultiplier j t *
              ∑ n ∈ Finset.Ico A B,
                coreGrowingShiftEndpointTransverseNatCharacter j t n) := by ring
        _ = _ := by rw [hid]
    rw [hrewrite, norm_mul]
    have hcharNorm (n : ℕ) :
        ‖coreGrowingShiftEndpointTransverseNatCharacter j t n‖ = 1 := by
      unfold coreGrowingShiftEndpointTransverseNatCharacter
      rw [ZMod.stdAddChar_apply]
      simp
    calc
      ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ *
          ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
            coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ ≤
        ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ * 2 := by
          gcongr
          calc
            ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1) -
                coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ ≤
              ‖coreGrowingShiftEndpointTransverseNatCharacter j t (A - 1)‖ +
                ‖coreGrowingShiftEndpointTransverseNatCharacter j t (B - 1)‖ :=
              norm_sub_le _ _
            _ = 2 := by simp [hcharNorm]
      _ = 2 * ‖(coreGrowingShiftEndpointTransverseMultiplier j t)⁻¹‖ := by ring
  · have hempty : Finset.Ico A B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr (by omega)
    rw [hempty]
    simp [norm_nonneg]

/-- Pointwise off-fiber estimate for one endpoint fiber. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean#L389).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f490dc18a0e344c1cf99964cc3df081447714e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# finite_transverseCharacter_reciprocalDrop_Ico_summationByParts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff7aebca-ffd3-20e0-0b9f-e5782c78ee06",
  "kind": "theorem",
  "lexical_name": "finite_transverseCharacter_reciprocalDrop_Ico_summationByParts",
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
  "slug": "finite-transversecharacter-reciprocaldrop-ico-summationbyparts--88ad1cf8b5942ebe800489c5",
  "source": {
    "blob": "a89c5fd2b49b2b114202b08aa1062daff31b5944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 189,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88ad1cf8b5942ebe800489c5ccc0cd6243829a55e7ad53d779927ae4c9738926",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff7aebca-ffd3-20e0-0b9f-e5782c78ee06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_transverseCharacter_reciprocalDrop_Ico_summationByParts
    (j : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (q A B : ℕ)
    (hAB : A < B) :
    (∑ n ∈ Finset.Ico A B,
      coreGrowingShiftEndpointTransverseNatCharacter j u n *
        (coreGrowingShiftEndpointReciprocalDrop (n + q) : ℂ)) =
      coreGrowingShiftEndpointTransverseNatCharacter j u A *
          (((A + q : ℕ) : ℂ))⁻¹ -
        coreGrowingShiftEndpointTransverseNatCharacter j u (B - 1) *
          (((B + q : ℕ) : ℂ))⁻¹ -
        coreGrowingShiftEndpointTransverseMultiplier j u *
          ∑ n ∈ Finset.Ico (A + 1) B,
            coreGrowingShiftEndpointTransverseNatCharacter j u n *
              (((n + q : ℕ) : ℂ))⁻¹ := by
  have hsucc : A + 1 ≤ B := Nat.succ_le_iff.mpr hAB
  induction B, hsucc using Nat.le_induction with
  | base =>
      simp [coreGrowingShiftEndpointReciprocalDrop,
        coreGrowingShiftEndpointTransverseMultiplier]
      ring
  | succ B hABase ih =>
      have hAB' : A < B := by omega
      have hAIco : A ≤ B := Nat.le_of_lt hAB'
      have hsuccIco : A + 1 ≤ B := by omega
      rw [Finset.sum_Ico_succ_top hAIco,
        Finset.sum_Ico_succ_top hsuccIco, ih]
      have hchar :=
        coreGrowingShiftEndpointTransverseNatCharacter_succ_mul
          j u (B - 1)
      have hBm1 : B - 1 + 1 = B := by omega
      rw [hBm1] at hchar
      unfold coreGrowingShiftEndpointReciprocalDrop
        coreGrowingShiftEndpointTransverseMultiplier
      ring_nf at hchar ⊢
      linear_combination hchar * (((B + q : ℕ) : ℂ))⁻¹

/-- Fixed-difference first-coordinate transform of the explicit interior
reciprocal-drop kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89c5fd2b49b2b114202b08aa1062daff31b5944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

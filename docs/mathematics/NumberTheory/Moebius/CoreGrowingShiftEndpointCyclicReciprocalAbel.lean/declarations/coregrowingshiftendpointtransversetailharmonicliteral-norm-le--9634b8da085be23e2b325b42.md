# coreGrowingShiftEndpointTransverseTailHarmonicLiteral_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:634ba4a5-9ef4-558b-1d7f-373dbf3f9982",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseTailHarmonicLiteral_norm_le",
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
  "slug": "coregrowingshiftendpointtransversetailharmonicliteral-norm-le--9634b8da085be23e2b325b42",
  "source": {
    "blob": "5354bae776724ff721acaa8e4d4dab7d3a380abc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9634b8da085be23e2b325b4295693ee81409f0bf228bee18eef26e2857e20f11",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:634ba4a5-9ef4-558b-1d7f-373dbf3f9982`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseTailHarmonicLiteral_norm_le
    (j A B R : ℕ)
    (u : CoreGrowingShiftEndpointDoubledFourierIndex j)
    (hAB : A < B)
    (hu : u ≠ 0) :
    ‖∑ n ∈ Finset.Ico (A + 1) B,
        coreGrowingShiftEndpointTransverseNatCharacter j u n *
          (((n + R : ℕ) : ℂ))⁻¹‖ ≤
      (coreGrowingShiftEndpointDoubledFourierModulus j : ℝ) /
        (2 *
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) *
          ((((A + 1) + R : ℕ) : ℝ))) := by
  by_cases hstrict : A + 1 < B
  · simpa [div_eq_mul_inv] using
      coreGrowingShiftEndpointTransverseNatCharacter_reciprocal_Ico_norm_le
        j (A + 1) B R u (by omega) hstrict hu
  · have hEq : B = A + 1 := by omega
    subst B
    simp only [Finset.Ico_self, Finset.sum_empty, norm_zero]
    have hd0 :
        coreGrowingShiftEndpointTransverseCircularDistance j u ≠ 0 := by
      intro hd
      exact hu
        ((coreGrowingShiftEndpointTransverseCircularDistance_eq_zero_iff j u).mp
          hd)
    have hd :
        (0 : ℝ) <
          (coreGrowingShiftEndpointTransverseCircularDistance j u : ℝ) := by
      exact_mod_cast Nat.pos_of_ne_zero hd0
    positivity

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointCyclicReciprocalAbel.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5354bae776724ff721acaa8e4d4dab7d3a380abc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

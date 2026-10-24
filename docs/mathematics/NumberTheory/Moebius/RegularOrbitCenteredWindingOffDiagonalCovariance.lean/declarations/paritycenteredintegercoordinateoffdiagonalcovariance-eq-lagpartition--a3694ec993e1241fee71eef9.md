# parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_lagPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45d8989c-36aa-74f0-b83b-2625f4a98f8c",
  "kind": "theorem",
  "lexical_name": "parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_lagPartition",
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
  "slug": "paritycenteredintegercoordinateoffdiagonalcovariance-eq-lagpartition--a3694ec993e1241fee71eef9",
  "source": {
    "blob": "eb144670f6e44e124345cb33ae420b2d948377fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 212,
    "path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3694ec993e1241fee71eef909a740eeae3991af0c7937a68d75ec569ed0f6b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45d8989c-36aa-74f0-b83b-2625f4a98f8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parityCenteredIntegerCoordinateOffDiagonalCovariance_eq_lagPartition
    (b d r : ℕ) [NeZero d]
    (H : Finset ℕ) :
    parityCenteredIntegerCoordinateOffDiagonalCovariance b d r H =
      parityCenteredIntegerCoordinateLagPartitionCovariance b d r H := by
  classical
  unfold parityCenteredIntegerCoordinateOffDiagonalCovariance
    parityCenteredIntegerCoordinateLagPartitionCovariance
  apply congrArg (fun x : ℝ => 4 * x)
  apply Finset.sum_congr rfl
  intro c₁ hc₁
  apply Finset.sum_congr rfl
  intro c₂ hc₂
  have hc₁b : c₁ < b + 1 := Finset.mem_range.mp hc₁
  have hc₂b : c₂ < b + 1 := Finset.mem_range.mp hc₂
  by_cases hold : c₁ ≡ c₂ [MOD d * d] ∧ c₁ ≠ c₂
  · have hor : c₁ < c₂ ∨ c₂ < c₁ := by omega
    have hex :
        ∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          (c₂ = c₁ + z * (d * d) ∨ c₁ = c₂ + z * (d * d)) := by
      rcases hor with hlt | hgt
      · obtain ⟨z, hz, heq⟩ :=
          positiveCongruentCenterDifference_has_windingLag
            b d c₁ c₂ hc₁b hc₂b hlt hold.1
        exact ⟨z, hz, Or.inl heq⟩
      · obtain ⟨z, hz, heq⟩ :=
          positiveCongruentCenterDifference_has_windingLag
            b d c₂ c₁ hc₂b hc₁b hgt hold.1.symm
        exact ⟨z, hz, Or.inr heq⟩
    rw [if_pos hold, if_pos hex]
  · have hnex :
        ¬ ∃ z ∈ Finset.Icc 1 (centeredWindingRadius b d),
          (c₂ = c₁ + z * (d * d) ∨ c₁ = c₂ + z * (d * d)) := by
      intro hex
      obtain ⟨z, hz, heq⟩ := hex
      have hzpos : 0 < z := (Finset.mem_Icc.mp hz).1
      have hq : 0 < d * d := Nat.mul_pos (Nat.pos_of_ne_zero (NeZero.ne d))
        (Nat.pos_of_ne_zero (NeZero.ne d))
      have hsep : 0 < z * (d * d) := Nat.mul_pos hzpos hq
      apply hold
      rcases heq with hforward | hbackward
      · constructor
        · rw [hforward]
          exact windingLag_gives_congruentCenters d c₁ z
        · omega
      · constructor
        · rw [hbackward]
          exact (windingLag_gives_congruentCenters d c₂ z).symm
        · omega
    rw [if_neg hold, if_neg hnex]

/-- The exact lag partition is the wrap surface and therefore the affine-Chowla
variance defect. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredWindingOffDiagonalCovariance.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb144670f6e44e124345cb33ae420b2d948377fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

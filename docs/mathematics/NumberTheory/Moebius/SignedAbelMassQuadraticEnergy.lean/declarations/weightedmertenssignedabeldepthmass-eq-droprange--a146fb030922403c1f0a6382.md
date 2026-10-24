# weightedMertensSignedAbelDepthMass_eq_dropRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8fd70807-8359-cea1-b152-7df632ab45b2",
  "kind": "theorem",
  "lexical_name": "weightedMertensSignedAbelDepthMass_eq_dropRange",
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
  "slug": "weightedmertenssignedabeldepthmass-eq-droprange--a146fb030922403c1f0a6382",
  "source": {
    "blob": "229cd628b8834cf55b43117b934fe7b1186cc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 52,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a146fb030922403c1f0a63822c7694f3f44284d8bd23ed77652f4ef9990dd232",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8fd70807-8359-cea1-b152-7df632ab45b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weightedMertensSignedAbelDepthMass_eq_dropRange
    {j t : ℕ} (ht : t + 2 ≤ 2 ^ (j + 1)) :
    weightedMertensSignedAbelDepthMass j t =
      ∑ k ∈ Finset.range (2 ^ (j + 1) - t - 2),
        dyadicMertensShiftWeightDrop j (k + 1) t := by
  let Y : ℕ := 2 ^ (j + 1)
  let N : ℕ := Y - t - 2
  have htY : t + 2 ≤ Y := by simpa [Y] using ht
  have hNY : N ≤ Y - 1 := by
    dsimp [N]
    omega
  unfold weightedMertensSignedAbelDepthMass
  rw [show 2 ^ (j + 1) = Y by rfl, Finset.sum_Ico_eq_sum_range]
  have hext :=
    sum_range_eq_sum_range_indicator_of_le
      (fun k : ℕ => dyadicMertensShiftWeightDrop j (k + 1) t)
      hNY
  rw [hext]
  apply Finset.sum_congr rfl
  intro k hk
  unfold signedAbelDepthWeight
  have hkY : k < Y - 1 := Finset.mem_range.mp hk
  by_cases hkN : k < N
  · have hsupp : t < Y - (k + 1) - 1 := by
      dsimp [N] at hkN
      omega
    simp only [Nat.add_comm 1 k, ← show Y = 2 ^ (j + 1) from rfl,
      if_pos hsupp, if_pos hkN]
  · have hsupp : ¬ t < Y - (k + 1) - 1 := by
      dsimp [N] at hkN
      omega
    simp only [Nat.add_comm 1 k, ← show Y = 2 ^ (j + 1) from rfl,
      if_neg hsupp, if_neg hkN]

/-- The exact Abel mass over the growing shift family telescopes to one kernel
weight, with a zero convention after the triangular support has ended. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229cd628b8834cf55b43117b934fe7b1186cc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

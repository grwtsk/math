# weightedMertensSignedAbelDepthMass_eq_telescoped

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9c7ba8f-4ff5-a432-37ae-22cdb2358efd",
  "kind": "theorem",
  "lexical_name": "weightedMertensSignedAbelDepthMass_eq_telescoped",
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
  "slug": "weightedmertenssignedabeldepthmass-eq-telescoped--33b3d8c00f7039f0440b7552",
  "source": {
    "blob": "229cd628b8834cf55b43117b934fe7b1186cc1dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 88,
    "path": "GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33b3d8c00f7039f0440b7552fd0962647a741c9457dbba7ac398f5a49daa5d98",
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

Occurrence: `result:c9c7ba8f-4ff5-a432-37ae-22cdb2358efd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMertensSignedAbelDepthMass_eq_telescoped
    (j t : ℕ) :
    weightedMertensSignedAbelDepthMass j t =
      weightedMertensSignedAbelDepthTelescopedMass j t := by
  let Y : ℕ := 2 ^ (j + 1)
  by_cases ht : t + 2 ≤ Y
  · have hrange :=
      weightedMertensSignedAbelDepthMass_eq_dropRange
        (j := j) (t := t) (by simpa [Y] using ht)
    rw [hrange]
    let N : ℕ := Y - t - 2
    let q : ℕ → ℝ := fun k =>
      dyadicMertensShiftWeight j (t + 2 + k)
    have htel := finiteWeightDropTelescope q N
    have htY : t + 2 ≤ Y := ht
    have hindex : t + 2 + N = Y := by
      dsimp [N]
      omega
    have hterminal : q N = 0 := by
      dsimp [q]
      rw [hindex, show Y = 2 ^ (j + 1) by rfl,
        dyadicMertensShiftWeight_at_right]
    have hdrop :
        (Finset.range N).sum (fun k =>
          dyadicMertensShiftWeightDrop j (k + 1) t) =
        (Finset.range N).sum (fun k => q k - q (k + 1)) := by
      apply Finset.sum_congr rfl
      intro k _hk
      simp [q, dyadicMertensShiftWeightDrop, Nat.add_assoc,
        Nat.add_comm, Nat.add_left_comm]
    calc
      (Finset.range N).sum (fun k =>
          dyadicMertensShiftWeightDrop j (k + 1) t) =
        (Finset.range N).sum (fun k => q k - q (k + 1)) := hdrop
      _ = q 0 - q N := htel
      _ = dyadicMertensShiftWeight j (t + 2) := by
        simp [hterminal, q]
      _ = weightedMertensSignedAbelDepthTelescopedMass j t := by
        simp [weightedMertensSignedAbelDepthTelescopedMass, Y, ht]
  · have hzero : weightedMertensSignedAbelDepthMass j t = 0 := by
      unfold weightedMertensSignedAbelDepthMass signedAbelDepthWeight
      apply Finset.sum_eq_zero
      intro h hh
      have hh' := Finset.mem_Ico.mp hh
      have htY : Y < t + 2 := Nat.lt_of_not_ge ht
      have hlow : 1 ≤ h := hh'.1
      have hsupp : ¬ t < 2 ^ (j + 1) - h - 1 := by
        change ¬ t < Y - h - 1
        omega
      simp [hsupp]
    rw [hzero]
    simp [weightedMertensSignedAbelDepthTelescopedMass, Y, ht]

/-- The total Abel mass at every depth is at most the reciprocal dyadic right
endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedAbelMassQuadraticEnergy.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `229cd628b8834cf55b43117b934fe7b1186cc1dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

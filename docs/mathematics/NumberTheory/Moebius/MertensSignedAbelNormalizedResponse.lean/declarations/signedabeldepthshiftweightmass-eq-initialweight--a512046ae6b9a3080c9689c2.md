# signedAbelDepthShiftWeightMass_eq_initialWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f867e1bf-d7ae-4c03-93f9-57efa5cb5ee7",
  "kind": "theorem",
  "lexical_name": "signedAbelDepthShiftWeightMass_eq_initialWeight",
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
  "slug": "signedabeldepthshiftweightmass-eq-initialweight--a512046ae6b9a3080c9689c2",
  "source": {
    "blob": "41e7d4e872da780caa4fbd208a04f6c2cca0ecbd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a512046ae6b9a3080c9689c2d53332de49b9cca4708ece3c2f57bdc2402b198e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f867e1bf-d7ae-4c03-93f9-57efa5cb5ee7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedAbelDepthShiftWeightMass_eq_initialWeight
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    signedAbelDepthShiftWeightMass j t =
      dyadicMertensShiftWeight j (t + 2) := by
  let Y : ℕ := 2 ^ (j + 1)
  let N : ℕ := Y - t - 2
  let q : ℕ → ℝ := fun k =>
    dyadicMertensShiftWeight j (t + 2 + k)
  have htel := finiteWeightDropTelescope q N
  have hterminalIndex : t + 2 + N = Y := by
    dsimp [N, Y]
    omega
  have hterminal : q N = 0 := by
    dsimp [q]
    rw [hterminalIndex, show Y = 2 ^ (j + 1) by rfl,
      dyadicMertensShiftWeight_at_right]
  unfold signedAbelDepthShiftWeightMass
  rw [show 2 ^ (j + 1) - t - 2 = N by rfl]
  calc
    (∑ k ∈ Finset.range N,
      dyadicMertensShiftWeightDrop j (k + 1) t) =
        ∑ k ∈ Finset.range N, (q k - q (k + 1)) := by
      apply Finset.sum_congr rfl
      intro k _hk
      dsimp [dyadicMertensShiftWeightDrop, q]
      congr 2
      omega
    _ = q 0 - q N := htel
    _ = dyadicMertensShiftWeight j (t + 2) := by
      rw [hterminal, sub_zero]

/-- The complete shift-fibre coefficient mass is at most the reciprocal dyadic
endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelNormalizedResponse.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e7d4e872da780caa4fbd208a04f6c2cca0ecbd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

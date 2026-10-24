# boundaryThirdUnitFamily_le_global

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ce7f1d7d-1bf2-6653-e4e7-dd1ce05d293e",
  "kind": "theorem",
  "lexical_name": "boundaryThirdUnitFamily_le_global",
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
  "slug": "boundarythirdunitfamily-le-global--9fb4e0bc3dab556ea974a83f",
  "source": {
    "blob": "66df4148a06701caba735db1f0694ec54730a319",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb4e0bc3dab556ea974a83ff27623cf9db699d20c4fae0038f83313ff941cee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce7f1d7d-1bf2-6653-e4e7-dd1ce05d293e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryThirdUnitFamily_le_global
    (j : ℕ) :
    (∑ u ∈ Finset.range (2 ^ j),
      weakMertensUnitKernel
        (logarithmicShallowDepthCount j - u)) ≤
      dyadicGlobalUnitWeakMertensEnergy j := by
  let D : ℕ := logarithmicShallowDepthCount j
  let X : ℕ := 2 ^ j
  let Y : ℕ := 2 ^ (j + 1)
  have hDY : D + 1 ≤ Y := by
    simpa [D, Y] using
      logarithmicShallowDepthCount_add_one_le_endpoint j
  have hprefix :
      (∑ N ∈ Finset.range (D + 1),
        weakMertensUnitKernel N) ≤
        dyadicGlobalUnitWeakMertensEnergy j := by
    unfold dyadicGlobalUnitWeakMertensEnergy
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro N hN
      simp only [Finset.mem_range] at hN ⊢
      omega
    · intro N _hN _hnot
      exact weakMertensUnitKernel_nonneg N
  by_cases hXD : X ≤ D + 1
  · have hsubset :
        Finset.range X ⊆ Finset.range (D + 1) := by
      intro u hu
      simp only [Finset.mem_range] at hu ⊢
      omega
    calc
      (∑ u ∈ Finset.range X,
        weakMertensUnitKernel (D - u)) ≤
        ∑ u ∈ Finset.range (D + 1),
          weakMertensUnitKernel (D - u) := by
            apply Finset.sum_le_sum_of_subset_of_nonneg hsubset
            intro u _hu _hnot
            exact weakMertensUnitKernel_nonneg (D - u)
      _ = ∑ N ∈ Finset.range (D + 1),
          weakMertensUnitKernel N :=
        sum_range_reverse_kernel D
      _ ≤ dyadicGlobalUnitWeakMertensEnergy j := hprefix
  · have hDX : D + 1 < X := Nat.lt_of_not_ge hXD
    have hzero :
        ∀ u ∈ Finset.Ico (D + 1) X,
          weakMertensUnitKernel (D - u) = 0 := by
      intro u hu
      simp only [Finset.mem_Ico] at hu
      have hsub : D - u = 0 := by omega
      rw [hsub]
      simp [weakMertensUnitKernel]
    have hsplit :
        (∑ u ∈ Finset.range X,
          weakMertensUnitKernel (D - u)) =
        ∑ u ∈ Finset.range (D + 1),
          weakMertensUnitKernel (D - u) := by
      rw [Finset.sum_range_add_sum_Ico
        (fun u => weakMertensUnitKernel (D - u))
        (Nat.le_of_lt hDX)]
      have hz :
          (∑ u ∈ Finset.Ico (D + 1) X,
            weakMertensUnitKernel (D - u)) = 0 := by
        apply Finset.sum_eq_zero
        intro u hu
        exact hzero u hu
      rw [hz, add_zero]
    rw [hsplit, sum_range_reverse_kernel D]
    exact hprefix

/-- The exact three-family localized unit energy has multiplicity at most two
inside one dyadic global unit-energy sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreBoundaryGlobalUnitWeakMertens.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66df4148a06701caba735db1f0694ec54730a319` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# generateFrom_pi_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e870cd3f-73db-7bc4-1e52-53b4b9c4ebbe",
  "kind": "theorem",
  "lexical_name": "generateFrom_pi_eq",
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
  "slug": "generatefrom-pi-eq--8a029a5e728b2683da5573c5",
  "source": {
    "blob": "4e5a2b6aaad20f340b204f870463f99ddd6330e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 111,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a029a5e728b2683da5573c55c3d52fc8a47d41b72187aa041aed6932d15f11c",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e870cd3f-73db-7bc4-1e52-53b4b9c4ebbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generateFrom_pi_eq {C : ∀ i, Set (Set (α i))} (hC : ∀ i, IsCountablySpanning (C i)) :
    (@MeasurableSpace.pi _ _ fun i => generateFrom (C i)) =
    generateFrom (pi univ '' pi univ C) := by
  cases nonempty_encodable ι
  apply le_antisymm
  · refine' iSup_le _; intro i; rw [comap_generateFrom]
    apply generateFrom_le; rintro _ ⟨s, hs, rfl⟩; dsimp
    choose t h1t h2t using hC
    simp_rw [eval_preimage, ← h2t]
    rw [← @iUnion_const _ ℕ _ s]
    have : Set.pi univ (update (fun i' : ι => iUnion (t i')) i (⋃ _ : ℕ, s)) =
        Set.pi univ fun k => ⋃ j : ℕ,
        @update ι (fun i' => Set (α i')) _ (fun i' => t i' j) i s k := by
      ext; simp_rw [mem_univ_pi]; apply forall_congr'; intro i'
      by_cases h : i' = i
      · subst h; simp
      · rw [← Ne.def] at h; simp [h]
    rw [this, ← iUnion_univ_pi]
    apply MeasurableSet.iUnion
    intro n; apply measurableSet_generateFrom
    apply mem_image_of_mem; intro j _; dsimp only
    by_cases h : j = i; subst h; rwa [update_same]; rw [update_noteq h]; apply h1t
  · apply generateFrom_le; rintro _ ⟨s, hs, rfl⟩
    rw [univ_pi_eq_iInter]; apply MeasurableSet.iInter; intro i
    apply @measurable_pi_apply _ _ (fun i => generateFrom (C i))
    exact measurableSet_generateFrom (hs i (mem_univ i))
#align generate_from_pi_eq generateFrom_pi_eq

/-- If `C` and `D` generate the σ-algebras on `α` resp. `β`, then rectangles formed by `C` and `D`
  generate the σ-algebra on `α × β`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Pi/Variant6e73054d08d30ed00015eae5a34be74c456bd0fee8ab29df14b2cca29ca95fb2.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e5a2b6aaad20f340b204f870463f99ddd6330e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

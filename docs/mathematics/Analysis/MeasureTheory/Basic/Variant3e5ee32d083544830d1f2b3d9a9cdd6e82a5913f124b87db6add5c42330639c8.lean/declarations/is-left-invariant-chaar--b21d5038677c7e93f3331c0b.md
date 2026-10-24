# is_left_invariant_chaar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5855ddc898674ffb401916a573479432f4bd6f33",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 519,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1b67d2f-9d4a-5dbf-1694-8cffe3a9c04b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ebe8d324-f1cc-bbe5-23df-3011d235a441",
  "kind": "theorem",
  "lexical_name": "is_left_invariant_chaar",
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
  "slug": "is-left-invariant-chaar--b21d5038677c7e93f3331c0b",
  "source": {
    "blob": "5855ddc898674ffb401916a573479432f4bd6f33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 519,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b21d5038677c7e93f3331c0bf817ebe331f5e2ba7403cc173cd828c25e10dfb5",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ebe8d324-f1cc-bbe5-23df-3011d235a441`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem is_left_invariant_chaar {K₀ : PositiveCompacts G} (g : G) (K : Compacts G) :
    chaar K₀ (K.map _ <| continuous_mul_left g) = chaar K₀ K := by
  let eval : (Compacts G → ℝ) → ℝ := fun f => f (K.map _ <| continuous_mul_left g) - f K
  have : Continuous eval := (continuous_apply (K.map _ _)).sub (continuous_apply K)
  rw [← sub_eq_zero]; show chaar K₀ ∈ eval ⁻¹' {(0 : ℝ)}
  apply mem_of_subset_of_mem _ (chaar_mem_clPrehaar K₀ ⊤)
  unfold clPrehaar; rw [IsClosed.closure_subset_iff]
  · rintro _ ⟨U, ⟨_, h2U, h3U⟩, rfl⟩
    simp only [mem_singleton_iff, mem_preimage, sub_eq_zero]
    apply is_left_invariant_prehaar; rw [h2U.interior_eq]; exact ⟨1, h3U⟩
  · apply continuous_iff_isClosed.mp this; exact isClosed_singleton
#align measure_theory.measure.haar.is_left_invariant_chaar MeasureTheory.Measure.haar.is_left_invariant_chaar
#align measure_theory.measure.haar.is_left_invariant_add_chaar MeasureTheory.Measure.haar.is_left_invariant_addCHaar

variable [T2Space G]

-- Porting note: Even in `noncomputable section`, a definition with `to_additive` require
--               `noncomputable` to generate an additive definition.
--               Please refer to leanprover/lean4#2077.

/-- The function `chaar` interpreted in `ℝ≥0`, as a content -/
@[to_additive "additive version of `MeasureTheory.Measure.haar.haarContent`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant3e5ee32d083544830d1f2b3d9a9cdd6e82a5913f124b87db6add5c42330639c8.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5855ddc898674ffb401916a573479432f4bd6f33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

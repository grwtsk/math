# measurableCylinders_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e2261215ff3185093223f568f51086decdc99edc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e774391b-5078-26b2-9d95-6d0cf2bf0cc3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:593ee95e-7167-1db8-36f4-64d512d0a484",
  "kind": "theorem",
  "lexical_name": "measurableCylinders_nat",
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
  "slug": "measurablecylinders-nat--e6b3c2066e98c4e925cce70e",
  "source": {
    "blob": "e2261215ff3185093223f568f51086decdc99edc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 371,
    "path": "GRWTSK/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6b3c2066e98c4e925cce70e1dea15d05a31ac23ed24c4208a048a3affdbeab0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:593ee95e-7167-1db8-36f4-64d512d0a484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measurableCylinders_nat {X : ℕ → Type*} [∀ n, MeasurableSpace (X n)] :
    measurableCylinders X = ⋃ (a) (S) (_ : MeasurableSet S), {cylinder (Finset.Iic a) S} := by
  ext s
  simp only [mem_measurableCylinders, exists_prop, mem_iUnion, mem_singleton]
  refine ⟨?_, fun ⟨N, S, mS, s_eq⟩ ↦ ⟨Finset.Iic N, S, mS, s_eq⟩⟩
  rintro ⟨t, S, mS, rfl⟩
  refine ⟨t.sup id, Finset.restrict₂ t.subset_Iic_sup_id ⁻¹' S,
    Finset.measurable_restrict₂ _ mS, ?_⟩
  unfold cylinder
  rw [← preimage_comp, Finset.restrict₂_comp_restrict]
  exact mem_singleton _

end cylinders

/-! ### Cylinder events as a sigma-algebra -/

section cylinderEvents

variable {α ι : Type*} {X : ι → Type*} {mα : MeasurableSpace α} [m : ∀ i, MeasurableSpace (X i)]
  {Δ Δ₁ Δ₂ : Set ι} {i : ι}

/-- The σ-algebra of cylinder events on `Δ`. It is the smallest σ-algebra making the projections
on the `i`-th coordinate measurable for all `i ∈ Δ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Cylinders/Variant31cbf5add5c569d8e7d27672246fc2307c81971809c9d87001b6b614c39f52a6.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2261215ff3185093223f568f51086decdc99edc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# nonempty_iInter_clPrehaar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f59a1ad1-312c-ce54-6647-c89e00123951",
  "kind": "theorem",
  "lexical_name": "nonempty_iInter_clPrehaar",
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
  "slug": "nonempty-iinter-clprehaar--f29db46f9b895a36a3409233",
  "source": {
    "blob": "c9c997c21c09b5ae81fc02d229959045b3f34503",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 412,
    "line": 379,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f29db46f9b895a36a34092339f07ff92af87aa4182a0bc748c4f76cb1b0a73ec",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f59a1ad1-312c-ce54-6647-c89e00123951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 379–412.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_iInter_clPrehaar (K₀ : PositiveCompacts G) :
    (haarProduct (K₀ : Set G) ∩ ⋂ V : OpenNhdsOf (1 : G), clPrehaar K₀ V).Nonempty := by
  have : IsCompact (haarProduct (K₀ : Set G)) := by
    apply isCompact_univ_pi; intro K; apply isCompact_Icc
  refine' this.inter_iInter_nonempty (clPrehaar K₀) (fun s => isClosed_closure) fun t => _
  let V₀ := ⋂ V ∈ t, (V : OpenNhdsOf (1 : G)).carrier
  have h1V₀ : IsOpen V₀ := by
    apply isOpen_biInter; apply Finset.finite_toSet; rintro ⟨⟨V, hV₁⟩, hV₂⟩ _; exact hV₁
  have h2V₀ : (1 : G) ∈ V₀ := by simp only [mem_iInter]; rintro ⟨⟨V, hV₁⟩, hV₂⟩ _; exact hV₂
  refine' ⟨prehaar K₀ V₀, _⟩
  constructor
  · apply prehaar_mem_haarProduct K₀; use 1; rwa [h1V₀.interior_eq]
  · simp only [mem_iInter]; rintro ⟨V, hV⟩ h2V; apply subset_closure
    apply mem_image_of_mem; rw [mem_setOf_eq]
    exact ⟨Subset.trans (iInter_subset _ ⟨V, hV⟩) (iInter_subset _ h2V), h1V₀, h2V₀⟩
#align measure_theory.measure.haar.nonempty_Inter_cl_prehaar MeasureTheory.Measure.haar.nonempty_iInter_clPrehaar
#align measure_theory.measure.haar.nonempty_Inter_cl_add_prehaar MeasureTheory.Measure.haar.nonempty_iInter_clAddPrehaar

/-!
### Lemmas about `chaar`
-/


-- Porting note: Even in `noncomputable section`, a definition with `to_additive` require
--               `noncomputable` to generate an additive definition.
--               Please refer to leanprover/lean4#2077.

/-- This is the "limit" of `prehaar K₀ U K` as `U` becomes a smaller and smaller open
  neighborhood of `(1 : G)`. More precisely, it is defined to be an arbitrary element
  in the intersection of all the sets `clPrehaar K₀ V` in `haarProduct K₀`.
  This is roughly equal to the Haar measure on compact sets,
  but it can differ slightly. We do know that
  `haarMeasure K₀ (interior K) ≤ chaar K₀ K ≤ haarMeasure K₀ K`. -/
@[to_additive addCHaar "additive version of `MeasureTheory.Measure.haar.chaar`"]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variant50a1391e6d4352f783d591001369dcc21438600576c54a82b349086effaf3738.lean#L379).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c997c21c09b5ae81fc02d229959045b3f34503` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

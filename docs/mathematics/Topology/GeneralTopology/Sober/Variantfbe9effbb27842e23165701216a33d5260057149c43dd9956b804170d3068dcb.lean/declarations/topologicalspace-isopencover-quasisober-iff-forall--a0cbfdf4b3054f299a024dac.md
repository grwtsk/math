# TopologicalSpace.IsOpenCover.quasiSober_iff_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5fe9a71-2be6-af1d-53f8-ed16e3400a2a",
  "kind": "lemma",
  "lexical_name": "TopologicalSpace.IsOpenCover.quasiSober_iff_forall",
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
  "slug": "topologicalspace-isopencover-quasisober-iff-forall--a0cbfdf4b3054f299a024dac",
  "source": {
    "blob": "ee857204b492f7584f2a6a84a41d5a01e710c665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 214,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0cbfdf4b3054f299a024dacbe00880fba3a553947e98548c357d4e7654e767c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5fe9a71-2be6-af1d-53f8-ed16e3400a2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma TopologicalSpace.IsOpenCover.quasiSober_iff_forall {ι : Type*} {U : ι → Opens α}
    (hU : TopologicalSpace.IsOpenCover U) : QuasiSober α ↔ ∀ i, QuasiSober (U i) := by
  refine ⟨fun h i ↦ (U i).isOpenEmbedding'.quasiSober, fun hU' ↦ (quasiSober_iff _).mpr ?_⟩
  · rintro t ⟨⟨x, hx⟩, h⟩ h'
    obtain ⟨i, hi⟩ := hU.exists_mem x
    have H : IsIrreducible ((↑) ⁻¹' t : Set (U i)) :=
      ⟨⟨⟨x, hi⟩, hx⟩, h.preimage (U i).isOpenEmbedding'⟩
    use H.genericPoint
    apply le_antisymm
    · simpa [h'.closure_subset_iff, h'.closure_eq] using
        continuous_subtype_val.closure_preimage_subset _ H.isGenericPoint_genericPoint_closure.mem
    rw [← image_singleton, ← closure_image_closure continuous_subtype_val,
      H.isGenericPoint_genericPoint_closure.def]
    refine (subset_closure_inter_of_isPreirreducible_of_isOpen h (U i).isOpen ⟨x, ⟨hx, hi⟩⟩).trans
      (closure_mono ?_)
    simpa only [inter_comm t, ← Subtype.image_preimage_coe] using Set.image_subset _ subset_closure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variantfbe9effbb27842e23165701216a33d5260057149c43dd9956b804170d3068dcb.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee857204b492f7584f2a6a84a41d5a01e710c665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

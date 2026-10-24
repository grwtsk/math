# quasiSober_of_open_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed8522d5-7685-596d-4c12-3b6ea49e70fc",
  "kind": "theorem",
  "lexical_name": "quasiSober_of_open_cover",
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
  "slug": "quasisober-of-open-cover--cf0b1c22329df65116af9047",
  "source": {
    "blob": "4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 225,
    "path": "GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf0b1c22329df65116af90475b04678f814195059282006b664e91173c7c3601",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed8522d5-7685-596d-4c12-3b6ea49e70fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quasiSober_of_open_cover (S : Set (Set α)) (hS : ∀ s : S, IsOpen (s : Set α))
    [hS' : ∀ s : S, QuasiSober s] (hS'' : ⋃₀ S = ⊤) : QuasiSober α := by
  rw [quasiSober_iff]
  intro t h h'
  obtain ⟨x, hx⟩ := h.1
  obtain ⟨U, hU, hU'⟩ : x ∈ ⋃₀ S := by
    rw [hS'']
    trivial
  haveI : QuasiSober U := hS' ⟨U, hU⟩
  have H : IsPreirreducible ((↑) ⁻¹' t : Set U) :=
    h.2.preimage (hS ⟨U, hU⟩).openEmbedding_subtype_val
  replace H : IsIrreducible ((↑) ⁻¹' t : Set U) := ⟨⟨⟨x, hU'⟩, by simpa using hx⟩, H⟩
  use H.genericPoint
  have := continuous_subtype_val.closure_preimage_subset _ H.genericPoint_spec.mem
  rw [h'.closure_eq] at this
  apply le_antisymm
  · apply h'.closure_subset_iff.mpr
    simpa using this
  rw [← image_singleton, ← closure_image_closure continuous_subtype_val, H.genericPoint_spec.def]
  refine' (subset_closure_inter_of_isPreirreducible_of_isOpen h.2 (hS ⟨U, hU⟩) ⟨x, hx, hU'⟩).trans
    (closure_mono _)
  rw [← Subtype.image_preimage_coe]
  exact Set.image_subset _ subset_closure
#align quasi_sober_of_open_cover quasiSober_of_open_cover

/-- Any Hausdorff space is a quasi-sober space because any irreducible set is a singleton. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sober/Variant32acdec9c8bdf059ef27e90962a6f83aac0f1863ce6c31b91327ea2e7c546d9e.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c18b9f3fcae54d01dd4e9e0faed3eb25b5c0afd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

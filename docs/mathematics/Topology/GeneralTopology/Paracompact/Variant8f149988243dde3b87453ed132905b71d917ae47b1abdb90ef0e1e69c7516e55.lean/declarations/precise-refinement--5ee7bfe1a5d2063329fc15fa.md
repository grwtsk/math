# precise_refinement

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:197bcc8c-9b68-cbf7-c661-b37f52f78aa1",
  "kind": "theorem",
  "lexical_name": "precise_refinement",
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
  "slug": "precise-refinement--5ee7bfe1a5d2063329fc15fa",
  "source": {
    "blob": "27b1535a9da88bef565020ff5fc790bb9fb76f03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 81,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ee7bfe1a5d2063329fc15fad505e9339a2f0958e478a682c77826dfff4ea94b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:197bcc8c-9b68-cbf7-c661-b37f52f78aa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem precise_refinement [ParacompactSpace X] (u : ι → Set X) (uo : ∀ a, IsOpen (u a))
    (uc : ⋃ i, u i = univ) : ∃ v : ι → Set X, (∀ a, IsOpen (v a)) ∧ ⋃ i, v i = univ ∧
    LocallyFinite v ∧ ∀ a, v a ⊆ u a := by
  -- Apply definition to `range u`, then turn existence quantifiers into functions using `choose`
  have := ParacompactSpace.locallyFinite_refinement (range u) (fun r ↦ (r : Set X))
    (SetCoe.forall.2 <| forall_range_iff.2 uo) (by rwa [← sUnion_range, Subtype.range_coe])
  simp only [SetCoe.exists, exists_range_iff', iUnion_eq_univ_iff, exists_prop] at this
  choose α t hto hXt htf ind hind using this
  choose t_inv ht_inv using hXt
  choose U hxU hU using htf
  -- Send each `i` to the union of `t a` over `a ∈ ind ⁻¹' {i}`
  refine' ⟨fun i ↦ ⋃ (a : α) (_ : ind a = i), t a, _, _, _, _⟩
  · exact fun a ↦ isOpen_iUnion fun a ↦ isOpen_iUnion fun _ ↦ hto a
  · simp only [eq_univ_iff_forall, mem_iUnion]
    exact fun x ↦ ⟨ind (t_inv x), _, rfl, ht_inv _⟩
  · refine' fun x ↦ ⟨U x, hxU x, ((hU x).image ind).subset _⟩
    simp only [subset_def, mem_iUnion, mem_setOf_eq, Set.Nonempty, mem_inter_iff]
    rintro i ⟨y, ⟨a, rfl, hya⟩, hyU⟩
    exact mem_image_of_mem _ ⟨y, hya, hyU⟩
  · simp only [subset_def, mem_iUnion]
    rintro i x ⟨a, rfl, hxa⟩
    exact hind _ hxa
#align precise_refinement precise_refinement

/-- In a paracompact space, every open covering of a closed set admits a locally finite refinement
indexed by the same type. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant8f149988243dde3b87453ed132905b71d917ae47b1abdb90ef0e1e69c7516e55.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27b1535a9da88bef565020ff5fc790bb9fb76f03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

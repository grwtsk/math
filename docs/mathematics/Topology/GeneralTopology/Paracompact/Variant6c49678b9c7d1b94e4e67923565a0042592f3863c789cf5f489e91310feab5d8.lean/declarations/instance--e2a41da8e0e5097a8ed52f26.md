# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5b9342262654bf08c25742288962073941c8b0e2d3d322fe5a105200fa894da9",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e2a41da8e0e5097a8ed52f26",
  "source": {
    "blob": "38be5f3fa4708dbebb99bae63054faca56658191",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 136,
    "path": "GRWTSK/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2a41da8e0e5097a8ed52f26c55935a4e20ff03fdd9835b7f12a8297e220f419",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5b9342262654bf08c25742288962073941c8b0e2d3d322fe5a105200fa894da9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 200) [CompactSpace X] [ParacompactSpace Y] : ParacompactSpace (X × Y) where
  locallyFinite_refinement α s ho hu := by
    have : ∀ (x : X) (y : Y), ∃ (a : α) (U : Set X) (V : Set Y),
        IsOpen U ∧ IsOpen V ∧ x ∈ U ∧ y ∈ V ∧ U ×ˢ V ⊆ s a := fun x y ↦
      (iUnion_eq_univ_iff.1 hu (x, y)).imp fun a ha ↦ isOpen_prod_iff.1 (ho a) x y ha
    choose a U V hUo hVo hxU hyV hUV using this
    choose T hT using fun y ↦ CompactSpace.elim_nhds_subcover (U · y) fun x ↦
      (hUo x y).mem_nhds (hxU x y)
    set W : Y → Set Y := fun y ↦ ⋂ x ∈ T y, V x y
    have hWo : ∀ y, IsOpen (W y) := fun y ↦ isOpen_biInter_finset fun _ _ ↦ hVo _ _
    have hW : ∀ y, y ∈ W y := fun _ ↦ mem_iInter₂.2 fun _ _ ↦ hyV _ _
    rcases precise_refinement W hWo (iUnion_eq_univ_iff.2 fun y ↦ ⟨y, hW y⟩)
      with ⟨E, hEo, hE, hEf, hEA⟩
    refine ⟨Σ y, T y, fun z ↦ U z.2.1 z.1 ×ˢ E z.1, fun _ ↦ (hUo _ _).prod (hEo _),
      iUnion_eq_univ_iff.2 fun (x, y) ↦ ?_, fun (x, y) ↦ ?_, fun ⟨y, x, hx⟩ ↦ ?_⟩
    · rcases iUnion_eq_univ_iff.1 hE y with ⟨b, hb⟩
      rcases iUnion₂_eq_univ_iff.1 (hT b) x with ⟨a, ha, hx⟩
      exact ⟨⟨b, a, ha⟩, hx, hb⟩
    · rcases hEf y with ⟨t, ht, htf⟩
      refine ⟨univ ×ˢ t, prod_mem_nhds univ_mem ht, ?_⟩
      refine (htf.biUnion fun y _ ↦ finite_range (Sigma.mk y)).subset ?_
      rintro ⟨b, a, ha⟩ ⟨⟨c, d⟩, ⟨-, hd : d ∈ E b⟩, -, hdt : d ∈ t⟩
      exact mem_iUnion₂.2 ⟨b, ⟨d, hd, hdt⟩, mem_range_self _⟩
    · refine ⟨a x y, (Set.prod_mono Subset.rfl ?_).trans (hUV x y)⟩
      exact (hEA _).trans (iInter₂_subset x hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Paracompact/Variant6c49678b9c7d1b94e4e67923565a0042592f3863c789cf5f489e91310feab5d8.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38be5f3fa4708dbebb99bae63054faca56658191` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

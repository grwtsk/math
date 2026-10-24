# RelCWComplex.Subcomplex.instRelCWComplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba465ee024453671129099ba15684c1d2ac835b67822f60d1f51720a738d288f",
  "kind": "instance",
  "lexical_name": "RelCWComplex.Subcomplex.instRelCWComplex",
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
  "slug": "relcwcomplex-subcomplex-instrelcwcomplex--be971fd320c7543cfafb277e",
  "source": {
    "blob": "115d3f1a979d5a4939b74abf9286f1213d6fa024",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 89,
    "path": "GRWTSK/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be971fd320c7543cfafb277ef991bc92aed48c96ac5fbf1662de10c77460816b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba465ee024453671129099ba15684c1d2ac835b67822f60d1f51720a738d288f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RelCWComplex.Subcomplex.instRelCWComplex [T2Space X] [RelCWComplex C D]
    (E : Subcomplex C) : RelCWComplex E D where
  cell n := E.I n
  map n i := map (C := C) n i
  source_eq n i := source_eq (C := C) n i
  continuousOn n i := continuousOn (C := C) n i
  continuousOn_symm n i := continuousOn_symm (C := C) n i
  pairwiseDisjoint' := by
    intro ⟨n, i⟩ _ ⟨m, j⟩ _ hne
    refine @pairwiseDisjoint' _ _ C D _ ⟨n, i⟩ trivial ⟨m, j⟩ trivial ?_
    exact Function.injective_id.sigma_map (fun _ ↦ Subtype.val_injective) |>.ne hne
  disjointBase' n i := disjointBase' (C := C) n i
  mapsTo := by
    intro n i
    rcases cellFrontier_subset_finite_openCell (C := C) n i with ⟨J, hJ⟩
    use fun m ↦ Finset.preimage (J m) Subtype.val Subtype.val_injective.injOn
    rw [mapsTo_iff_image_subset]
    intro x hx
    specialize hJ hx
    simp_rw [iUnion_coe_set, mem_union, mem_iUnion, Finset.mem_preimage, exists_prop,
      Decidable.or_iff_not_imp_left] at hJ ⊢
    intro h
    specialize hJ h
    obtain ⟨m, hmn, j, hj, hxj⟩ := hJ
    suffices j ∈ E.I m from ⟨m, hmn, j, this, hj, openCell_subset_closedCell _ _ hxj⟩
    have : x ∈ (E : Set X) := E.cellFrontier_subset_of_mem i.2 hx
    by_contra hj'
    exact E.disjoint_openCell_subcomplex_of_not_mem hj' |>.notMem_of_mem_left hxj this
  closed' A hA h := by
    apply isClosed_of_disjoint_openCell_or_isClosed_inter_closedCell
      (subset_trans hA (subset_complex (C := C) E)) h.2
    intro n _ j
    by_cases hj : j ∈ E.I n
    · exact Or.intro_right _ (h.1 n ⟨j, hj⟩)
    · exact Or.intro_left _ ((disjoint_openCell_subcomplex_of_not_mem E hj).symm.mono_left hA)
  isClosedBase := isClosedBase (C := C)
  union' := union_closedCell E

/-- A subcomplex is again a CW complex. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Subcomplex/Variant8515207b1cf174e6069a099b21e7d979d0e3256b252ac366e4042bafd21edaea.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `115d3f1a979d5a4939b74abf9286f1213d6fa024` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

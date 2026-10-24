# IsPreirreducible.of_subset_iUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab3da9cf-330c-9379-ab76-ea1eb7832ba0",
  "kind": "theorem",
  "lexical_name": "IsPreirreducible.of_subset_iUnion",
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
  "slug": "ispreirreducible-of-subset-iunion--7865c89b68009e3791ca31a0",
  "source": {
    "blob": "a8ffc5347d95ce7f6daa3e04a152a71da7d7821d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 108,
    "path": "GRWTSK/Topology/GeneralTopology/OpenCover/Variant45d469ee66491e2e3fbbd01c43028abd93d335c83d6b68c9067d5bf347ad9fa9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7865c89b68009e3791ca31a0b8e8589e2f7fccdaceca28e47d9f6f48b76bc17d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/OpenCover/Variant45d469ee66491e2e3fbbd01c43028abd93d335c83d6b68c9067d5bf347ad9fa9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab3da9cf-330c-9379-ab76-ea1eb7832ba0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsPreirreducible.of_subset_iUnion {X ι : Type*} [TopologicalSpace X]
    {U : ι → Opens X} (hn : Pairwise ((¬ Disjoint · ·) on U))
    (h : ∀ i, IsPreirreducible ((U i) : Set X))
    {s : Set X} (hs : IsOpen s) (hsU : s ⊆ ⋃ i, U i) :
    IsPreirreducible s := by
  rcases s.eq_empty_or_nonempty with he | hne
  · rw [he]; exact isPreirreducible_empty
  · choose x hx using hne
    choose i hi using mem_iUnion.mp <| hsU hx
    rcases exists_mem_irreducibleComponents_subset_of_isIrreducible (U i).carrier ⟨⟨x, hi⟩, h i⟩
      with ⟨u, hu, hUu⟩
    by_cases huniv : s ⊆ u
    · exact hu.1.2.open_subset hs huniv
    · have huo : IsOpen uᶜ :=
        IsClosed.isOpen_compl (self := isClosed_of_mem_irreducibleComponents u hu)
      rcases not_subset.mp huniv with ⟨a, ⟨ha₁, ha₂⟩⟩
      choose j haj using mem_iUnion.mp <| hsU ha₁
      have hji : j ≠ i := fun hji' ↦ ha₂ <| hUu <| hji' ▸ haj
      rcases inter_nonempty_iff_exists_left.mp
        ((h j) (U i) uᶜ (U i).isOpen huo
        (not_disjoint_iff_nonempty_inter.mp (by simpa using hn hji)) ⟨a, ⟨haj, ha₂⟩⟩).right
        with ⟨x, hx₁, hx₂⟩
      exfalso; exact hx₂ <| hUu hx₁

/-- (Pre)Irreducibility can be checked on an open cover with pairwise non-empty intersections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/OpenCover/Variant45d469ee66491e2e3fbbd01c43028abd93d335c83d6b68c9067d5bf347ad9fa9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/OpenCover/Variant45d469ee66491e2e3fbbd01c43028abd93d335c83d6b68c9067d5bf347ad9fa9.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8ffc5347d95ce7f6daa3e04a152a71da7d7821d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

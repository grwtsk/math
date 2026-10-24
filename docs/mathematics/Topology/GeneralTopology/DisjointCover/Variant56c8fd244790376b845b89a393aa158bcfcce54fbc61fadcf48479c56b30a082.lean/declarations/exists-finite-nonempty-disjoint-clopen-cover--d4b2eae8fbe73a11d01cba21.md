# exists_finite_nonempty_disjoint_clopen_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c0689e9-214b-cd5d-314b-8ec19fe54187",
  "kind": "lemma",
  "lexical_name": "exists_finite_nonempty_disjoint_clopen_cover",
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
  "slug": "exists-finite-nonempty-disjoint-clopen-cover--d4b2eae8fbe73a11d01cba21",
  "source": {
    "blob": "a0249b1f29e80cd35378db4149d89b86606dac3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 60,
    "path": "GRWTSK/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4b2eae8fbe73a11d01cba217b57c11f7591e4028b241bc30722f5655ba4f1d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c0689e9-214b-cd5d-314b-8ec19fe54187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_finite_nonempty_disjoint_clopen_cover (hU : IsOpenCover U) :
    ∃ (n : ℕ) (W : Fin n → Clopens X), (∀ j, W j ≠ ⊥ ∧ ∃ i, (W j : Set X) ⊆ U i)
    ∧ (univ : Set X) ⊆ ⋃ j, ↑(W j) ∧ Pairwise (Disjoint on W) := by
  classical
  obtain ⟨n, V, hVle, hVun⟩ := hU.exists_finite_clopen_cover
  obtain ⟨W, hWle, hWun, hWd⟩ := Fintype.exists_disjointed_le V
  simp only [← SetLike.coe_set_eq, Clopens.coe_finset_sup, Finset.mem_univ, iUnion_true] at hWun
  let t : Finset (Fin n) := {j | W j ≠ ⊥}
  refine ⟨#t, fun k ↦ W (t.equivFin.symm k), fun k ↦ ⟨?_, ?_⟩, fun x hx ↦ ?_, ?_⟩
  · exact (Finset.mem_filter.mp (t.equivFin.symm k).2).2
  · exact match hVle (t.equivFin.symm k) with | ⟨i, hi⟩ => ⟨i, subset_trans (hWle _) hi⟩
  · obtain ⟨j, hj⟩ := mem_iUnion.mp <| (hWun ▸ hVun) hx
    have : W j ≠ ⊥ := by simpa [← SetLike.coe_ne_coe, ← Set.nonempty_iff_ne_empty] using ⟨x, hj⟩
    exact mem_iUnion.mpr ⟨t.equivFin ⟨j, Finset.mem_filter.mpr ⟨Finset.mem_univ _, this⟩⟩, by simpa⟩
  · exact hWd.comp_of_injective <| Subtype.val_injective.comp t.equivFin.symm.injective

end TopologicalSpace.IsOpenCover

namespace TopologicalSpace
variable {X : Type*} [TopologicalSpace X] {S : Set (X × X)}

/-- If `S` is any neighbourhood of the diagonal in a topological space `X`, any point of `X` has an
open neighbourhood `U` such that `U ×ˢ U ⊆ S`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DisjointCover/Variant56c8fd244790376b845b89a393aa158bcfcce54fbc61fadcf48479c56b30a082.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0249b1f29e80cd35378db4149d89b86606dac3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

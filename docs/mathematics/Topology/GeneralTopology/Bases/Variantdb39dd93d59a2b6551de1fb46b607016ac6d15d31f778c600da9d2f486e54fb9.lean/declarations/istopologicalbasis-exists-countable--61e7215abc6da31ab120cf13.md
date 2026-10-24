# IsTopologicalBasis.exists_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dd7f513-e73b-3d1e-bb33-fa65e0be1e64",
  "kind": "lemma",
  "lexical_name": "IsTopologicalBasis.exists_countable",
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
  "slug": "istopologicalbasis-exists-countable--61e7215abc6da31ab120cf13",
  "source": {
    "blob": "8e32269e1b118c37cde52145c937508870dc9845",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1032,
    "line": 1007,
    "path": "GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61e7215abc6da31ab120cf13a3cb66bb6f592ae2a9e481837d53691ce26d234f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dd7f513-e73b-3d1e-bb33-fa65e0be1e64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1007–1032.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsTopologicalBasis.exists_countable
    [SecondCountableTopology α] {t : Set (Set α)} (ht : IsTopologicalBasis t) :
    ∃ s ⊆ t, s.Countable ∧ IsTopologicalBasis s := by
  have A : ∀ u ∈ countableBasis α, ∃ s ⊆ t, s.Countable ∧ u = ⋃ a ∈ s, a :=
    fun u hu ↦ ht.exists_countable_biUnion_of_isOpen ((isBasis_countableBasis α).isOpen hu)
  choose! s hst s_count hs using A
  refine ⟨⋃ u ∈ countableBasis α, s u, by simpa using hst,
    (countable_countableBasis α).biUnion s_count, ?_⟩
  apply isTopologicalBasis_of_isOpen_of_nhds
  · simp only [mem_iUnion, exists_prop, forall_exists_index, and_imp]
    have := @ht.isOpen
    grind
  · intro x v hx hv
    simp only [mem_iUnion, exists_prop]
    obtain ⟨u, u_mem, xu, uv⟩ : ∃ u ∈ countableBasis α, x ∈ u ∧ u ⊆ v :=
      (isBasis_countableBasis α).isOpen_iff.1 hv _ hx
    have : x ∈ ⋃ a ∈ s u, a := by
      convert! xu
      exact (hs u u_mem).symm
    obtain ⟨w, ws, xw⟩ : ∃ w ∈ s u, x ∈ w := by simpa using this
    refine ⟨w, ⟨u, u_mem, ws⟩, xw, ?_⟩
    apply Subset.trans (Subset.trans _ (hs u u_mem).symm.subset) uv
    exact subset_iUnion₂_of_subset w ws (Subset.refl _)

/-- In a second countable topological space, any family generating the topology admits a
countable generating subfamily. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bases/Variantdb39dd93d59a2b6551de1fb46b607016ac6d15d31f778c600da9d2f486e54fb9.lean#L1007).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e32269e1b118c37cde52145c937508870dc9845` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# exists_gt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18892356-707a-0be0-f9f8-144964a3db9f",
  "kind": "theorem",
  "lexical_name": "exists_gt",
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
  "slug": "exists-gt--980ca742ebe919fdc802dbc5",
  "source": {
    "blob": "129df1734abc9d199881591b1665f29201c11fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 182,
    "path": "GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:980ca742ebe919fdc802dbc5ab2236bc8daa73ddcc2e3272f4d75d484105e148",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18892356-707a-0be0-f9f8-144964a3db9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_gt (v : PartialRefinement u s) (hs : IsClosed s) (i : ι) (hi : i ∉ v.carrier) :
    ∃ v' : PartialRefinement u s, v < v' := by
  have I : (s ∩ ⋂ (j) (_ : j ≠ i), (v j)ᶜ) ⊆ v i := by
    simp only [subset_def, mem_inter_iff, mem_iInter, and_imp]
    intro x hxs H
    rcases mem_iUnion.1 (v.subset_iUnion hxs) with ⟨j, hj⟩
    exact (em (j = i)).elim (fun h => h ▸ hj) fun h => (H j h hj).elim
  have C : IsClosed (s ∩ ⋂ (j) (_ : j ≠ i), (v j)ᶜ) :=
    IsClosed.inter hs (isClosed_biInter fun _ _ => isClosed_compl_iff.2 <| v.isOpen _)
  rcases normal_exists_closure_subset C (v.isOpen i) I with ⟨vi, ovi, hvi, cvi⟩
  refine' ⟨⟨update v i vi, insert i v.carrier, _, _, _, _⟩, _, _⟩
  · intro j
    rcases eq_or_ne j i with (rfl| hne) <;> simp [*, v.isOpen]
  · refine' fun x hx => mem_iUnion.2 _
    rcases em (∃ (j : _) (_ : j ≠ i), x ∈ v j) with (⟨j, hji, hj⟩ | h)
    · use j
      rwa [update_noteq hji]
    · push_neg at h
      use i
      rw [update_same]
      exact hvi ⟨hx, mem_biInter h⟩
  · rintro j (rfl | hj)
    · rwa [update_same, ← v.apply_eq hi]
    · rw [update_noteq (ne_of_mem_of_not_mem hj hi)]
      exact v.closure_subset hj
  · intro j hj
    rw [mem_insert_iff, not_or] at hj
    rw [update_noteq hj.1, v.apply_eq hj.2]
  · refine' ⟨subset_insert _ _, fun j hj => _⟩
    exact (update_noteq (ne_of_mem_of_not_mem hj hi) _ _).symm
  · exact fun hle => hi (hle.1 <| mem_insert _ _)
#align shrinking_lemma.partial_refinement.exists_gt ShrinkingLemma.PartialRefinement.exists_gt

end PartialRefinement

end ShrinkingLemma

open ShrinkingLemma

variable {u : ι → Set X} {s : Set X}

/-- **Shrinking lemma**. A point-finite open cover of a closed subset of a normal space can be
"shrunk" to a new open cover so that the closure of each new open set is contained in the
corresponding original open set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ShrinkingLemma/Variant7cc7c72f5b8cda1129a40b18c74867f8cd9ed72f8ff3e8c14cfe8fd5e3c2834b.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `129df1734abc9d199881591b1665f29201c11fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

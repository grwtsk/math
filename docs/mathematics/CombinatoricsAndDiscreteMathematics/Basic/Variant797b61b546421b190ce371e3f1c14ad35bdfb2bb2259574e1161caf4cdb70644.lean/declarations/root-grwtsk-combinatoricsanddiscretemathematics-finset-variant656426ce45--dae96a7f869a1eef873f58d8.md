# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.Directed.exists_mem_subset_of_finset_subset_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ea82ee3-38d6-4132-7877-fc443b348768",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.Directed.exists_mem_subset_of_finset_subset_biUnion",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-finset-variant656426ce45--dae96a7f869a1eef873f58d8",
  "source": {
    "blob": "b60684812356eac00940fb922aa14757ea39b085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1565,
    "line": 1549,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dae96a7f869a1eef873f58d8fe74865a288d465a9f36e8ff2320b3a9ef9f0bd9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ea82ee3-38d6-4132-7877-fc443b348768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1549–1565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant656426ce45371ebc38e8dd025fabcaf3df1a823a534ad578452b4378342243a1.Directed.exists_mem_subset_of_finset_subset_biUnion {α ι : Type*} [hn : Nonempty ι]
    {f : ι → Set α} (h : Directed (· ⊆ ·) f) {s : Finset α} (hs : (s : Set α) ⊆ ⋃ i, f i) :
    ∃ i, (s : Set α) ⊆ f i := by
  classical
    revert hs
    refine' s.induction_on _ _
    · refine' fun _ => ⟨hn.some, _⟩
      simp only [coe_empty, Set.empty_subset]
    · intro b t _hbt htc hbtc
      obtain ⟨i : ι, hti : (t : Set α) ⊆ f i⟩ := htc (Set.Subset.trans (t.subset_insert b) hbtc)
      obtain ⟨j, hbj⟩ : ∃ j, b ∈ f j := by simpa [Set.mem_iUnion₂] using hbtc (t.mem_insert_self b)
      rcases h j i with ⟨k, hk, hk'⟩
      use k
      rw [coe_insert, Set.insert_subset_iff]
      exact ⟨hk hbj, _root_.trans hti hk'⟩
#align directed.exists_mem_subset_of_finset_subset_bUnion Directed.exists_mem_subset_of_finset_subset_biUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean#L1549).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60684812356eac00940fb922aa14757ea39b085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

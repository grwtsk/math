# exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2df490050c69136b472eb58a5b51c08ea03e0a71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 473,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e5fe2ee-6c8b-b5c2-e192-99fd838e8e66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40886676-360f-a38d-8016-076c1453e3bf",
  "kind": "lemma",
  "lexical_name": "exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty",
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
  "slug": "exists-mem-support-mem-erase-mem-support-takeuntil-eq-empty--daad96b3c6e2d3fcf28c703b",
  "source": {
    "blob": "2df490050c69136b472eb58a5b51c08ea03e0a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 473,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daad96b3c6e2d3fcf28c703b55db7354cb7ec42056ce1ad04a44c7272600e24e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40886676-360f-a38d-8016-076c1453e3bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 473–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty (s : Finset V)
    (h : {x ∈ s | x ∈ p.support}.Nonempty) :
    ∃ x ∈ s, ∃ hx : x ∈ p.support, {t ∈ s.erase x | t ∈ (p.takeUntil x hx).support} = ∅ := by
  simp only [← Finset.subset_empty]
  induction hp : p.length + #s using Nat.strong_induction_on generalizing s v with | _ n ih
  simp only [Finset.Nonempty, mem_filter] at h
  obtain ⟨x, hxs, hx⟩ := h
  obtain h | h := Finset.eq_empty_or_nonempty {t ∈ s.erase x | t ∈ (p.takeUntil x hx).support}
  · use x, hxs, hx, h.le
  have : (p.takeUntil x hx).length + #(s.erase x) < n := by
    rw [← card_erase_add_one hxs] at hp
    have := p.length_takeUntil_le_length hx
    lia
  obtain ⟨y, hys, hyp, h⟩ := ih _ this (s.erase x) h rfl
  use y, mem_of_mem_erase hys, support_takeUntil_subset_support p hx hyp
  rwa [takeUntil_takeUntil, erase_right_comm, filter_erase, erase_eq_of_notMem] at h
  simp only [mem_filter, mem_erase, ne_eq, not_and, and_imp]
  rintro hxy -
  exact notMem_support_takeUntil_support_takeUntil_subset (Ne.symm hxy) hx hyp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant7907641cd0ae71edc32c6bc1a4724c73ece29c271de8b0cf5ab22a28ff1432fe.lean#L473).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2df490050c69136b472eb58a5b51c08ea03e0a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

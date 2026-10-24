# exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d575b519-e685-a4cc-7a7f-5459161e94ca",
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
  "slug": "exists-mem-support-mem-erase-mem-support-takeuntil-eq-empty--cb6f9acd6db74f6f3dc6c497",
  "source": {
    "blob": "3c4939311ce4a0f77d7b0fd930df759ae0ba0c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 437,
    "line": 418,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb6f9acd6db74f6f3dc6c49784047f90a4a5d40e3c7c310baf112904f6459816",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d575b519-e685-a4cc-7a7f-5459161e94ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 418–437.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mem_support_mem_erase_mem_support_takeUntil_eq_empty (s : Finset V)
    (h : {x ∈ s | x ∈ p.support}.Nonempty) :
    ∃ x ∈ s, ∃ hx : x ∈ p.support, {t ∈ s.erase x | t ∈ (p.takeUntil x hx).support} = ∅ := by
  simp only [← Finset.subset_empty]
  induction' hp : p.length + #s using Nat.strong_induction_on with n ih generalizing s v
  simp only [Finset.Nonempty, mem_filter] at h
  obtain ⟨x, hxs, hx⟩ := h
  obtain h | h := Finset.eq_empty_or_nonempty {t ∈ s.erase x | t ∈ (p.takeUntil x hx).support}
  · use x, hxs, hx, h.le
  have : (p.takeUntil x hx).length + #(s.erase x) < n := by
    rw [← card_erase_add_one hxs] at hp
    have := p.length_takeUntil_le hx
    omega
  obtain ⟨y, hys, hyp, h⟩ := ih _ this (s.erase x) h rfl
  use y, mem_of_mem_erase hys, support_takeUntil_subset p hx hyp
  rwa [takeUntil_takeUntil, erase_right_comm, filter_erase, erase_eq_of_notMem] at h
  simp only [mem_filter, mem_erase, ne_eq, not_and, and_imp]
  rintro hxy -
  exact notMem_support_takeUntil_support_takeUntil_subset (Ne.symm hxy) hx hyp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Subgraph/Variant49a2cde2dfd8d408ec65b3598584dacc65c4b5a1477eb301f2221069295dc821.lean#L418).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3c4939311ce4a0f77d7b0fd930df759ae0ba0c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# krullTopology_mem_nhds_one_iff_of_normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06dd4ce6-95d0-7334-3532-4d97b93db79a",
  "kind": "lemma",
  "lexical_name": "krullTopology_mem_nhds_one_iff_of_normal",
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
  "slug": "krulltopology-mem-nhds-one-iff-of-normal--f20bce641082467f4aa15a9c",
  "source": {
    "blob": "3084adef4cbd971d3a3aed40abd228db8109bb54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 167,
    "path": "GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f20bce641082467f4aa15a9cc13cee0dd9e6b7fcb66de1e1f57875c708327014",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06dd4ce6-95d0-7334-3532-4d97b93db79a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma krullTopology_mem_nhds_one_iff_of_normal (K L : Type*) [Field K] [Field L] [Algebra K L]
    [Normal K L] (s : Set (L ≃ₐ[K] L)) : s ∈ 𝓝 1 ↔ ∃ E : IntermediateField K L,
    FiniteDimensional K E ∧ Normal K E ∧ (E.fixingSubgroup : Set (L ≃ₐ[K] L)) ⊆ s := by
  rw [krullTopology_mem_nhds_one_iff]
  refine ⟨fun ⟨E, _, hE⟩ ↦ ?_, fun ⟨E, hE⟩ ↦ ⟨E, hE.1, hE.2.2⟩⟩
  use (IntermediateField.normalClosure K E L)
  simp only [normalClosure.is_finiteDimensional K E L, normalClosure.normal K E L, true_and]
  exact le_trans (E.fixingSubgroup_antitone E.le_normalClosure) hE

section KrullT2

open scoped Topology Filter

/-- Let `L/E/K` be a tower of fields with `E/K` finite. Then `Gal(L/E)` is an open subgroup of
  `L ≃ₐ[K] L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/KrullTopology/Variantd9b4361c57a90a1ca4c15239f66cd535fd865bdec59aa27a3514fbc800720469.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3084adef4cbd971d3a3aed40abd228db8109bb54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

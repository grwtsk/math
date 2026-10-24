# mem_part_ofSetSetoid_iff_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75a9ead71e18f58cfbf6ffe811e2707e873b3ae4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 663,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46a69614-6117-1ce4-e502-74864a88f184",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:695eafc8-5067-4c75-b500-77a53aabee87",
  "kind": "theorem",
  "lexical_name": "mem_part_ofSetSetoid_iff_rel",
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
  "slug": "mem-part-ofsetsetoid-iff-rel--8800a5e2133fd125f4298e60",
  "source": {
    "blob": "75a9ead71e18f58cfbf6ffe811e2707e873b3ae4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 663,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8800a5e2133fd125f4298e608932a09202d4b9b5b8eda3a381bfe23d71e7a4a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:695eafc8-5067-4c75-b500-77a53aabee87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 663–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_part_ofSetSetoid_iff_rel {s : Setoid α} (x : Finset α) [DecidableRel s.r] {b : α} :
    b ∈ (ofSetSetoid s x).part a ↔ a ∈ x ∧ b ∈ x ∧ s a b := by
  suffices (∃ a₁ ∈ x, (b ∈ x ∧ s a₁ b) ∧ a ∈ x ∧ s a₁ a) ↔ a ∈ x ∧ b ∈ x ∧ s a b by
    simpa [mem_part_iff_exists, ofSetSetoid_parts]
  exact ⟨
    fun ⟨c, _, ⟨hb, hcb⟩, ⟨ha, hca⟩⟩ ↦ ⟨ha, hb, s.trans' (s.symm' hca) hcb⟩,
    fun h ↦ ⟨a, ⟨h.1, ⟨⟨h.2.1, h.2.2⟩, ⟨h.1, s.refl _⟩⟩⟩⟩
  ⟩

end SetSetoid

section Setoid

variable [Fintype α]

/-- A setoid over a finite type induces a finpartition of the type's elements,
where the parts are the setoid's equivalence classes. -/
@[simps! -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant2aa8b4ed1aa31c945b41279f065e910b3d6e1065f7ad17c55425094b6f5dab0f.lean#L663).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a9ead71e18f58cfbf6ffe811e2707e873b3ae4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

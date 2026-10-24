# mem_part_ofSetSetoid_iff_rel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0bcad03f-b0c1-01c9-a1ef-e09d36b2d02b",
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
  "slug": "mem-part-ofsetsetoid-iff-rel--136d6e4c724b45d1f6380119",
  "source": {
    "blob": "e0165432b3ebd3aa26ad149799e85ac0a400d4b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 671,
    "path": "GRWTSK/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:136d6e4c724b45d1f6380119d1dd0fecc71161d41180e0f9b8f612b2cf3afe09",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bcad03f-b0c1-01c9-a1ef-e09d36b2d02b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 671–688.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Finpartition/Variant19d159404b582a11185e4dbce3b89f833c5a9a859fe3a0594b144dfd7007e127.lean#L671).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0165432b3ebd3aa26ad149799e85ac0a400d4b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

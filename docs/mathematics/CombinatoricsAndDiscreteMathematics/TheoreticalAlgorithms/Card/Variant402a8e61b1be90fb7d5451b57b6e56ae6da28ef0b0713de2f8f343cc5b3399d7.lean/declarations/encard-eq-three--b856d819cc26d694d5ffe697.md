# encard_eq_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "30d2c53c19cb4702c9298dd48374fd84b20111ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/40/402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2784c3cc-48a9-76da-38b2-0bb0599f1327",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d19d2f9f-e9ab-6f06-f82f-4e8ac7c5a01d",
  "kind": "theorem",
  "lexical_name": "encard_eq_three",
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
  "slug": "encard-eq-three--b856d819cc26d694d5ffe697",
  "source": {
    "blob": "30d2c53c19cb4702c9298dd48374fd84b20111ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 324,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b856d819cc26d694d5ffe697f83eee1f9770bc6b0a1155b7a3b810bd3999351e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d19d2f9f-e9ab-6f06-f82f-4e8ac7c5a01d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encard_eq_three {α : Type u_1} {s : Set α} :
    encard s = 3 ↔ ∃ x y z, x ≠ y ∧ x ≠ z ∧ y ≠ z ∧ s = {x, y, z} := by
  refine' ⟨fun h ↦ _, fun ⟨x, y, z, hxy, hyz, hxz, hs⟩ ↦ _⟩
  · obtain ⟨x, hx⟩ := nonempty_of_encard_ne_zero (s := s) (by rw [h]; simp)
    rw [←insert_eq_of_mem hx, ←insert_diff_singleton,
      encard_insert_of_not_mem (fun h ↦ h.2 rfl), (by exact rfl : (3 : ℕ∞) = 2 + 1),
      WithTop.add_right_cancel_iff WithTop.one_ne_top, encard_eq_two] at h
    obtain ⟨y,z,hne, hs⟩ := h
    refine' ⟨x,y,z, _, _, hne, _⟩
    · rintro rfl; exact (hs.symm.subset (Or.inl rfl)).2 rfl
    · rintro rfl; exact (hs.symm.subset (Or.inr rfl)).2 rfl
    rw [←hs, insert_diff_singleton, insert_eq_of_mem hx]
  rw [hs, encard_insert_of_not_mem, encard_insert_of_not_mem, encard_singleton] <;> aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Card/Variant402a8e61b1be90fb7d5451b57b6e56ae6da28ef0b0713de2f8f343cc5b3399d7.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30d2c53c19cb4702c9298dd48374fd84b20111ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

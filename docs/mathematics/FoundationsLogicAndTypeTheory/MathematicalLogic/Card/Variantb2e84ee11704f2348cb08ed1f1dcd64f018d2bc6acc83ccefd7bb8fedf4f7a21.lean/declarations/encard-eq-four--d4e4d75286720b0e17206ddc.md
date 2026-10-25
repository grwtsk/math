# encard_eq_four

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daf40833-ab39-143a-cb9d-fcb3923e1475",
  "kind": "theorem",
  "lexical_name": "encard_eq_four",
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
  "slug": "encard-eq-four--d4e4d75286720b0e17206ddc",
  "source": {
    "blob": "b08e799e6244fa8fd4a5cd055c04b858fda23fd2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 449,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4e4d75286720b0e17206ddcb5668452ae9cd541ffad943aa009d7ab92ebb9c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daf40833-ab39-143a-cb9d-fcb3923e1475`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encard_eq_four {α : Type u_1} {s : Set α} :
    encard s = 4 ↔ ∃ x y z w, x ≠ y ∧ x ≠ z ∧ x ≠ w ∧ y ≠ z ∧ y ≠ w ∧ z ≠ w ∧ s = {x, y, z, w} := by
  refine ⟨fun h ↦ ?_, fun ⟨x, y, z, w, hxy, hxz, hxw, hyz, hyw, hzw, hs⟩ ↦ ?_⟩
  · obtain ⟨x, hx⟩ := nonempty_of_encard_ne_zero (s := s) (by rw [h]; simp)
    rw [← insert_eq_of_mem hx, ← insert_sdiff_singleton,
      encard_insert_of_notMem (fun h ↦ h.2 rfl), (by exact rfl : (4 : ℕ∞) = 3 + 1),
      (ENat.addLECancellable_of_ne_top ENat.one_ne_top).inj_left, encard_eq_three] at h
    obtain ⟨y, z, w, hyz, hyw, hzw, hs⟩ := h
    refine ⟨x, y, z, w, ?_, ?_, ?_, hyz, hyw, hzw, ?_⟩
    · rintro rfl; exact (hs.symm.subset (Or.inl rfl)).2 rfl
    · rintro rfl; exact (hs.symm.subset (Or.inr (Or.inl rfl))).2 rfl
    · rintro rfl; exact (hs.symm.subset (Or.inr (Or.inr rfl))).2 rfl
    rw [← hs, insert_sdiff_singleton, insert_eq_of_mem hx]
  rw [hs, encard_insert_of_notMem, encard_insert_of_notMem, encard_insert_of_notMem,
    encard_singleton] <;> grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantb2e84ee11704f2348cb08ed1f1dcd64f018d2bc6acc83ccefd7bb8fedf4f7a21.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b08e799e6244fa8fd4a5cd055c04b858fda23fd2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

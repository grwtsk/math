# exists_divisor_of_not_isPrimitive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1bd64b0593d3a6d9246adfd8c4283255d9d8ea85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a0/a038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a5fcbdb-3a78-55bc-e9ce-fc69f4dde5aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fbba32f0-6756-24fb-9b11-0fad82886658",
  "kind": "lemma",
  "lexical_name": "exists_divisor_of_not_isPrimitive",
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
  "slug": "exists-divisor-of-not-isprimitive--87143aa301b65919c1bf3d13",
  "source": {
    "blob": "1bd64b0593d3a6d9246adfd8c4283255d9d8ea85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 112,
    "path": "GRWTSK/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87143aa301b65919c1bf3d13820698fa407e977d339bc3109aca0287447832c4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbba32f0-6756-24fb-9b11-0fad82886658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_divisor_of_not_isPrimitive (he : ¬e.IsPrimitive) :
    ∃ d : ℕ, d ∣ N ∧ d < N ∧ e.mulShift d = 1 := by
  simp_rw [IsPrimitive, not_forall, not_ne_iff] at he
  rcases he with ⟨b, hb_ne, hb⟩
  -- We have `AddChar.mulShift e b = 1`, but `b ≠ 0`.
  obtain ⟨d, hd, u, hu, rfl⟩ := b.eq_unit_mul_divisor
  refine ⟨d, hd, lt_of_le_of_ne (Nat.le_of_dvd (NeZero.pos _) hd) ?_, ?_⟩
  · exact fun h ↦ by simp only [h, ZMod.natCast_self, mul_zero, ne_eq, not_true_eq_false] at hb_ne
  · rw [← mulShift_unit_eq_one_iff _ hu, ← hb, mul_comm]
    ext1 y
    rw [mulShift_apply, mulShift_apply, mulShift_apply, mul_assoc]

end ZMod

section ZModChar

variable {C : Type v} [CommMonoid C]

section ZModCharDef


/-- We can define an additive character on `ZMod n` when we have an `n`th root of unity `ζ : C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddCharacter/Varianta038d8a9e080a663e0de28ae168d20506c23b0392053eb878710073eacd98074.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bd64b0593d3a6d9246adfd8c4283255d9d8ea85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

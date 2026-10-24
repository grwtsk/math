# isPretransitive_alternatingGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3d8a868210145dc990640f55fe12d0a969a57930",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 279,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f5cb48ec-2224-f82c-a48f-de2ffc475b66",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:374f0e89-7046-4109-c846-ef1b7d56f658",
  "kind": "theorem",
  "lexical_name": "isPretransitive_alternatingGroup",
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
  "slug": "ispretransitive-alternatinggroup--45f16b91a90b3db7d900b018",
  "source": {
    "blob": "3d8a868210145dc990640f55fe12d0a969a57930",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 279,
    "path": "GRWTSK/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45f16b91a90b3db7d900b018477a8ca6d910764e6bb6239f585d4b47cec5cc07",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:374f0e89-7046-4109-c846-ef1b7d56f658`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 279–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPretransitive_alternatingGroup [Fintype α] (hα : 3 ≤ Nat.card α) :
    IsPretransitive (alternatingGroup α) (powersetCard α n) := by
  wlog! hn : 2 * n ≤ Nat.card α
  · have : IsPretransitive (alternatingGroup α) (powersetCard α (Nat.card α - n)) := by
      apply this hα
      grind
    by_cases hn' : n ≤ Nat.card α
    · apply IsPretransitive.of_surjective_map
        (mulActionHom_compl_bijective (alternatingGroup α) α _).surjective this
      aesop
    · suffices Subsingleton (powersetCard α n) by infer_instance
      rw [not_le] at hn'
      rw [← Finite.card_le_one_iff_subsingleton, powersetCard.card,
        Nat.choose_eq_zero_iff.mpr hn']
      simp
  apply isPretransitive_of_isMultiplyPretransitive
  rcases eq_or_ne n 0 with rfl | hn0
  · infer_instance
  rcases eq_or_ne n 1 with rfl | hn1
  · rw [is_one_pretransitive_iff]
    exact alternatingGroup.isPretransitive_of_three_le_card α hα
  have := alternatingGroup.isMultiplyPretransitive α
  apply isMultiplyPretransitive_of_le (n := Nat.card α - 2) <;> grind

set_option backward.isDefEq.respectTransparency false in
/-- The action of `alternatingGroup α` on `Set.powersetCard α n` is preprimitive
provided `1 ≤ n < Nat.card α` and `Nat.card α ≠ 2 * n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Combination/Variant5b6738ac575c8892dbe04d95f9f602b08218f2091c68a7a989717ad36180745b.lean#L279).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8a868210145dc990640f55fe12d0a969a57930` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

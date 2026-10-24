# card_eq_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1f5397a36acf986959491a4595020e8e76e9faa7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 703,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d46cb67-04bf-0a7f-1c0d-0588519546fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:032d52dd-8149-3b3b-fbe1-0cdc22b9d428",
  "kind": "theorem",
  "lexical_name": "card_eq_three",
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
  "slug": "card-eq-three--21ecf6f6d798bc7f06a11498",
  "source": {
    "blob": "1f5397a36acf986959491a4595020e8e76e9faa7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 715,
    "line": 703,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21ecf6f6d798bc7f06a11498513a740556ef34fddc5aef71daf2b23fc43976cf",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:032d52dd-8149-3b3b-fbe1-0cdc22b9d428`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 703–715.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_eq_three : #s = 3 ↔ ∃ x y z, x ≠ y ∧ x ≠ z ∧ y ≠ z ∧ s = {x, y, z} := by
  constructor
  · rw [card_eq_succ]
    simp_rw [card_eq_two]
    rintro ⟨a, _, abc, rfl, b, c, bc, rfl⟩
    rw [mem_insert, mem_singleton, not_or] at abc
    exact ⟨a, b, c, abc.1, abc.2, bc, rfl⟩
  · rintro ⟨x, y, z, xy, xz, yz, rfl⟩
    simp only [xy, xz, yz, mem_insert, card_insert_of_notMem, not_false_iff, mem_singleton,
      or_self_iff, card_singleton]

end DecidableEq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantc5ec2d3928c9960b8d9ae607ef6393aeab96beb1c7bc84bfd1cad4bd68a76fd7.lean#L703).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f5397a36acf986959491a4595020e8e76e9faa7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

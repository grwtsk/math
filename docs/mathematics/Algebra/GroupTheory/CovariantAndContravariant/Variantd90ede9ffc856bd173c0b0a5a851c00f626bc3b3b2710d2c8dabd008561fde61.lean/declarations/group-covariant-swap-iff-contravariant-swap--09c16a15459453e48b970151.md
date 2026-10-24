# Group.covariant_swap_iff_contravariant_swap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "960a4491f738b6f7e16acff5242462823287610d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 171,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e208582c-477b-a817-2d7c-e36199582879",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6813ff84-f99a-ce57-fc8a-616a267b4ccc",
  "kind": "theorem",
  "lexical_name": "Group.covariant_swap_iff_contravariant_swap",
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
  "slug": "group-covariant-swap-iff-contravariant-swap--09c16a15459453e48b970151",
  "source": {
    "blob": "960a4491f738b6f7e16acff5242462823287610d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 171,
    "path": "GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:09c16a15459453e48b970151d7cf36d46514681520841fb00c13c515d5d7c5d5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6813ff84-f99a-ce57-fc8a-616a267b4ccc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Group.covariant_swap_iff_contravariant_swap [Group N] :
    Covariant N N (swap (· * ·)) r ↔ Contravariant N N (swap (· * ·)) r := by
  refine ⟨fun h a b c bc ↦ ?_, fun h a b c bc ↦ ?_⟩
  · rw [← mul_inv_cancel_right b a, ← mul_inv_cancel_right c a]
    exact h a⁻¹ bc
  · rw [← mul_inv_cancel_right b a, ← mul_inv_cancel_right c a] at bc
    exact h a⁻¹ bc
#align group.covariant_swap_iff_contravariant_swap Group.covariant_swap_iff_contravariant_swap
#align add_group.covariant_swap_iff_contravariant_swap AddGroup.covariant_swap_iff_contravariant_swap


@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CovariantAndContravariant/Variantd90ede9ffc856bd173c0b0a5a851c00f626bc3b3b2710d2c8dabd008561fde61.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `960a4491f738b6f7e16acff5242462823287610d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

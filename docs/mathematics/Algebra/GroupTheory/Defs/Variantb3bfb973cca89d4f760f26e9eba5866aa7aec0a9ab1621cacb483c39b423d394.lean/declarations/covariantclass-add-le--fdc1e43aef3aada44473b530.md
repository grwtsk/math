# covariantClass_add_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7618953030baaed4a19107335fa4b412c97625c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:71e8ac4d-b83f-1b74-2d72-c52d2fb44c90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:94cc244f-c6ec-816f-2f0e-c529abe83a4b",
  "kind": "theorem",
  "lexical_name": "covariantClass_add_le",
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
  "slug": "covariantclass-add-le--fdc1e43aef3aada44473b530",
  "source": {
    "blob": "7618953030baaed4a19107335fa4b412c97625c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 111,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc1e43aef3aada44473b5301844e289576a4242c553a453f1883889598b05a5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94cc244f-c6ec-816f-2f0e-c529abe83a4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem covariantClass_add_le [AddZeroClass α] [Preorder α]
    [CovariantClass α α (· + ·) (· ≤ ·)] (h : ∀ a : α, 0 ≤ a) :
    CovariantClass (WithZero α) (WithZero α) (· + ·) (· ≤ ·) := by
  refine ⟨fun a b c hbc => ?_⟩
  induction a using WithZero.recZeroCoe
  · rwa [zero_add, zero_add]
  induction b using WithZero.recZeroCoe
  · rw [add_zero]
    induction c using WithZero.recZeroCoe
    · rw [add_zero]
    · rw [← coe_add, coe_le_coe]
      exact le_add_of_nonneg_right (h _)
  · rcases WithBot.coe_le_iff.1 hbc with ⟨c, rfl, hbc'⟩
    refine le_trans ?_ (le_of_eq <| coe_add _ _)
    rw [← coe_add, coe_le_coe]
    exact add_le_add_left hbc' _
#align with_zero.covariant_class_add_le WithZero.covariantClass_add_le

/-
Note 1 : the below is not an instance because it requires `zero_le`. It seems
like a rather pathological definition because α already has a zero.
Note 2 : there is no multiplicative analogue because it does not seem necessary.
Mathematicians might be more likely to use the order-dual version, where all
elements are ≤ 1 and then 1 is the top element.
-/
/-- If `0` is the least element in `α`, then `WithZero α` is an `OrderedAddCommMonoid`.
See note [reducible non-instances].
-/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7618953030baaed4a19107335fa4b412c97625c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

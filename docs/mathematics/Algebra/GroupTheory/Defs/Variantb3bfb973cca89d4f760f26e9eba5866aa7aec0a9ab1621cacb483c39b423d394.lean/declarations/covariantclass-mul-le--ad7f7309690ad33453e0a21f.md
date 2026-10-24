# covariantClass_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24f69467a839a34fc3827328488bd485ead91bf51a5f23505b1cd03caa7b891a",
  "kind": "instance",
  "lexical_name": "covariantClass_mul_le",
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
  "slug": "covariantclass-mul-le--ad7f7309690ad33453e0a21f",
  "source": {
    "blob": "7618953030baaed4a19107335fa4b412c97625c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad7f7309690ad33453e0a21f68970d908eb0b809430b09b9d730b6a6118806a6",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24f69467a839a34fc3827328488bd485ead91bf51a5f23505b1cd03caa7b891a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance covariantClass_mul_le [Mul α] [Preorder α]
    [CovariantClass α α (· * ·) (· ≤ ·)] :
    CovariantClass (WithZero α) (WithZero α) (· * ·) (· ≤ ·) := by
  refine ⟨fun a b c hbc => ?_⟩
  induction a using WithZero.recZeroCoe; · exact zero_le _
  induction b using WithZero.recZeroCoe; · exact zero_le _
  rcases WithBot.coe_le_iff.1 hbc with ⟨c, rfl, hbc'⟩
  refine le_trans ?_ (le_of_eq <| coe_mul)
  -- rw [← coe_mul, ← coe_mul, coe_le_coe]
  -- Porting note: rewriting `coe_mul` here doesn't work because of some difference between
  -- `coe` and `WithBot.some`, even though they're definitionally equal as shown by the `refine'`
  rw [← coe_mul, coe_le_coe]
  exact mul_le_mul_left' hbc' _
#align with_zero.covariant_class_mul_le WithZero.covariantClass_mul_le

-- Porting note: @[simp] can prove this
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantb3bfb973cca89d4f760f26e9eba5866aa7aec0a9ab1621cacb483c39b423d394.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7618953030baaed4a19107335fa4b412c97625c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

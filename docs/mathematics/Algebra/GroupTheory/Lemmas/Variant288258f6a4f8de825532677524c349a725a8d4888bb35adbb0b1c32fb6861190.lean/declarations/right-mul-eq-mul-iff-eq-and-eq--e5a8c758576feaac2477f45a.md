# Right.mul_eq_mul_iff_eq_and_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f8250b0-a98a-dca1-9d37-23ad0d7cb6a9",
  "kind": "theorem",
  "lexical_name": "Right.mul_eq_mul_iff_eq_and_eq",
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
  "slug": "right-mul-eq-mul-iff-eq-and-eq--e5a8c758576feaac2477f45a",
  "source": {
    "blob": "93c5dbcb8e9006c93f13e932c2ae88af47ef9f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1292,
    "line": 1263,
    "path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5a8c758576feaac2477f45a29e54dba4bae9beda4895c6118f390b8b7b5769c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f8250b0-a98a-dca1-9d37-23ad0d7cb6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1263–1292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Right.mul_eq_mul_iff_eq_and_eq [CovariantClass α α (· * ·) (· ≤ ·)]
    [ContravariantClass α α (· * ·) (· ≤ ·)] [CovariantClass α α (swap (· * ·)) (· < ·)]
    [ContravariantClass α α (swap (· * ·)) (· ≤ ·)] {a b c d : α} (hac : a ≤ c) (hbd : b ≤ d) :
    a * b = c * d ↔ a = c ∧ b = d := by
  refine' ⟨fun h => _, fun h => congr_arg₂ (· * ·) h.1 h.2⟩
  rcases hac.eq_or_lt with (rfl | hac)
  · exact ⟨rfl, mul_left_cancel'' h⟩

  rcases eq_or_lt_of_le hbd with (rfl | hbd)
  · exact ⟨mul_right_cancel'' h, rfl⟩

  exact ((Right.mul_lt_mul hac hbd).ne h).elim
#align right.mul_eq_mul_iff_eq_and_eq Right.mul_eq_mul_iff_eq_and_eq
#align right.add_eq_add_iff_eq_and_eq Right.add_eq_add_iff_eq_and_eq

alias mul_eq_mul_iff_eq_and_eq := Left.mul_eq_mul_iff_eq_and_eq
#align mul_eq_mul_iff_eq_and_eq mul_eq_mul_iff_eq_and_eq

attribute [to_additive] mul_eq_mul_iff_eq_and_eq
#align add_eq_add_iff_eq_and_eq add_eq_add_iff_eq_and_eq

end PartialOrder

end Semigroup

section Mono

variable [Mul α] [Preorder α] [Preorder β] {f g : β → α} {s : Set β}

@[to_additive const_add]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lemmas/Variant288258f6a4f8de825532677524c349a725a8d4888bb35adbb0b1c32fb6861190.lean#L1263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93c5dbcb8e9006c93f13e932c2ae88af47ef9f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

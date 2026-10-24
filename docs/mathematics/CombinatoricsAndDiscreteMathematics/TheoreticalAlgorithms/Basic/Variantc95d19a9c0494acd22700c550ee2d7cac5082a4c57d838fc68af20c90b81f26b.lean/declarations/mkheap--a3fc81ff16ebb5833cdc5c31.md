# mkHeap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad5aa15d89a2bdece88dd8b42725518554f4a494765fcd40c7d95295f13f177d",
  "kind": "def",
  "lexical_name": "mkHeap",
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
  "slug": "mkheap--a3fc81ff16ebb5833cdc5c31",
  "source": {
    "blob": "76e26e4e6e4170ff0e1f6d52f45245c3578d13b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 54,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc95d19a9c0494acd22700c550ee2d7cac5082a4c57d838fc68af20c90b81f26b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3fc81ff16ebb5833cdc5c31f308da72844fab363c84e8a9f298a557d4b6e04b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc95d19a9c0494acd22700c550ee2d7cac5082a4c57d838fc68af20c90b81f26b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad5aa15d89a2bdece88dd8b42725518554f4a494765fcd40c7d95295f13f177d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkHeap (lt : α → α → Bool) (a : Vector α sz) : Vector α sz :=
  loop (sz / 2) a (Nat.div_le_self ..)
where
  /-- Inner loop for `mkHeap`. -/
  loop : (i : Nat) → (a : Vector α sz) → i ≤ sz → Vector α sz
  | 0, a, _ => a
  | i+1, a, h =>
    let a' := heapifyDown lt a ⟨i, Nat.lt_of_succ_le h⟩
    loop i a' (Nat.le_trans (Nat.le_succ _) h)

/-- Core operation for binary heaps, expressed directly on arrays.
Given an array which is a max-heap, push item `i` up to restore the max-heap property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc95d19a9c0494acd22700c550ee2d7cac5082a4c57d838fc68af20c90b81f26b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc95d19a9c0494acd22700c550ee2d7cac5082a4c57d838fc68af20c90b81f26b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76e26e4e6e4170ff0e1f6d52f45245c3578d13b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

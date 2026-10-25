# mem_closure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da1c88454e7583b1e58fafb99481ab694d1f41cb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 459,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b639640a-5d65-1cf9-8802-af33ca752dd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:214ca4e6-b974-408e-731a-1ff68c5294ef",
  "kind": "theorem",
  "lexical_name": "mem_closure_iff",
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
  "slug": "mem-closure-iff--d6598cd327008f7b3334ec7e",
  "source": {
    "blob": "da1c88454e7583b1e58fafb99481ab694d1f41cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 486,
    "line": 459,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6598cd327008f7b3334ec7e2e5624d91c62fe8fac8c903aa41518dadbaa27ee",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:214ca4e6-b974-408e-731a-1ff68c5294ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 459–486.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_closure_iff {s : Set R} {x} :
    x ∈ closure s ↔ x ∈ AddSubgroup.closure (Subsemigroup.closure s : Set R) :=
  ⟨fun h => by
    induction h using closure_induction with
    | mem _ hx => exact AddSubgroup.subset_closure (Subsemigroup.subset_closure hx)
    | zero => exact zero_mem _
    | add _ _ _ _ hx hy => exact add_mem hx hy
    | neg x _ hx => exact neg_mem hx
    | mul _ _ _hx _hy hx hy =>
      clear _hx _hy
      induction hx, hy using AddSubgroup.closure_induction₂ with
      | mem _ _ hx hy => exact AddSubgroup.subset_closure (mul_mem hx hy)
      | one_left => simpa using zero_mem _
      | one_right => simpa using zero_mem _
      | mul_left _ _ _ _ _ _ h₁ h₂ => simpa [add_mul] using add_mem h₁ h₂
      | mul_right _ _ _ _ _ _ h₁ h₂ => simpa [mul_add] using add_mem h₁ h₂
      | inv_left _ _ _ _ h => simpa [neg_mul] using neg_mem h
      | inv_right _ _ _ _ h => simpa [mul_neg] using neg_mem h,
  fun h => by
    induction h using AddSubgroup.closure_induction with
    | mem _ hx => induction hx using Subsemigroup.closure_induction with
      | mem _ h => exact subset_closure h
      | mul _ _ _ _ h₁ h₂ => exact mul_mem h₁ h₂
    | one => exact zero_mem _
    | mul _ _ _ _ h₁ h₂ => exact add_mem h₁ h₂
    | inv _ _ h => exact neg_mem h⟩

/-- If all elements of `s : Set A` commute pairwise, then `closure s` is a commutative ring. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant8bd7c6bec0d4117b4a60eef18f1bcaa721c9b2d0070d8f7371177a86d38d5d9d.lean#L459).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da1c88454e7583b1e58fafb99481ab694d1f41cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

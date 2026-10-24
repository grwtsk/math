# inl_left_mul_inr_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb09c08a-e2fb-0264-2cee-796059e176ed",
  "kind": "theorem",
  "lexical_name": "inl_left_mul_inr_right",
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
  "slug": "inl-left-mul-inr-right--272c91a74ea908b3fb9b35ad",
  "source": {
    "blob": "ac12b1e45e8c17760e0bd0b5b1e35f276309401a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 179,
    "path": "GRWTSK/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:272c91a74ea908b3fb9b35adf6e901badfea1a2d900a07ecdfd9917f098b7cc3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb09c08a-e2fb-0264-2cee-796059e176ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inl_left_mul_inr_right (x : N ⋊[φ] G) : inl x.left * inr x.right = x := by ext <;> simp
#align semidirect_product.inl_left_mul_inr_right SemidirectProduct.inl_left_mul_inr_right

/-- The canonical projection map `N ⋊[φ] G →* G`, as a group hom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/SemidirectProduct/Varianta4f68f2931b31cf87a9ef970d14f990390e8bed25df07998dec3ebfe416f98e2.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac12b1e45e8c17760e0bd0b5b1e35f276309401a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

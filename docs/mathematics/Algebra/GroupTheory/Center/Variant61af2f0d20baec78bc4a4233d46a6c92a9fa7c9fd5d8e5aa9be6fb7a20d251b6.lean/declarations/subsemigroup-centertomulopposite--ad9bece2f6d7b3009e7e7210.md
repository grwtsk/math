# Subsemigroup.centerToMulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c35747c1ce5d0e9068d66531f3e869352610892bc00ff342dfbd31eb5b3e6c4",
  "kind": "def",
  "lexical_name": "Subsemigroup.centerToMulOpposite",
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
  "slug": "subsemigroup-centertomulopposite--ad9bece2f6d7b3009e7e7210",
  "source": {
    "blob": "b0c682393ae6acc6158e370971b8769c58eb3e7c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 181,
    "path": "GRWTSK/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad9bece2f6d7b3009e7e7210e84b4d1867a95f7a2ea0fa96aa253196e5645d36",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c35747c1ce5d0e9068d66531f3e869352610892bc00ff342dfbd31eb5b3e6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Subsemigroup.centerToMulOpposite [Mul M] : center M ≃* center Mᵐᵒᵖ where
  toFun r := ⟨_, MulOpposite.op_mem_center_iff.mpr r.2⟩
  invFun r := ⟨_, MulOpposite.unop_mem_center_iff.mpr r.2⟩
  left_inv _ := rfl
  right_inv _ := rfl
  map_mul' r _ := Subtype.ext (congr_arg MulOpposite.op <| r.2.1 _)

/-- The center of a monoid is isomorphic to the center of its opposite. -/
@[to_additive (attr := simps!)
"The center of an additive monoid is isomorphic to the center of its opposite. "]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Center/Variant61af2f0d20baec78bc4a4233d46a6c92a9fa7c9fd5d8e5aa9be6fb7a20d251b6.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0c682393ae6acc6158e370971b8769c58eb3e7c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

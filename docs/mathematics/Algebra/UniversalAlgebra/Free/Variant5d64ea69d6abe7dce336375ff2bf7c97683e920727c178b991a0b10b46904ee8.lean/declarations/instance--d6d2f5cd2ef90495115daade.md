# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c77067a808becdfdacd50bf105a20e7bb02a2d8a2162f4faddbad12804b3177d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d6d2f5cd2ef90495115daade",
  "source": {
    "blob": "77da51f43b866e2dca8881c6ffdcbeff44e34543",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 45,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6d2f5cd2ef90495115daadeb89e26a8bd619db9c68fac4134eb8ae91ee0ce67",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c77067a808becdfdacd50bf105a20e7bb02a2d8a2162f4faddbad12804b3177d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : StarRing (FreeAlgebra R X) where
  star := MulOpposite.unop ∘ lift R (MulOpposite.op ∘ ι R)
  star_involutive x := by
    simp only [Function.comp_apply]
    let y := lift R (X := X) (MulOpposite.op ∘ ι R)
    refine induction (motive := fun x ↦ (y (y x).unop).unop = x) _ _ ?_ ?_ ?_ ?_ x
    · intros
      simp only [AlgHom.commutes, MulOpposite.algebraMap_apply, MulOpposite.unop_op]
    · intros
      simp only [y, lift_ι_apply, Function.comp_apply, MulOpposite.unop_op]
    · intros
      simp only [*, map_mul, MulOpposite.unop_mul]
    · intros
      simp only [*, map_add, MulOpposite.unop_add]
  star_mul a b := by simp only [Function.comp_apply, map_mul, MulOpposite.unop_mul]
  star_add a b := by simp only [Function.comp_apply, map_add, MulOpposite.unop_add]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Free/Variant5d64ea69d6abe7dce336375ff2bf7c97683e920727c178b991a0b10b46904ee8.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77da51f43b866e2dca8881c6ffdcbeff44e34543` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

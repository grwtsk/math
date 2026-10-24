# span.ringHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b4bc35aadb212492d40621e15bc2b0c8f20cf25da90e2b9a881693c1f50bb2c5",
  "kind": "def",
  "lexical_name": "span.ringHom",
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
  "slug": "span-ringhom--ff34d4aad19a2537f510386d",
  "source": {
    "blob": "84a4d40807a9515c2d6310cb87368777e3201ac8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 579,
    "line": 561,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ff34d4aad19a2537f510386d5b975089c595b6c3682d9abaf9f8152303166155",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b4bc35aadb212492d40621e15bc2b0c8f20cf25da90e2b9a881693c1f50bb2c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–579.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def span.ringHom : SetSemiring A →+* Submodule R A where
  toFun s := Submodule.span R (SetSemiring.down s)
  map_zero' := span_empty
  map_one' := one_eq_span.symm
  map_add' := span_union
  map_mul' s t := by
    dsimp only -- porting note: new, needed due to new-style structures
    rw [SetSemiring.down_mul, span_mul_span, ← image_mul_prod]
#align submodule.span.ring_hom Submodule.span.ringHom

section

variable {α : Type*} [Monoid α] [MulSemiringAction α A] [SMulCommClass α R A]

/-- The action on a submodule corresponding to applying the action to every element.

This is available as an instance in the `pointwise` locale.

This is a stronger version of `Submodule.pointwiseDistribMulAction`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant08ee8b5c093c729521cb1be673cadac7b274be2d8d64e89da4d2c3b4aeb36d37.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a4d40807a9515c2d6310cb87368777e3201ac8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

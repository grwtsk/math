# MulDistribMulActionSemiHomClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:531b696d7088e6eb9fa316632e03e520812a4e6ffe22bdcfc47e4082ee3a55e7",
  "kind": "class",
  "lexical_name": "MulDistribMulActionSemiHomClass",
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
  "slug": "muldistribmulactionsemihomclass--c8127c622615c1016e485b7d",
  "source": {
    "blob": "1e0be49d123175441151866f795c7a03c5aca38a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 651,
    "path": "GRWTSK/Algebra/GroupTheory/Hom/Variantd9ab767fdbc9d5463ee241e83400730c6813e79b56abaf4e5972a1ef5843896b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8127c622615c1016e485b7df54241571ef0ecd0eeccf7ed55d913b21097dca4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Hom/Variantd9ab767fdbc9d5463ee241e83400730c6813e79b56abaf4e5972a1ef5843896b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:531b696d7088e6eb9fa316632e03e520812a4e6ffe22bdcfc47e4082ee3a55e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 651–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class MulDistribMulActionSemiHomClass (F : Type*)
    {M N : outParam Type*} (φ : outParam (M → N))
    (A B : outParam Type*)
    [Monoid M] [Monoid N]
    [Monoid A] [Monoid B] [MulDistribMulAction M A] [MulDistribMulAction N B]
    [FunLike F A B] : Prop
    extends MulActionSemiHomClass F φ A B, MonoidHomClass F A B

/-- `MulDistribMulActionHomClass F M A B` states that `F` is a type of morphisms preserving
the monoid structure and equivariant with respect to the action of `M`.
It is an abbreviation to `MulDistribMulActionHomClass F (MonoidHom.id M) A B`
You should extend this class when you extend `MulDistribMulActionHom`. -/
@[to_additive (dont_translate := M) DistribMulActionHomClass
/-- `DistribMulActionHomClass F M A B` states that `F` is a type of morphisms preserving
the additive monoid structure and equivariant with respect to the action of `M`.
It is an abbreviation to `DistribMulActionHomClass F (MonoidHom.id M) A B`
You should extend this class when you extend `DistribMulActionHom`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Hom/Variantd9ab767fdbc9d5463ee241e83400730c6813e79b56abaf4e5972a1ef5843896b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Hom/Variantd9ab767fdbc9d5463ee241e83400730c6813e79b56abaf4e5972a1ef5843896b.lean#L651).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e0be49d123175441151866f795c7a03c5aca38a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

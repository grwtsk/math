# mulOneClass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:486c8c2360621c6a4d9dfce7520774d9cd7cc6fc59711bc15bcc9a61d14d2492",
  "kind": "def",
  "lexical_name": "mulOneClass",
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
  "slug": "muloneclass--e9d94bb70eac5affcf99fbc5",
  "source": {
    "blob": "63014fb466cb6b48331eecaedf7d9840b6b427fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 497,
    "line": 483,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9d94bb70eac5affcf99fbc56bfa8321a45779b84326e7ab86283c8a88855dd5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:486c8c2360621c6a4d9dfce7520774d9cd7cc6fc59711bc15bcc9a61d14d2492`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 483–497.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mulOneClass : MulOneClass (Filter α) where
  one := 1
  mul := (· * ·)
  one_mul := map₂_left_identity one_mul
  mul_one := map₂_right_identity mul_one

scoped[Pointwise] attribute [instance] Filter.semigroup Filter.addSemigroup
  Filter.commSemigroup Filter.addCommSemigroup Filter.mulOneClass Filter.addZeroClass

variable [FunLike F α β]

/-- If `φ : α →* β` then `mapMonoidHom φ` is the monoid homomorphism
`Filter α →* Filter β` induced by `map φ`. -/
@[to_additive "If `φ : α →+ β` then `mapAddMonoidHom φ` is the monoid homomorphism
`Filter α →+ Filter β` induced by `map φ`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantb759cfc69c8606b8f2f75171c610b24dd107be39204c0b737e5f55b9a30ce7d9.lean#L483).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63014fb466cb6b48331eecaedf7d9840b6b427fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

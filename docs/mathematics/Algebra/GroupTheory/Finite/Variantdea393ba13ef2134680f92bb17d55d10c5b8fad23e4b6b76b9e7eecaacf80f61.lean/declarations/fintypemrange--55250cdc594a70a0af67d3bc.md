# fintypeMrange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ceb500b55a27b9bad58a47d336df20626bc39bdc6787831d43c641051fa7130e",
  "kind": "instance",
  "lexical_name": "fintypeMrange",
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
  "slug": "fintypemrange--55250cdc594a70a0af67d3bc",
  "source": {
    "blob": "679066e4d247c6bf1f5890a55c46e67e2ca0d554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 314,
    "line": 301,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:55250cdc594a70a0af67d3bc655a914ffc017d8e7637ce91a8ce63fbb67c3b26",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ceb500b55a27b9bad58a47d336df20626bc39bdc6787831d43c641051fa7130e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 301–314.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fintypeMrange {M N : Type*} [Monoid M] [Monoid N] [Fintype M] [DecidableEq N]
    (f : M →* N) : Fintype (mrange f) :=
  Set.fintypeRange f
#align monoid_hom.fintype_mrange MonoidHom.fintypeMrange
#align add_monoid_hom.fintype_mrange AddMonoidHom.fintypeMrange

/-- The range of a finite group under a group homomorphism is finite.

Note: this instance can form a diamond with `Subtype.fintype` or `Subgroup.fintype` in the
presence of `Fintype N`. -/
@[to_additive "The range of a finite additive group under an additive group homomorphism is finite.

Note: this instance can form a diamond with `Subtype.fintype` or `Subgroup.fintype` in the
 presence of `Fintype N`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean#L301).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679066e4d247c6bf1f5890a55c46e67e2ca0d554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

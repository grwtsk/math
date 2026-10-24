# decidableMemRange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a47b808cac8640dd4334b709b39cbde8f8acfea88b8e192ba1cacac9dd384965",
  "kind": "instance",
  "lexical_name": "decidableMemRange",
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
  "slug": "decidablememrange--bdb95dc6676bd9203fe64e69",
  "source": {
    "blob": "679066e4d247c6bf1f5890a55c46e67e2ca0d554",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 286,
    "path": "GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdb95dc6676bd9203fe64e6930467bbe7ad99b9053098bab100d645b12fbd1f1",
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

Occurrence: `declaration:a47b808cac8640dd4334b709b39cbde8f8acfea88b8e192ba1cacac9dd384965`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableMemRange (f : G →* N) [Fintype G] [DecidableEq N] : DecidablePred (· ∈ f.range) :=
  fun _ => Fintype.decidableExistsFintype
#align monoid_hom.decidable_mem_range MonoidHom.decidableMemRange
#align add_monoid_hom.decidable_mem_range AddMonoidHom.decidableMemRange

-- this instance can't go just after the definition of `mrange` because `Fintype` is
-- not imported at that stage
/-- The range of a finite monoid under a monoid homomorphism is finite.
Note: this instance can form a diamond with `Subtype.fintype` in the
presence of `Fintype N`. -/
@[to_additive "The range of a finite additive monoid under an additive monoid homomorphism is
 finite.

Note: this instance can form a diamond with `Subtype.fintype` or `Subgroup.fintype` in the presence
of `Fintype N`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Finite/Variantdea393ba13ef2134680f92bb17d55d10c5b8fad23e4b6b76b9e7eecaacf80f61.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679066e4d247c6bf1f5890a55c46e67e2ca0d554` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

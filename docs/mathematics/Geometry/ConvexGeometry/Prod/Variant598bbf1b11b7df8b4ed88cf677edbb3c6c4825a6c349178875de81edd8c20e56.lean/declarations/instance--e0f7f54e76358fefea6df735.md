# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:113bcd835e1858006b2605cded954bab35d527dc1e3984c945805a91c9c8a0ee",
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
  "slug": "instance--e0f7f54e76358fefea6df735",
  "source": {
    "blob": "8ec48602142278cd3c8903d7d95b243185bdd6a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 97,
    "path": "GRWTSK/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0f7f54e76358fefea6df73562ccf0a46e78f361a1ae7c54ea9e83cac648a98c",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:113bcd835e1858006b2605cded954bab35d527dc1e3984c945805a91c9c8a0ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [∀ i, ConvexSpace S (X i)] [∀ i, IsConvexCombComm R S (X i)] :
    IsConvexCombComm R S (∀ i, X i) where
  iConvexComb_comm' f g := by ext i; simpa using iConvexComb_comm f g fun e k ↦ e k i

end Pi

namespace Finsupp
variable {ι : Type*} {X : Type*} [Zero X] [ConvexSpace R X] {i : ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Prod/Variant598bbf1b11b7df8b4ed88cf677edbb3c6c4825a6c349178875de81edd8c20e56.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec48602142278cd3c8903d7d95b243185bdd6a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

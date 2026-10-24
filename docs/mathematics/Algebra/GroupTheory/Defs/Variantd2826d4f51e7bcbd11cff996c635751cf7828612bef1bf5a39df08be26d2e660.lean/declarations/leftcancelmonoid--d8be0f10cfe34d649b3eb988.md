# LeftCancelMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99567a3ec25314b06992d7617c7a9b67e32d553cfc734a51cb646e3e3ee518fc",
  "kind": "class",
  "lexical_name": "LeftCancelMonoid",
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
  "slug": "leftcancelmonoid--d8be0f10cfe34d649b3eb988",
  "source": {
    "blob": "9616cb3e7e2a09560f7e41c0b5ac43aef8caf9af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 670,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8be0f10cfe34d649b3eb98809b87a4b5417ef3e88df96ba05ca52c57324a495",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99567a3ec25314b06992d7617c7a9b67e32d553cfc734a51cb646e3e3ee518fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 670–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LeftCancelMonoid (M : Type u) extends Monoid M, LeftCancelSemigroup M

attribute [instance 75] LeftCancelMonoid.toMonoid -- See note [lower cancel priority]

end LeftCancelMonoid

section RightCancelMonoid

/-- An additive monoid in which addition is right-cancellative.
Main examples are `ℕ` and groups. This is the right typeclass for many sum lemmas, as having a zero
is useful to define the sum over the empty set, so `AddRightCancelSemigroup` is not enough. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variantd2826d4f51e7bcbd11cff996c635751cf7828612bef1bf5a39df08be26d2e660.lean#L670).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9616cb3e7e2a09560f7e41c0b5ac43aef8caf9af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Scheme.Hom.finrank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d90e82ff91b92da069c6ced5e79d160a20412dd4203fc77a1f206f4dca48ded7",
  "kind": "def",
  "lexical_name": "Scheme.Hom.finrank",
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
  "slug": "scheme-hom-finrank--96cee4c8e7ac7f1aa1a00c12",
  "source": {
    "blob": "a7cce39dcb92ad68c034d0b3acef4f8d65e8c668",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 88,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96cee4c8e7ac7f1aa1a00c1243e27b988e430e3d7b24df851416df73ba2583a3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d90e82ff91b92da069c6ced5e79d160a20412dd4203fc77a1f206f4dca48ded7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Scheme.Hom.finrank {X S : Scheme.{u}} (f : X ⟶ S) (s : S) : ℕ :=
  IsAffine.finrank (pullback.snd f (S.affineOpenCover.f <| S.affineOpenCover.idx s))
    (S.affineOpenCover.covers s).choose

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FlatRank/Variantc21c8be96ec05a8c1083ece8823234431568758b64497be727cbd36fb55d23f6.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7cce39dcb92ad68c034d0b3acef4f8d65e8c668` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

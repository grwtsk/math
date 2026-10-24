# toAffineSubspace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16bb6d625c1459497747ab09c8ff507c5f0cf1683075aebc5b178c56ec5d0bc6",
  "kind": "def",
  "lexical_name": "toAffineSubspace",
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
  "slug": "toaffinesubspace--1aa8440d7410d7987007796d",
  "source": {
    "blob": "6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1aa8440d7410d7987007796d828aabef02f691fc1b34c452363e53fb65f1dac2",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16bb6d625c1459497747ab09c8ff507c5f0cf1683075aebc5b178c56ec5d0bc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toAffineSubspace (p : Submodule k V) : AffineSubspace k V where
  carrier := p
  smul_vsub_vadd_mem _ _ _ _ h₁ h₂ h₃ := p.add_mem (p.smul_mem _ (p.sub_mem h₁ h₂)) h₃
#align submodule.to_affine_subspace Submodule.toAffineSubspace

end Submodule

namespace AffineSubspace

variable (k : Type*) {V : Type*} (P : Type*) [Ring k] [AddCommGroup V] [Module k V]
  [AffineSpace V P]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/AffineSubspace/Variant8e8ab7f0c29b846101387508ab6900739bd127c8209a662d5231a75f80d614df.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c557cf5ad79eb22b8af5075d902d7d3ee0c80f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

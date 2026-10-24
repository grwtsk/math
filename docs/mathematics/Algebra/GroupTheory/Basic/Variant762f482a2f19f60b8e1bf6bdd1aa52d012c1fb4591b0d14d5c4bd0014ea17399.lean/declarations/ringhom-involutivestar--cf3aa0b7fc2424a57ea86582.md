# RingHom.involutiveStar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:16db3c5ed702c09db7774807ca41fe5924149f976e1105f4dea7f2882165199b",
  "kind": "instance",
  "lexical_name": "RingHom.involutiveStar",
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
  "slug": "ringhom-involutivestar--cf3aa0b7fc2424a57ea86582",
  "source": {
    "blob": "e80068786d48080aa34fb5c8a2468f5ffeb7f531",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 396,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cf3aa0b7fc2424a57ea86582a395d64dc7355d132af63af59925f4c7b88c9830",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:16db3c5ed702c09db7774807ca41fe5924149f976e1105f4dea7f2882165199b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RingHom.involutiveStar {S : Type*} [NonAssocSemiring S] [CommSemiring R] [StarRing R] :
    InvolutiveStar (S →+* R) where
  toStar := { star := fun f => RingHom.comp (starRingEnd R) f }
  star_involutive := by
    intro
    ext
    simp only [RingHom.coe_comp, Function.comp_apply, starRingEnd_self_apply]
#align ring_hom.has_involutive_star RingHom.involutiveStar

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant762f482a2f19f60b8e1bf6bdd1aa52d012c1fb4591b0d14d5c4bd0014ea17399.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e80068786d48080aa34fb5c8a2468f5ffeb7f531` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

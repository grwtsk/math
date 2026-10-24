# toNonUnitalRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf12b5528adf515419bfa2e6129390b7a2e3c63440ee55163f5f71c7fe14bd55",
  "kind": "def",
  "lexical_name": "toNonUnitalRingHom",
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
  "slug": "tononunitalringhom--bfbc951fb517d5006f411643",
  "source": {
    "blob": "291edc877528b5edfc8d4536327f4605a1d4bca8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 621,
    "line": 618,
    "path": "GRWTSK/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfbc951fb517d5006f41164315b46409b0e2d4f2266ed85b88c6e6c9f91c0147",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf12b5528adf515419bfa2e6129390b7a2e3c63440ee55163f5f71c7fe14bd55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 618–621.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNonUnitalRingHom (e : R ≃+* S) : R →ₙ+* S :=
  { e.toMulEquiv.toMulHom, e.toAddEquiv.toAddMonoidHom with }
#align ring_equiv.to_non_unital_ring_hom RingEquiv.toNonUnitalRingHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Equiv/Variantaab2c36e9656bce1d5906c09622bea3c2d47cae4ae203b178f6131211c17939a.lean#L618).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291edc877528b5edfc8d4536327f4605a1d4bca8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# eqSlocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:329ec4f4810a6fe223799b8f26fa05ab9a70257a58c7c888241325d23676e5d6",
  "kind": "def",
  "lexical_name": "eqSlocus",
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
  "slug": "eqslocus--6fdb23d2c8ad32629deb518e",
  "source": {
    "blob": "c6d2bf85f55ab7f81d3c5e478f48fd8a325279d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 912,
    "line": 906,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6fdb23d2c8ad32629deb518e1444c65b508386f4cd500c7d13c49d76a1a98409",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:329ec4f4810a6fe223799b8f26fa05ab9a70257a58c7c888241325d23676e5d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 906–912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def eqSlocus (f g : F) : NonUnitalSubsemiring R :=
  { (f : R →ₙ* S).eqLocus (g : R →ₙ* S), (f : R →+ S).eqLocusM g with
    carrier := { x | f x = g x } }
#align non_unital_ring_hom.eq_slocus NonUnitalRingHom.eqSlocus

/-- If two non-unital ring homomorphisms are equal on a set, then they are equal on its
non-unital subsemiring closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant70bf0fe1f8a9bda11aac2f249a0d5610bb110f5756986e2d16fc39bbfb458e11.lean#L906).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6d2bf85f55ab7f81d3c5e478f48fd8a325279d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

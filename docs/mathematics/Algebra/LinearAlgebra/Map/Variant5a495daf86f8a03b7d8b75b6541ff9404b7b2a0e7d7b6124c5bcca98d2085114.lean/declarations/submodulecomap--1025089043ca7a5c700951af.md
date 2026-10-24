# submoduleComap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ecdc62bd989d1312d69c424439cdec891fcb1c14c29ad5b8d29c1445908eee60",
  "kind": "def",
  "lexical_name": "submoduleComap",
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
  "slug": "submodulecomap--1025089043ca7a5c700951af",
  "source": {
    "blob": "3ec64724458d6bc9c389f28e00143ae6603a9b24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 644,
    "line": 642,
    "path": "GRWTSK/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1025089043ca7a5c700951af004f9dde1a5b1a107a7cd067c5ab25f613b59508",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ecdc62bd989d1312d69c424439cdec891fcb1c14c29ad5b8d29c1445908eee60`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–644.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def submoduleComap (f : M →ₗ[R] M₁) (q : Submodule R M₁) : q.comap f →ₗ[R] q :=
  f.restrict fun _ ↦ Submodule.mem_comap.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Map/Variant5a495daf86f8a03b7d8b75b6541ff9404b7b2a0e7d7b6124c5bcca98d2085114.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ec64724458d6bc9c389f28e00143ae6603a9b24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

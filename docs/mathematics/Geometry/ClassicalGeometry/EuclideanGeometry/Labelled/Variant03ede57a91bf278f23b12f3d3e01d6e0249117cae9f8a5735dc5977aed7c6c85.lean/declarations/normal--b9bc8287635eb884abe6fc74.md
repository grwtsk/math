# Normal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a676d04cb18f788f706873b069042759c4d5800e4c39a13fad1ad234c0cec0e",
  "kind": "def",
  "lexical_name": "Normal",
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
  "slug": "normal--b9bc8287635eb884abe6fc74",
  "source": {
    "blob": "f89b53b22fb5c4bd4e3ea1cad0cfa6744a4dc606",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 753,
    "line": 746,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9bc8287635eb884abe6fc7481b151a30afde1ce1bc8ca224df5d4f2cc3ecdcf",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a676d04cb18f788f706873b069042759c4d5800e4c39a13fad1ad234c0cec0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–753.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Normal {S : Type u} (M : Expr S) : Prop := ∀ N, ¬ Beta M N

namespace Normal

section

variable {S : Type u} {M N : Expr S}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Labelled/Variant03ede57a91bf278f23b12f3d3e01d6e0249117cae9f8a5735dc5977aed7c6c85.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f89b53b22fb5c4bd4e3ea1cad0cfa6744a4dc606` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

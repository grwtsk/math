# invertibleOfInvertibleι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a3b5d4ff9a04c15502ad03bcd2472e76cf558f91eea096801f4ddcdd86523b9e",
  "kind": "def",
  "lexical_name": "invertibleOfInvertibleι",
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
  "slug": "invertibleofinvertible--9f294bdc626db2142099501c",
  "source": {
    "blob": "2fb4226d02a6d58354ec00fef919ea400ad9c82c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 64,
    "path": "GRWTSK/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f294bdc626db2142099501c024358b4a34a2692d3ab8ff7a302e36bacf8e4c6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a3b5d4ff9a04c15502ad03bcd2472e76cf558f91eea096801f4ddcdd86523b9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def invertibleOfInvertibleι (m : M) [Invertible (ι Q m)] : Invertible (Q m) :=
  ExteriorAlgebra.invertibleAlgebraMapEquiv M (Q m) <|
    .algebraMapOfInvertibleAlgebraMap (equivExterior Q).toLinearMap (by simp) <|
      .copy (.mul ‹Invertible (ι Q m)› ‹Invertible (ι Q m)›) _ (ι_sq_scalar _ _).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Inversion/Variant6113ebc44694b5dea3ed290915193ae62c641216fc27689e154a72027aa86fad.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fb4226d02a6d58354ec00fef919ea400ad9c82c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

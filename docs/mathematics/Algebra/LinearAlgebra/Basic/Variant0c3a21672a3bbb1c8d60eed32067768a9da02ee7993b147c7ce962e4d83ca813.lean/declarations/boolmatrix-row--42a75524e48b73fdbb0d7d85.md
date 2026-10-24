# BoolMatrix.row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:df9ecc8ed7334149c8cce81b84decd6a4f4a0127ab86ab723baa602889099115",
  "kind": "def",
  "lexical_name": "BoolMatrix.row",
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
  "slug": "boolmatrix-row--42a75524e48b73fdbb0d7d85",
  "source": {
    "blob": "904021f1e90e2e69c40d2242cce6c0761ca9be55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42a75524e48b73fdbb0d7d85598594dcd5a54b84756ee6f17587d3419f220efa",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:df9ecc8ed7334149c8cce81b84decd6a4f4a0127ab86ab723baa602889099115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def BoolMatrix.row
    (A : BoolMatrix rows cols)
    (i : Fin rows) :
    Fin cols → Bool :=
  fun j => A i j

/-- The column indexed by `j`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant0c3a21672a3bbb1c8d60eed32067768a9da02ee7993b147c7ce962e4d83ca813.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `904021f1e90e2e69c40d2242cce6c0761ca9be55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

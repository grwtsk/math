# entryAddHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c442af2d4ffc5bb66415042b9f0ebc47b204722ae3c2a50d935ca7f4868e6ebb",
  "kind": "def",
  "lexical_name": "entryAddHom",
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
  "slug": "entryaddhom--fd2c002850a9e33d4a2ad5bb",
  "source": {
    "blob": "059cf13371418aa322f014e88dca4ec9a6e7cf28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 275,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fd2c002850a9e33d4a2ad5bb4550d753fd62fc0a3cb82f9040d9eabe61c9b72f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c442af2d4ffc5bb66415042b9f0ebc47b204722ae3c2a50d935ca7f4868e6ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def entryAddHom (i : m) (j : n) : AddHom (Matrix m n α) α where
  toFun M := M i j
  map_add' _ _ := rfl

-- It is necessary to spell out the name of the coercion explicitly on the RHS
-- for unification to succeed
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfd8cab9e5ab6568a12306feab85f74b81487d99b1b3fac6769e4cd06c1d7722c.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `059cf13371418aa322f014e88dca4ec9a6e7cf28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

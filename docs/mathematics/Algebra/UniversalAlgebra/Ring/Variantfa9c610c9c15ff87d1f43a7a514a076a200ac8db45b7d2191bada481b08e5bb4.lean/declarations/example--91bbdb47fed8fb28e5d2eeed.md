# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd9b40b918fcc25249b188351774fe74ee70b41c9022d24af5b523ad8ff80653",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--91bbdb47fed8fb28e5d2eeed",
  "source": {
    "blob": "27effbad673b197074869cd2f2d11ae1069e5363",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 32,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:91bbdb47fed8fb28e5d2eeeded6326bd34900e9dfc102e12f0066091fdd13e5a",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd9b40b918fcc25249b188351774fe74ee70b41c9022d24af5b523ad8ff80653`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (x y : ℝ) : (x + y) ^ 3 = x ^ 3 + y ^ 3 + 3 * (x * y ^ 2 + x ^ 2 * y) := by ring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ring/Variantfa9c610c9c15ff87d1f43a7a514a076a200ac8db45b7d2191bada481b08e5bb4.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27effbad673b197074869cd2f2d11ae1069e5363` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# negAddY

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d7cc7cc02cc5112ee333e0cad7810ce738114c19b57a3a36b012cd24070ad7f6",
  "kind": "def",
  "lexical_name": "negAddY",
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
  "slug": "negaddy--74b54af7ab799c22a0ec29ea",
  "source": {
    "blob": "4a8f4c270e03d36756a9c4a314108d1ece1e23f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 555,
    "line": 544,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74b54af7ab799c22a0ec29eada25bc21c120c51b21d3c6bf1ebafb40371aaf53",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d7cc7cc02cc5112ee333e0cad7810ce738114c19b57a3a36b012cd24070ad7f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 544–555.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def negAddY (P Q : Fin 3 → R) : R :=
  -P y * Q x ^ 3 * P z ^ 3 + 2 * P y * Q y ^ 2 * P z ^ 3 - 3 * P x ^ 2 * Q x * Q y * P z ^ 2 * Q z
    + 3 * P x * P y * Q x ^ 2 * P z * Q z ^ 2 + P x ^ 3 * Q y * Q z ^ 3
    - 2 * P y ^ 2 * Q y * Q z ^ 3 + W'.a₁ * P x * Q y ^ 2 * P z ^ 4
    + W'.a₁ * P y * Q x * Q y * P z ^ 3 * Q z - W'.a₁ * P x * P y * Q y * P z * Q z ^ 3
    - W'.a₁ * P y ^ 2 * Q x * Q z ^ 4 - 2 * W'.a₂ * P x * Q x * Q y * P z ^ 4 * Q z
    + 2 * W'.a₂ * P x * P y * Q x * P z * Q z ^ 4 + W'.a₃ * Q y ^ 2 * P z ^ 6
    - W'.a₃ * P y ^ 2 * Q z ^ 6 - W'.a₄ * Q x * Q y * P z ^ 6 * Q z
    - W'.a₄ * P x * Q y * P z ^ 4 * Q z ^ 3 + W'.a₄ * P y * Q x * P z ^ 3 * Q z ^ 4
    + W'.a₄ * P x * P y * P z * Q z ^ 6 - 2 * W'.a₆ * Q y * P z ^ 6 * Q z ^ 3
    + 2 * W'.a₆ * P y * P z ^ 3 * Q z ^ 6

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Formula/Variant22eb1c881e94af2d17aae2a6632555bc728fef7af1e9e84b95b8ab13e87d9e68.lean#L544).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a8f4c270e03d36756a9c4a314108d1ece1e23f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

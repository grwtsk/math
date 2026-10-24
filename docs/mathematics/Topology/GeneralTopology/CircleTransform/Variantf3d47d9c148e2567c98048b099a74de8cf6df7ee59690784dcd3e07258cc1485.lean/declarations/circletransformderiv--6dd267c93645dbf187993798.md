# circleTransformDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3f2bf828b6963b8184776daae97fe3db8e84f217cc984158f68cbdeb65966958",
  "kind": "def",
  "lexical_name": "circleTransformDeriv",
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
  "slug": "circletransformderiv--6dd267c93645dbf187993798",
  "source": {
    "blob": "4996f048a5c3204a64f128ea84988d95c9f5f44f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6dd267c93645dbf187993798c307c39c3e43b6c5315e04816f6d7fee36c4d93a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3f2bf828b6963b8184776daae97fe3db8e84f217cc984158f68cbdeb65966958`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def circleTransformDeriv (f : ℂ → E) (θ : ℝ) : E :=
  (2 * ↑π * I)⁻¹ • deriv (circleMap z R) θ • ((circleMap z R θ - w) ^ 2)⁻¹ • f (circleMap z R θ)
#align complex.circle_transform_deriv Complex.circleTransformDeriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CircleTransform/Variantf3d47d9c148e2567c98048b099a74de8cf6df7ee59690784dcd3e07258cc1485.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4996f048a5c3204a64f128ea84988d95c9f5f44f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

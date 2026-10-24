# MDifferentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3551fd5c8df2fa95623e5aa20666ac5ebf066cbbb230d4499f7e754e4dd6f99f",
  "kind": "def",
  "lexical_name": "MDifferentiableAt",
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
  "slug": "mdifferentiableat--28c2008165cc1ca327a6b91e",
  "source": {
    "blob": "e4a5653f1c80fac7aa9fa904409bcada1d6759d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 244,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:28c2008165cc1ca327a6b91e396dc063b87547e2116bec15c79861d322cccf46",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3551fd5c8df2fa95623e5aa20666ac5ebf066cbbb230d4499f7e754e4dd6f99f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MDifferentiableAt (f : M → M') (x : M) :=
  LiftPropAt (DifferentiableWithinAtProp I I') f x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variantb9aa59c41d7d8f87f1b984d9fc944cfa6cc36b4c4e65fe78aab10a41efbc333e.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4a5653f1c80fac7aa9fa904409bcada1d6759d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

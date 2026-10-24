# MDifferentiableWithinAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:627a996be438b05f07f447053afc352d7f01b10799dae8780c06cd5a6779b7e3",
  "kind": "def",
  "lexical_name": "MDifferentiableWithinAt",
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
  "slug": "mdifferentiablewithinat--280c7fbd28bd1163e61180b2",
  "source": {
    "blob": "11a5df6a2c9d5199fc0b85f34a824e029a40551f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 219,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:280c7fbd28bd1163e61180b2c3ddb9ffe3b03e1529a8f3cff11f08f640f322ba",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:627a996be438b05f07f447053afc352d7f01b10799dae8780c06cd5a6779b7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MDifferentiableWithinAt (f : M → M') (s : Set M) (x : M) :=
  LiftPropWithinAt (DifferentiableWithinAtProp I I') f s x

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Defs/Variant82f900dcbb902404263aabf69d2366e47d80dbaf5c27c69114ee002f10fc7abc.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11a5df6a2c9d5199fc0b85f34a824e029a40551f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# smoothLeftMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9b9d795e65d4ed4d96f69e0f67cebdf6d324bb56abebbfdd324f3cee22a6df0",
  "kind": "def",
  "lexical_name": "smoothLeftMul",
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
  "slug": "smoothleftmul--cce1dcb5a4a5d00513e45012",
  "source": {
    "blob": "96e852a03c2205777714e4d3cfd42f07f1460685",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant22a938469f5939ada67506b4aa6d3966283d5bcf4ac47e971e09bd808f3c2707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cce1dcb5a4a5d00513e45012f401f1cedb95696274be964589beaca5e2c08bd6",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Monoid/Variant22a938469f5939ada67506b4aa6d3966283d5bcf4ac47e971e09bd808f3c2707.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9b9d795e65d4ed4d96f69e0f67cebdf6d324bb56abebbfdd324f3cee22a6df0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smoothLeftMul : C^∞⟮I, G; I, G⟯ :=
  ⟨(g * ·), contMDiff_mul_left⟩

/-- Right multiplication by `g`. It is meant to mimic the usual notation in Lie groups.
Used mostly through the notation `𝑹`.
Lemmas involving `smoothRightMul` with the notation `𝑹` usually use `R` instead of `𝑹` in the
names. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variant22a938469f5939ada67506b4aa6d3966283d5bcf4ac47e971e09bd808f3c2707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant22a938469f5939ada67506b4aa6d3966283d5bcf4ac47e971e09bd808f3c2707.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96e852a03c2205777714e4d3cfd42f07f1460685` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

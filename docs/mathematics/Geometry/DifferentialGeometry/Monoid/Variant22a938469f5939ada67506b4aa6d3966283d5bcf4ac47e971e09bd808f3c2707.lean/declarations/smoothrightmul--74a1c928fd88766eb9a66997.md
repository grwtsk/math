# smoothRightMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a95be976c7f745ecdccef7e1de1377303f1a2398f7fb7b7acb770dabd56fa7e",
  "kind": "def",
  "lexical_name": "smoothRightMul",
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
  "slug": "smoothrightmul--74a1c928fd88766eb9a66997",
  "source": {
    "blob": "96e852a03c2205777714e4d3cfd42f07f1460685",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 205,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant22a938469f5939ada67506b4aa6d3966283d5bcf4ac47e971e09bd808f3c2707.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74a1c928fd88766eb9a66997ba7add3c9a55c1e14bacf4db5e10608a9e3925f8",
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

Occurrence: `declaration:6a95be976c7f745ecdccef7e1de1377303f1a2398f7fb7b7acb770dabd56fa7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def smoothRightMul : C^∞⟮I, G; I, G⟯ :=
  ⟨(· * g), contMDiff_mul_right⟩

-- Left multiplication. The abbreviation is `MIL`.
@[inherit_doc] scoped[LieGroup] notation "𝑳" => smoothLeftMul

-- Right multiplication. The abbreviation is `MIR`.
@[inherit_doc] scoped[LieGroup] notation "𝑹" => smoothRightMul

open scoped LieGroup

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Monoid/Variant22a938469f5939ada67506b4aa6d3966283d5bcf4ac47e971e09bd808f3c2707.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Monoid/Variant22a938469f5939ada67506b4aa6d3966283d5bcf4ac47e971e09bd808f3c2707.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96e852a03c2205777714e4d3cfd42f07f1460685` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

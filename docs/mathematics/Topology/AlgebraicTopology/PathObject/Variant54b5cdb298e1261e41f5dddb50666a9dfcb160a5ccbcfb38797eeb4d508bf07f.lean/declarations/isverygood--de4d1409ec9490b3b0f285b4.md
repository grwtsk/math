# IsVeryGood

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2fb83c4501e45a4a02650cec9bd772b8cfad0142bf71756d8c87601a43eb9f0c",
  "kind": "class",
  "lexical_name": "IsVeryGood",
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
  "slug": "isverygood--de4d1409ec9490b3b0f285b4",
  "source": {
    "blob": "59b53975adda92724ea86cf0347a907358b2677e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 188,
    "path": "GRWTSK/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de4d1409ec9490b3b0f285b42b981d65bb7c97aad13f45a9b85bb0d3d47708cd",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2fb83c4501e45a4a02650cec9bd772b8cfad0142bf71756d8c87601a43eb9f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsVeryGood [HasBinaryProduct A A] [CategoryWithFibrations C]
    [CategoryWithCofibrations C] : Prop extends P.IsGood where
  cofibration_ι : Cofibration P.ι := by infer_instance

attribute [instance] IsGood.fibration_p IsVeryGood.cofibration_ι

section

variable [HasBinaryProduct A A] [CategoryWithFibrations C]
  [HasTerminal C] [(fibrations C).IsStableUnderComposition]
  [(fibrations C).IsStableUnderBaseChange]
  [IsFibrant A] [P.IsGood]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/PathObject/Variant54b5cdb298e1261e41f5dddb50666a9dfcb160a5ccbcfb38797eeb4d508bf07f.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59b53975adda92724ea86cf0347a907358b2677e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

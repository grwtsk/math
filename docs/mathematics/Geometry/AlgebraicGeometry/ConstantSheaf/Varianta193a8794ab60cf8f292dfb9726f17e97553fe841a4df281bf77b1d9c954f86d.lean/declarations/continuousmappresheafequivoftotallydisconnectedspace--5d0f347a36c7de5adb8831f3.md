# continuousMapPresheafEquivOfTotallyDisconnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25063f9448bba0f72eb8fbae2497e3b154f48720eedbb426858334f5a3098f03",
  "kind": "def",
  "lexical_name": "continuousMapPresheafEquivOfTotallyDisconnectedSpace",
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
  "slug": "continuousmappresheafequivoftotallydisconnectedspace--5d0f347a36c7de5adb8831f3",
  "source": {
    "blob": "b3a072a65110fee685ff0c06a442877d4ce643f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 89,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ConstantSheaf/Varianta193a8794ab60cf8f292dfb9726f17e97553fe841a4df281bf77b1d9c954f86d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5d0f347a36c7de5adb8831f3a877def5b0faf7d4c600f2e6acbaa5be912cab62",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ConstantSheaf/Varianta193a8794ab60cf8f292dfb9726f17e97553fe841a4df281bf77b1d9c954f86d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25063f9448bba0f72eb8fbae2497e3b154f48720eedbb426858334f5a3098f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMapPresheafEquivOfTotallyDisconnectedSpace [TotallyDisconnectedSpace T]
    (U : Scheme.{u}) :
    (continuousMapPresheaf T).obj (.op U) ≃ C(ConnectedComponents U, T) where
  toFun f := ⟨f.continuous.connectedComponentsLift, f.continuous.connectedComponentsLift_continuous⟩
  invFun f := .comp f ⟨ConnectedComponents.mk, ConnectedComponents.continuous_coe⟩
  right_inv f := by
    apply ContinuousMap.coe_injective
    dsimp
    exact (Continuous.connectedComponentsLift_unique _ _ (by simp)).symm

/-- `continuousMapPresheaf` as a presheaf of abelian groups associated to a topological abelian
group. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ConstantSheaf/Varianta193a8794ab60cf8f292dfb9726f17e97553fe841a4df281bf77b1d9c954f86d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ConstantSheaf/Varianta193a8794ab60cf8f292dfb9726f17e97553fe841a4df281bf77b1d9c954f86d.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3a072a65110fee685ff0c06a442877d4ce643f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

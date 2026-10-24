# continuousMapPresheafEquivOfTotallyDisconnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee7c36f9b35d6e31d38e840174b21a95562e6094fd4e40b133607580bc6502a8",
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
  "slug": "continuousmappresheafequivoftotallydisconnectedspace--ecf8e530a76cb81aa1e215a4",
  "source": {
    "blob": "319723015f35c44c7298df760bbfda9098f05162",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 97,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ecf8e530a76cb81aa1e215a413b7d4211399bd8b13b48a2dd7a6ea41fc6b29f3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee7c36f9b35d6e31d38e840174b21a95562e6094fd4e40b133607580bc6502a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–108.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ConstantSheaf/Variant4f48437b1eb4a937797d79b6aa937481add6021ddbe8805c3b079fce196f9233.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `319723015f35c44c7298df760bbfda9098f05162` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# equivClopens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bf99e137fbf531c646221c38124ac0df9512d040c9f618a887360f1e3db4f0c",
  "kind": "def",
  "lexical_name": "equivClopens",
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
  "slug": "equivclopens--8ba3ce0ad133e1247dc4968b",
  "source": {
    "blob": "fc42906995a029460daf3da9261d912b6f099641",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 512,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ba3ce0ad133e1247dc4968b729777e497d5a2a7de1c638586045a29bbbbc238",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bf99e137fbf531c646221c38124ac0df9512d040c9f618a887360f1e3db4f0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def equivClopens [∀ (s : Set X) x, Decidable (x ∈ s)] :
    LocallyConstant X (Fin 2) ≃ TopologicalSpace.Clopens X where
  toFun f := ⟨f ⁻¹' {0}, f.2.isClopen_fiber _⟩
  invFun s := ofIsClopen s.2
  left_inv _ := locallyConstant_eq_of_fiber_zero_eq _ _ (by simp)
  right_inv _ := by simp

end Equiv

section Piecewise

/-- Given two closed sets covering a topological space, and locally constant maps on these two sets,
    then if these two locally constant maps agree on the intersection, we get a piecewise defined
    locally constant map on the whole space.

TODO: Generalise this construction to `ContinuousMap`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Varianta5082c45877963d641221730c1cc290e0044cbb121a9b392def7770f5d679b42.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc42906995a029460daf3da9261d912b6f099641` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

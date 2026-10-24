# restrictNormalHom_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7989330d-2383-81d0-e35c-5441860feb6e",
  "kind": "theorem",
  "lexical_name": "restrictNormalHom_continuous",
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
  "slug": "restrictnormalhom-continuous--38f29ec7ebce78d53768f006",
  "source": {
    "blob": "13f49e52e51793b55bd28c7d503ad6e1eca5b9a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38f29ec7ebce78d53768f006b431e71d85861d1eb4c13840dd3a3b5d7bb96252",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7989330d-2383-81d0-e35c-5441860feb6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem restrictNormalHom_continuous (L : IntermediateField k K) [Normal k L] :
    Continuous (AlgEquiv.restrictNormalHom (F := k) (K₁ := K) L) := by
  apply continuous_of_continuousAt_one _ (continuousAt_def.mpr _)
  intro N hN
  rw [map_one, krullTopology_mem_nhds_one_iff] at hN
  obtain ⟨L', _, hO⟩ := hN
  have := Module.Finite.equiv <| AlgEquiv.toLinearEquiv <| IntermediateField.liftAlgEquiv L'
  apply mem_nhds_iff.mpr
  use (IntermediateField.lift L').fixingSubgroup
  constructor
  · intro x hx
    apply hO
    simp only [SetLike.mem_coe, IntermediateField.mem_fixingSubgroup_iff] at hx ⊢
    intro y hy
    have := AlgEquiv.restrictNormal_commutes x L y
    dsimp at this
    rw [hx y.1 ((IntermediateField.mem_lift y).mpr hy)] at this
    exact SetLike.coe_eq_coe.mp this
  · exact ⟨IntermediateField.fixingSubgroup_isOpen (IntermediateField.lift L'), congrFun rfl⟩

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant6197489561160f50b5ab91b41a7b8ed020b19cf9dc4c624ce7fd4ed5514c7724.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13f49e52e51793b55bd28c7d503ad6e1eca5b9a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

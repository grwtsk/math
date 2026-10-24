# covolume_div_covolume_eq_relIndex'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac4c33b9747034c47160e466e612fa157f61bef8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 170,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13bc7d9b-c334-635f-0803-58ca5b4e252f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04fb5711-bd3f-016f-7ae8-e3c4ffa334d7",
  "kind": "theorem",
  "lexical_name": "covolume_div_covolume_eq_relIndex'",
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
  "slug": "covolume-div-covolume-eq-relindex--fa994777cdde2cf64001ed55",
  "source": {
    "blob": "ac4c33b9747034c47160e466e612fa157f61bef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 170,
    "path": "GRWTSK/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa994777cdde2cf64001ed55cc7f7bc9af31aeaf4013f60cfb85f4a48706c028",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04fb5711-bd3f-016f-7ae8-e3c4ffa334d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem covolume_div_covolume_eq_relIndex' {E : Type*} [NormedAddCommGroup E]
    [InnerProductSpace ℝ E] [FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E]
    (L₁ L₂ : Submodule ℤ E) [DiscreteTopology L₁] [IsZLattice ℝ L₁] [DiscreteTopology L₂]
    [IsZLattice ℝ L₂] (h : L₁ ≤ L₂) :
    covolume L₁ / covolume L₂ = L₁.toAddSubgroup.relIndex L₂.toAddSubgroup := by
  let f := (EuclideanSpace.equiv _ ℝ).symm.trans
    (stdOrthonormalBasis ℝ E).repr.toContinuousLinearEquiv.symm
  have hf : MeasurePreserving f := (stdOrthonormalBasis ℝ E).measurePreserving_repr_symm.comp
    (EuclideanSpace.volume_preserving_symm_measurableEquiv_toLp _).symm
  rw [← covolume_comap L₁ volume volume hf, ← covolume_comap L₂ volume volume hf,
    covolume_div_covolume_eq_relIndex _ _ (fun _ h' ↦ h h'), ZLattice.comap_toAddSubgroup,
    ZLattice.comap_toAddSubgroup, Nat.cast_inj, LinearEquiv.toAddMonoidHom_commutes,
    AddSubgroup.comap_equiv_eq_map_symm', AddSubgroup.comap_equiv_eq_map_symm',
    AddSubgroup.relIndex_map_map_of_injective _ _ f.symm.injective]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Covolume/Variant28a3ca4c2ee659c30a263598c5216253a7a81aef01ca2630b3811ba74c00a99e.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac4c33b9747034c47160e466e612fa157f61bef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

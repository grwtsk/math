# IsUltraUniformity.separationQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f51676ab86c5e81df66a475d03a90cff44824dc91044005c5e0c5b10d60eb27b",
  "kind": "instance",
  "lexical_name": "IsUltraUniformity.separationQuotient",
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
  "slug": "isultrauniformity-separationquotient--b45fdfabca9b1ef57e40ec53",
  "source": {
    "blob": "cc12df8a99712ed4324b424eebd4a12a2d4d1d24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b45fdfabca9b1ef57e40ec5371b9a88a622c908dd2c96602d3ba795a2f21c263",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f51676ab86c5e81df66a475d03a90cff44824dc91044005c5e0c5b10d60eb27b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance IsUltraUniformity.separationQuotient [IsUltraUniformity X] :
    IsUltraUniformity (SeparationQuotient X) := by
  have := IsUltraUniformity.hasBasis.map
    (Prod.map SeparationQuotient.mk (SeparationQuotient.mk (X := X)))
  rw [← SeparationQuotient.uniformity_eq] at this
  apply mk_of_hasBasis this
  · exact fun _ ⟨_, hU, _⟩ ↦ by rw [id_eq]; infer_instance
  · rintro U ⟨hU', _, hU⟩
    constructor
    rintro x y z
    simp only [id_eq, Set.mem_image, Prod.exists, Prod.map_apply, Prod.mk.injEq,
      forall_exists_index, and_imp]
    rintro a b hab rfl rfl c d hcd hc rfl
    have hbc : (b, c) ∈ U := by
      rw [eq_comm, SeparationQuotient.mk_eq_mk, inseparable_iff_ker_uniformity,
          Filter.mem_ker] at hc
      exact hc _ hU'
    exact ⟨a, d, U.trans (U.trans hab hbc) hcd, by simp, by simp⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Completion/Variant4c3a382596ec2881c7e0e7b40a3157031ee3f94bc38dbc2e6ca222db9a4276a6.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc12df8a99712ed4324b424eebd4a12a2d4d1d24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

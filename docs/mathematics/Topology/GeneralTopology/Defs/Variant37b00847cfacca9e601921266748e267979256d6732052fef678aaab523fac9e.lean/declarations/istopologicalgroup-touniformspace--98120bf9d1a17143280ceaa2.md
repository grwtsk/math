# IsTopologicalGroup.toUniformSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f5b649066f9883658328f02d36779de0a608df2d18762661942a47e26e349a68",
  "kind": "def",
  "lexical_name": "IsTopologicalGroup.toUniformSpace",
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
  "slug": "istopologicalgroup-touniformspace--98120bf9d1a17143280ceaa2",
  "source": {
    "blob": "9fc8157b28fbbb48493e72656d22715a8e21e796",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 428,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98120bf9d1a17143280ceaa202545638412987da7e24d65d30f916b898f82498",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f5b649066f9883658328f02d36779de0a608df2d18762661942a47e26e349a68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 428–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsTopologicalGroup.toUniformSpace : UniformSpace G where
  uniformity := comap (fun p : G × G => p.2 / p.1) (𝓝 1)
  symm :=
    have : Tendsto (fun p : G × G ↦ (p.2 / p.1)⁻¹) (comap (fun p : G × G ↦ p.2 / p.1) (𝓝 1))
      (𝓝 1⁻¹) := tendsto_id.inv.comp tendsto_comap
    by simpa [tendsto_comap_iff]
  comp := Tendsto.le_comap fun U H ↦ by
    rcases exists_nhds_one_split H with ⟨V, V_nhds, V_mul⟩
    refine mem_map.2 (mem_of_superset (mem_lift' <| preimage_mem_comap V_nhds) ?_)
    rintro ⟨x, y⟩ ⟨z, hz₁, hz₂⟩
    simpa using V_mul _ hz₂ _ hz₁
  nhds_eq_comap_uniformity _ := by simp only [comap_comap, Function.comp_def, nhds_translation_div]

attribute [local instance] IsTopologicalGroup.toUniformSpace

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant37b00847cfacca9e601921266748e267979256d6732052fef678aaab523fac9e.lean#L428).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9fc8157b28fbbb48493e72656d22715a8e21e796` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

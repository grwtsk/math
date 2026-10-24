# tendsto_chartRadius_at_north

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17fde6c3-ca9c-6a7b-2a64-637cf60a7388",
  "kind": "theorem",
  "lexical_name": "tendsto_chartRadius_at_north",
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
  "slug": "tendsto-chartradius-at-north--c3eee943cf43d21f89591d7b",
  "source": {
    "blob": "63764d7000b026218f8b0d028f51628a6fec13e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 341,
    "path": "GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3eee943cf43d21f89591d7b5b0ea63ce9079ab6af37aec9e55b20614dfd3dd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17fde6c3-ca9c-6a7b-2a64-637cf60a7388`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_chartRadius_at_north {a : ℝ} (ha : 0 < a) :
    Filter.Tendsto (fun θ : ℝ => a * Real.tan (θ / 2))
      (nhdsWithin Real.pi (Set.Iio Real.pi)) Filter.atTop := by
  have hhalf :
      Filter.Tendsto (fun θ : ℝ => θ / 2)
        (nhdsWithin Real.pi (Set.Iio Real.pi))
        (nhdsWithin (Real.pi / 2) (Set.Iio (Real.pi / 2))) := by
    refine tendsto_nhdsWithin_iff.mpr ⟨?_, ?_⟩
    · exact (Filter.tendsto_id.div_const 2).mono_left nhdsWithin_le_nhds
    · filter_upwards [eventually_mem_nhdsWithin] with θ hθ
      change θ / 2 < Real.pi / 2
      change θ < Real.pi at hθ
      linarith
  exact (Filter.tendsto_const_mul_atTop_of_pos ha).2
    (Real.tendsto_tan_pi_div_two.comp hhalf)

/-- The explicit algebraic equivalence between the punctured spheroid and its
Euclidean stereographic chart.  No topology is installed by this definition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SpheroidStereographic/Varianta1a1b45f96b43de872e4bb987501f8b1ba326c80955ea0eb511ffae493facb3d.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63764d7000b026218f8b0d028f51628a6fec13e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

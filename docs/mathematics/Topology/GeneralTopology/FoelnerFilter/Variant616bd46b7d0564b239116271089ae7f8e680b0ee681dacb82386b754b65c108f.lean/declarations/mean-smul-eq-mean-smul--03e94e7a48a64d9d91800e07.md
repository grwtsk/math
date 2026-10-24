# mean_smul_eq_mean_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7150aaf5-314c-7f3c-fbb0-32fd01a6cca6",
  "kind": "theorem",
  "lexical_name": "mean_smul_eq_mean_smul",
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
  "slug": "mean-smul-eq-mean-smul--03e94e7a48a64d9d91800e07",
  "source": {
    "blob": "9dc382502a9964b7efbbb15afdb03ea4e85504de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 177,
    "path": "GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03e94e7a48a64d9d91800e07a015e1307579cd56979c31605b105d3d6a98153e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7150aaf5-314c-7f3c-fbb0-32fd01a6cca6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mean_smul_eq_mean_smul [SMulInvariantMeasure G X μ]
    (hfoel : IsFoelner G μ u F) (g h : G) (s : Set X) :
    mean μ u F (g • s) = mean μ u F (h • s) := by
  suffices hle : ∀ g h, mean μ u F (g • s) ≤ mean μ u F (h • s) by
    exact le_antisymm (hle g h) (hle h g)
  intro g h
  rw [← add_zero <| mean μ u F (h • s)]
  refine le_of_tendsto_of_tendsto
    (hfoel.tendsto_nhds_mean (g • s))
    (hfoel.tendsto_nhds_mean (h • s) |>.add <| hfoel.tendsto_meas_smul_symmDiff_smul g⁻¹ h⁻¹) ?_
  filter_upwards [hfoel.eventually_meas_ne_zero] with i hi
  rw [← tsub_le_iff_left, ← ENNReal.sub_div <| fun _ _ ↦ hi]
  refine ENNReal.div_le_div_right (le_trans ?_ (measure_mono <| @inter_subset_right _ s _)) _
  simpa [inter_symmDiff_distrib_left, ← measure_inter_inv_smul] using le_measure_symmDiff

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc382502a9964b7efbbb15afdb03ea4e85504de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

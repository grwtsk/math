# continuous_dom_prod_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8d236a78-6792-9ac8-f2e3-6df9c090d6b4",
  "kind": "theorem",
  "lexical_name": "continuous_dom_prod_right",
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
  "slug": "continuous-dom-prod-right--4ca5d4dd218a1628ee4307df",
  "source": {
    "blob": "18b3a7bb3cd2e819fddd5ed78049567f5330d914",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 740,
    "path": "GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ca5d4dd218a1628ee4307df44a71fe5dfc254ad8d615d1d8442785929a9ef6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d236a78-6792-9ac8-f2e3-6df9c090d6b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_dom_prod_right {X Y : Type*} [TopologicalSpace X] [TopologicalSpace Y]
    {f : Πʳ i, [R i, A i] × Y → X} :
    Continuous f ↔ ∀ (S : Set ι) (hS : cofinite ≤ 𝓟 S),
      Continuous (f ∘ (Prod.map (inclusion R A hS) id)) := by
  refine ⟨fun H S hS ↦ H.comp ((continuous_inclusion hS).prodMap continuous_id),
    fun H ↦ ?_⟩
  simp_rw [continuous_iff_continuousAt, ContinuousAt]
  rintro ⟨x, y⟩
  set S : Set ι := {i | x i ∈ A i}
  have hS : cofinite ≤ 𝓟 S := le_principal_iff.mpr x.2
  have hxS : ∀ i ∈ S, x i ∈ A i := fun i hi ↦ hi
  rcases exists_inclusion_eq_of_eventually R A hS hxS with ⟨x', hxx'⟩
  rw [← hxx', nhds_prod_eq, nhds_eq_map_inclusion hAopen hS x',
    ← Filter.map_id (f := 𝓝 y), prod_map_map_eq, ← nhds_prod_eq, tendsto_map'_iff]
  exact H S hS |>.tendsto ⟨x', y⟩

-- TODO: get from the previous one instead of copy-pasting
include hAopen in
/-- The **universal property with parameters** of the topology on the restricted product:
for any topological space `Y` of "parameters", a map from `Y × Πʳ i, [R i, A i]` is continuous
*iff* its restriction to each `Y × Πʳ i, [R i, A i]_[𝓟 S]` (with `S` cofinite) is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18b3a7bb3cd2e819fddd5ed78049567f5330d914` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# amenable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff07c6b5-f502-71e8-265b-e28dde4310af",
  "kind": "theorem",
  "lexical_name": "amenable",
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
  "slug": "amenable--7da4ce0a09cf3a7f2caf7a24",
  "source": {
    "blob": "9dc382502a9964b7efbbb15afdb03ea4e85504de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 204,
    "path": "GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7da4ce0a09cf3a7f2caf7a24ffa52f43c53fc56316f5d700bc154bbb51d8be3a",
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

Occurrence: `result:ff07c6b5-f502-71e8-265b-e28dde4310af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem amenable [SMulInvariantMeasure G X μ] [NeBot l] (hfoel : IsFoelner G μ l F) :
    ∃ m : Set X → ℝ≥0∞, m .univ = 1 ∧
      (∀ s t, MeasurableSet t → Disjoint s t → m (s ∪ t) = m s + m t) ∧
        ∀ (g : G) (s : Set X), m (g • s) = m s := by
  use mean μ (Ultrafilter.of l) F
  refine ⟨?_, ?_, ?_⟩
  · exact (hfoel.mono <| Ultrafilter.of_le l).mean_univ_eq_one
  · exact (hfoel.mono <| Ultrafilter.of_le l).mean_union_eq_add_of_disjoint
  · exact (hfoel.mono <| Ultrafilter.of_le l).mean_smul_eq_mean

end IsFoelner

variable (G μ) in
/-- The maximal Følner filter with respect to some group `G` acting on a
    measure space `X` is the pullback of `𝓝 0` along the map `s ↦ μ (g • s) / μ s`
    on measurable sets of finite non-zero measure. -/
@[to_additive maxAddFoelner
/-- The maximal Følner filter with respect to some additive group `G` acting
    on a measure space `X` is the pullback of `𝓝 0` along the map `s ↦ μ (g +ᵥ s) / μ s`
    on measurable sets of finite non-zero measure. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FoelnerFilter/Variant616bd46b7d0564b239116271089ae7f8e680b0ee681dacb82386b754b65c108f.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9dc382502a9964b7efbbb15afdb03ea4e85504de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

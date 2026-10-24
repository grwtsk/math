# absolutelyContinuous_map_div_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6235d063a20206fcf20a4db10f60203df6b95d4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 234,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61b71979-17e4-24f8-38f4-5bcfd6b37462",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f11c8e0a-55bb-9895-3838-b6f5750a6963",
  "kind": "theorem",
  "lexical_name": "absolutelyContinuous_map_div_left",
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
  "slug": "absolutelycontinuous-map-div-left--f309ae1397d418b00f9a123d",
  "source": {
    "blob": "6235d063a20206fcf20a4db10f60203df6b95d4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 234,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f309ae1397d418b00f9a123dc1ea70731dc66a1b3e2999ab688dadfd1c836554",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f11c8e0a-55bb-9895-3838-b6f5750a6963`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem absolutelyContinuous_map_div_left (g : G) : μ ≪ map (fun h => g / h) μ := by
  simp_rw [div_eq_mul_inv]
  erw [← map_map (measurable_const_mul g) measurable_inv]
  conv_lhs => rw [← map_mul_left_eq_self μ g]
  exact (absolutelyContinuous_inv μ).map (measurable_const_mul g)
#align measure_theory.absolutely_continuous_map_div_left MeasureTheory.absolutelyContinuous_map_div_left
#align measure_theory.absolutely_continuous_map_sub_left MeasureTheory.absolutelyContinuous_map_sub_left

/-- This is the computation performed in the proof of [Halmos, §60 Th. A]. -/
@[to_additive "This is the computation performed in the proof of [Halmos, §60 Th. A]."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantfc9c16d673543f1285e08c492dce57c625c701d2a0bac6c40cbe45faf3dbf604.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6235d063a20206fcf20a4db10f60203df6b95d4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# measure_Ico

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f4109ea-56dd-3102-ecff-38fe0bbd699a",
  "kind": "theorem",
  "lexical_name": "measure_Ico",
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
  "slug": "measure-ico--cc7df199950d5c841dd3f589",
  "source": {
    "blob": "ff61badabb2319015eea68cb05a2e021f2e14cd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 430,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc7df199950d5c841dd3f58985a51ca08971f3ccc859d90eccdbbe6051aee070",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f4109ea-56dd-3102-ecff-38fe0bbd699a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_Ico (a b : ℝ) : f.measure (Ico a b) = ofReal (leftLim f b - leftLim f a) := by
  rcases le_or_lt b a with (hab | hab)
  · simp only [hab, measure_empty, Ico_eq_empty, not_lt]
    symm
    simp [ENNReal.ofReal_eq_zero, f.mono.leftLim hab]
  · have A : Disjoint {a} (Ioo a b) := by simp
    simp [← Icc_union_Ioo_eq_Ico le_rfl hab, -singleton_union, hab.ne, f.mono.leftLim_le,
      measure_union A measurableSet_Ioo, f.mono.le_leftLim hab, ← ENNReal.ofReal_add]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Variant5f1d142990d841f4af0a89998f398e84e30ceaacc2cbfb01069c010dcd21b1a6.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff61badabb2319015eea68cb05a2e021f2e14cd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

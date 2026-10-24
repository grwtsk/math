# measure_Ioo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 582,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d5e0474c-ac6f-52df-8cb6-2d3ccd3deaac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85d99984-c71a-fc80-43eb-003ff47fb147",
  "kind": "theorem",
  "lexical_name": "measure_Ioo",
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
  "slug": "measure-ioo--8a5ec8f98c98931488be879e",
  "source": {
    "blob": "6297eeab2151062d2cbae140e704e87882f614f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 597,
    "line": 582,
    "path": "GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a5ec8f98c98931488be879ee64bc2eb03dd1dde4222e52d8b967df0280e7b67",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85d99984-c71a-fc80-43eb-003ff47fb147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–597.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_Ioo {a b : R} : f.measure (Ioo a b) = ofReal (leftLim f b - f a) := by
  rcases le_or_gt b a with (hab | hab)
  · simp only [hab, measure_empty, Ioo_eq_empty, not_lt]
    symm
    simp [ENNReal.ofReal_eq_zero, f.mono.leftLim_le hab]
  · have A : Disjoint (Ioo a b) {b} := by simp
    have D : f b - f a = f b - leftLim f b + (leftLim f b - f a) := by abel
    have := f.measure_Ioc a b
    simp only [← Ioo_union_Icc_eq_Ioc hab le_rfl, measure_singleton,
      measure_union A (measurableSet_singleton b), Icc_self] at this
    rw [D, ENNReal.ofReal_add, add_comm] at this
    · simpa only [ENNReal.add_right_inj ENNReal.ofReal_ne_top]
    · simp only [f.mono.leftLim_le le_rfl, sub_nonneg]
    · simp only [f.mono.le_leftLim hab, sub_nonneg]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Stieltjes/Varianta539002bedb8054fe0c346bbc104edfb49ef0a9786729e85312844f04c4e6cb5.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6297eeab2151062d2cbae140e704e87882f614f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# pi_prod_map_IicProdIoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d08d1f6fd3e41bf2d944035d34aa244be8f4ead8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f98722d0-8f43-69da-6da2-03861745ad61",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e481e445-7d74-0e4f-2045-18ad6551afaf",
  "kind": "lemma",
  "lexical_name": "pi_prod_map_IicProdIoc",
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
  "slug": "pi-prod-map-iicprodioc--72a7190535cf4dcdd434cb6e",
  "source": {
    "blob": "d08d1f6fd3e41bf2d944035d34aa244be8f4ead8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72a7190535cf4dcdd434cb6eeb9c3047028c1c53d9d02f5012bc318477a9af76",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e481e445-7d74-0e4f-2045-18ad6551afaf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pi_prod_map_IicProdIoc {a b : ℕ} :
    ((Measure.pi (fun i : Iic a ↦ μ i)).prod (Measure.pi (fun i : Ioc a b ↦ μ i))).map
      (IicProdIoc a b) = Measure.pi (fun i : Iic b ↦ μ i) := by
  obtain hab | hba := le_total a b
  · refine (Measure.pi_eq fun s ms ↦ ?_).symm
    simp_rw [Measure.map_apply measurable_IicProdIoc (.univ_pi ms), IicProdIoc_preimage hab,
      Measure.prod_prod, Measure.pi_pi, prod_eq_prod_extend]
    nth_rw 1 [Eq.comm, ← Iic_union_Ioc_eq_Iic hab, prod_union (Iic_disjoint_Ioc le_rfl)]
    congr 1 <;> refine prod_congr rfl fun x hx ↦ ?_
    · rw [Function.extend_val_apply hx, Function.extend_val_apply (Iic_subset_Iic.2 hab hx),
        frestrictLe₂, restrict₂]
    · rw [Function.extend_val_apply hx, Function.extend_val_apply (Ioc_subset_Iic_self hx),
        restrict₂]
  · rw [IicProdIoc_le hba, ← Measure.map_map, ← Measure.fst, Measure.fst_prod]
    · exact isProjectiveMeasureFamily_pi μ (Iic a) (Iic b) (Iic_subset_Iic.2 hba) |>.symm
    all_goals fun_prop

/-- Let `μ (i + 1) : Measure (X (i + 1))` be a measure. Up to an equivalence,
`μ i = ⨂ j : Ioc i (i + 1), μ i`, where `⊗` denotes the product of measures. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ProductMeasure/Variantf8af06e87e2e28916f0fa8a455f792ded4b85a22e1dea5e1c6f9cac1d31b9830.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d08d1f6fd3e41bf2d944035d34aa244be8f4ead8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

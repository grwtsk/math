# mk_of_measure_univ_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae6eb862b9197e3454bb5fa0de08d39e610cf5b9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9da87023-62f5-2a89-7831-4e21fe7bfb72",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2e016a68-2e6d-4e62-80a8-ef2b4d757657",
  "kind": "theorem",
  "lexical_name": "mk_of_measure_univ_le",
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
  "slug": "mk-of-measure-univ-le--12a4ab2ceed798c1b518cc96",
  "source": {
    "blob": "ae6eb862b9197e3454bb5fa0de08d39e610cf5b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 112,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12a4ab2ceed798c1b518cc96162ef9f3240c38637b38164d7e8c23bb8d85bc2b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e016a68-2e6d-4e62-80a8-ef2b4d757657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mk_of_measure_univ_le [IsFiniteMeasure μ] [Countable G] (h_meas : NullMeasurableSet s μ)
    (h_ae_disjoint : ∀ (g) (_ : g ≠ (1 : G)), AEDisjoint μ (g • s) s)
    (h_qmp : ∀ g : G, QuasiMeasurePreserving ((· • ·) g : α → α) μ μ)
    (h_measure_univ_le : μ (univ : Set α) ≤ ∑' g : G, μ (g • s)) : IsFundamentalDomain G s μ :=
  have aedisjoint : Pairwise (AEDisjoint μ on fun g : G => g • s) :=
    pairwise_aedisjoint_of_aedisjoint_forall_ne_one h_ae_disjoint h_qmp
  { nullMeasurableSet := h_meas
    aedisjoint
    ae_covers := by
      replace h_meas : ∀ g : G, NullMeasurableSet (g • s) μ := fun g => by
        rw [← inv_inv g, ← preimage_smul]; exact h_meas.preimage (h_qmp g⁻¹)
      have h_meas' : NullMeasurableSet {a | ∃ g : G, g • a ∈ s} μ := by
        rw [← iUnion_smul_eq_setOf_exists]; exact .iUnion h_meas
      rw [ae_iff_measure_eq h_meas', ← iUnion_smul_eq_setOf_exists]
      refine' le_antisymm (measure_mono <| subset_univ _) _
      rw [measure_iUnion₀ aedisjoint h_meas]
      exact h_measure_univ_le }
#align measure_theory.is_fundamental_domain.mk_of_measure_univ_le MeasureTheory.IsFundamentalDomain.mk_of_measure_univ_le
#align measure_theory.is_add_fundamental_domain.mk_of_measure_univ_le MeasureTheory.IsAddFundamentalDomain.mk_of_measure_univ_le

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant7e0f22a893d74f2872208906c250be2dad15bb098cf7674b4f1716db5af4afe7.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae6eb862b9197e3454bb5fa0de08d39e610cf5b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

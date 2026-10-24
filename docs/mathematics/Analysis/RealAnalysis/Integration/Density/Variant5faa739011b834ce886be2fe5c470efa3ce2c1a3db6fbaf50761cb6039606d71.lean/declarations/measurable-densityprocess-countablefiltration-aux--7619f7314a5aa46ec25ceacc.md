# measurable_densityProcess_countableFiltration_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 102,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a135b5c0-de60-13e1-dfe7-8e3ff7ff5ded",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c710109c-076f-6fbd-6d52-7a37588794ae",
  "kind": "lemma",
  "lexical_name": "measurable_densityProcess_countableFiltration_aux",
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
  "slug": "measurable-densityprocess-countablefiltration-aux--7619f7314a5aa46ec25ceacc",
  "source": {
    "blob": "daa481c381282b67d7a92dad1fe0e7877af5cd7e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7619f7314a5aa46ec25ceaccab4852d87fc42c2e23a9a65fc62f8407e09af88f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c710109c-076f-6fbd-6d52-7a37588794ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurable_densityProcess_countableFiltration_aux (κ : Kernel α (γ × β)) (ν : Kernel α γ)
    (n : ℕ) {s : Set β} (hs : MeasurableSet s) :
    Measurable[mα.prod (countableFiltration γ n)] (fun (p : α × γ) ↦
      κ p.1 (countablePartitionSet n p.2 ×ˢ s) / ν p.1 (countablePartitionSet n p.2)) := by
  change Measurable[mα.prod (countableFiltration γ n)]
      ((fun (p : α × countablePartition γ n) ↦ κ p.1 (↑p.2 ×ˢ s) / ν p.1 p.2)
        ∘ (fun (p : α × γ) ↦ (p.1, ⟨countablePartitionSet n p.2, countablePartitionSet_mem n p.2⟩)))
  have h1 : @Measurable _ _ (mα.prod ⊤) _
      (fun p : α × countablePartition γ n ↦ κ p.1 (↑p.2 ×ˢ s) / ν p.1 p.2) := by
    refine Measurable.div ?_ ?_
    · refine measurable_from_prod_countable (fun t ↦ ?_)
      exact Kernel.measurable_coe _ ((measurableSet_countablePartition _ t.prop).prod hs)
    · refine measurable_from_prod_countable ?_
      rintro ⟨t, ht⟩
      exact Kernel.measurable_coe _ (measurableSet_countablePartition _ ht)
  refine h1.comp (measurable_fst.prodMk ?_)
  change @Measurable (α × γ) (countablePartition γ n) (mα.prod (countableFiltration γ n)) ⊤
    ((fun c ↦ ⟨countablePartitionSet n c, countablePartitionSet_mem n c⟩) ∘ (fun p : α × γ ↦ p.2))
  exact (measurable_countablePartitionSet_subtype n ⊤).comp measurable_snd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant5faa739011b834ce886be2fe5c470efa3ce2c1a3db6fbaf50761cb6039606d71.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa481c381282b67d7a92dad1fe0e7877af5cd7e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# measurable_densityProcess_countableFiltration_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05d22611-1565-4464-6970-31fedbc2b25c",
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
  "slug": "measurable-densityprocess-countablefiltration-aux--6a830e727893d59974990476",
  "source": {
    "blob": "8dced0157fdc3759f9e402ccc9bb10dec0a6e0a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 110,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a830e727893d59974990476ab7d22b8e73db65c77c15a3a3076a315e817c061",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05d22611-1565-4464-6970-31fedbc2b25c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–129.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Density/Variant9ab38442c2a35a6cca9c7e87c146ad75f59cba9eefe2cc4d719aef43c97f4696.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dced0157fdc3759f9e402ccc9bb10dec0a6e0a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

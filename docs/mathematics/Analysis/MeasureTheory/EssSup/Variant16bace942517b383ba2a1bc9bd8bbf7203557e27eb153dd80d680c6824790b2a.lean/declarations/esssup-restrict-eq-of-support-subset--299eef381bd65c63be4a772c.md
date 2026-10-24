# essSup_restrict_eq_of_support_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d97ee12149c6d8883218ae1eaf811ff5ee458ebf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 303,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/16/16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4de01498-cf3a-1d71-62bb-44c8e01e9eed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b61d266-a431-ce18-d189-6fe797e23ef1",
  "kind": "lemma",
  "lexical_name": "essSup_restrict_eq_of_support_subset",
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
  "slug": "esssup-restrict-eq-of-support-subset--299eef381bd65c63be4a772c",
  "source": {
    "blob": "d97ee12149c6d8883218ae1eaf811ff5ee458ebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 303,
    "path": "GRWTSK/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:299eef381bd65c63be4a772c21cc594324d9b08c7781524c3751152ed8c6b0cd",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b61d266-a431-ce18-d189-6fe797e23ef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma essSup_restrict_eq_of_support_subset {s : Set α} {f : α → ℝ≥0∞} (hsf : f.support ⊆ s) :
    essSup f (μ.restrict s) = essSup f μ := by
  apply le_antisymm (essSup_mono_measure' Measure.restrict_le_self)
  apply le_of_forall_lt (fun c hc ↦ ?_)
  obtain ⟨d, cd, hd⟩ : ∃ d, c < d ∧ d < essSup f μ := exists_between hc
  let t := {x | d < f x}
  have A : 0 < (μ.restrict t) t := by
    simp only [Measure.restrict_apply_self]
    rw [essSup_eq_sInf] at hd
    have : d ∉ {a | μ {x | a < f x} = 0} := notMem_of_lt_csInf hd (OrderBot.bddBelow _)
    exact bot_lt_iff_ne_bot.2 this
  have B : 0 < (μ.restrict s) t := by
    have : μ.restrict t ≤ μ.restrict s := by
      apply Measure.restrict_mono _ le_rfl
      apply subset_trans _ hsf
      intro x (hx : d < f x)
      exact (lt_of_le_of_lt bot_le hx).ne'
    exact lt_of_lt_of_le A (this _)
  apply cd.trans_le
  rw [essSup_eq_sInf]
  apply le_sInf (fun b hb ↦ ?_)
  contrapose! hb
  exact ne_of_gt (B.trans_le (measure_mono (fun x hx ↦ hb.trans hx)))

end ENNReal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/EssSup/Variant16bace942517b383ba2a1bc9bd8bbf7203557e27eb153dd80d680c6824790b2a.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d97ee12149c6d8883218ae1eaf811ff5ee458ebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

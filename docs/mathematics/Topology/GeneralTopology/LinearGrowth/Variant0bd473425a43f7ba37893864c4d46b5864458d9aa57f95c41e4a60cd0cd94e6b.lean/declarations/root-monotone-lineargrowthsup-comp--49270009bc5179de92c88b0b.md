# _root_.Monotone.linearGrowthSup_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28acaa665cef35aee63fcac75ec086d4c3ead33b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 566,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:774d427f-fc82-eca6-1961-6c034388049c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c7520c9-9dd6-2fc4-7f89-4c8aa23b2a56",
  "kind": "lemma",
  "lexical_name": "_root_.Monotone.linearGrowthSup_comp",
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
  "slug": "root-monotone-lineargrowthsup-comp--49270009bc5179de92c88b0b",
  "source": {
    "blob": "28acaa665cef35aee63fcac75ec086d4c3ead33b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 566,
    "path": "GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:49270009bc5179de92c88b0bdbf97ea78f0ec092c313eb509647a2f27ebdb645",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c7520c9-9dd6-2fc4-7f89-4c8aa23b2a56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.Monotone.linearGrowthSup_comp {a : EReal} (h : Monotone u)
    (hv : Tendsto (fun n ↦ (v n : EReal) / n) atTop (𝓝 a)) (ha : a ≠ 0) (ha' : a ≠ ⊤) :
    linearGrowthSup (u ∘ v) = a * linearGrowthSup u := by
  have hv₁ : 0 < liminf (fun n ↦ (v n : EReal) / n) atTop := by
    rw [← hv.liminf_eq] at ha
    exact ha.symm.lt_of_le (linearGrowthInf_natCast_nonneg v)
  have v_top := tendsto_atTop_of_linearGrowthInf_natCast_pos hv₁.ne.symm
  -- Either `u = 0`, or `u` is non-zero and bounded by `1`, or `u` is eventually larger than one.
  -- In the latter case, we apply `le_linearGrowthSup_comp` and `linearGrowthSup_comp_le`.
  by_cases u_0 : u = ⊥
  · rw [u_0, Pi.bot_comp, linearGrowthSup_bot, ← hv.liminf_eq, mul_bot_of_pos hv₁]
  by_cases u_1 : ∀ᶠ n : ℕ in atTop, u n ≤ 0
  · have u_0' : linearGrowthSup u = 0 := by
      apply le_antisymm _ (h.linearGrowthSup_nonneg u_0)
      apply (linearGrowthSup_eventually_monotone u_1).trans_eq
      exact (linearGrowthSup_const zero_ne_bot zero_ne_top)
    rw [u_0', mul_zero]
    apply le_antisymm _ (linearGrowthSup_comp_nonneg h u_0 v_top)
    apply (linearGrowthSup_eventually_monotone (v_top.eventually u_1)).trans_eq
    exact linearGrowthSup_const zero_ne_bot zero_ne_top
  · replace h' := (not_eventually.1 u_1).mono fun x hx ↦ (lt_of_not_le hx).le
    apply le_antisymm
    · rw [← hv.limsup_eq] at ha ha' ⊢
      exact linearGrowthSup_comp_le h' ha ha' v_top
    · rw [← hv.liminf_eq]
      exact h.le_linearGrowthSup_comp hv₁.ne.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LinearGrowth/Variant0bd473425a43f7ba37893864c4d46b5864458d9aa57f95c41e4a60cd0cd94e6b.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28acaa665cef35aee63fcac75ec086d4c3ead33b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

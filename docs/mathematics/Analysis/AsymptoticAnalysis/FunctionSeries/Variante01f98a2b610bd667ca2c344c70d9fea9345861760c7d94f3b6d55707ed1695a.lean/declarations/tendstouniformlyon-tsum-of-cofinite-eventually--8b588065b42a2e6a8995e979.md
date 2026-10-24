# tendstoUniformlyOn_tsum_of_cofinite_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0bb7ab00839986ebf656ab7ed7e10958dfbd51e0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca050193-980d-4045-8d6b-da5b83877648",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:af994cb7-9479-b9c1-cbdc-6c49147b7b6d",
  "kind": "theorem",
  "lexical_name": "tendstoUniformlyOn_tsum_of_cofinite_eventually",
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
  "slug": "tendstouniformlyon-tsum-of-cofinite-eventually--8b588065b42a2e6a8995e979",
  "source": {
    "blob": "0bb7ab00839986ebf656ab7ed7e10958dfbd51e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 49,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b588065b42a2e6a8995e97993e61351bb96bf6154bf914297a16532117c9889",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af994cb7-9479-b9c1-cbdc-6c49147b7b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendstoUniformlyOn_tsum_of_cofinite_eventually {ι : Type*} {f : ι → β → F} {u : ι → ℝ}
    (hu : Summable u) {s : Set β} (hfu : ∀ᶠ n in cofinite, ∀ x ∈ s, ‖f n x‖ ≤ u n) :
    TendstoUniformlyOn (fun t x => ∑ n ∈ t, f n x) (fun x => ∑' n, f n x) atTop s := by
  classical
  refine tendstoUniformlyOn_iff.2 fun ε εpos => ?_
  have := (tendsto_order.1 (tendsto_tsum_compl_atTop_zero u)).2 _ εpos
  simp only [not_forall, Classical.not_imp, not_le, gt_iff_lt,
    eventually_atTop, ge_iff_le, Finset.le_eq_subset] at *
  obtain ⟨t, ht⟩ := this
  rw [eventually_iff_exists_mem] at hfu
  obtain ⟨N, hN, HN⟩ := hfu
  refine ⟨hN.toFinset ∪ t, fun n hn x hx => ?_⟩
  have A : Summable fun n => ‖f n x‖ := by
    apply Summable.add_compl (s := hN.toFinset) Summable.of_finite
    apply Summable.of_nonneg_of_le (fun _ ↦ norm_nonneg _) _ (hu.subtype _)
    simp only [comp_apply, Subtype.forall, Set.mem_compl_iff, Finset.mem_coe]
    aesop
  rw [dist_eq_norm, ← A.of_norm.sum_add_tsum_subtype_compl n, add_sub_cancel_left]
  apply lt_of_le_of_lt _ (ht n (Finset.union_subset_right hn))
  apply (norm_tsum_le_tsum_norm (A.subtype _)).trans
  apply (A.subtype _).tsum_le_tsum _ (hu.subtype _)
  simp only [comp_apply, Subtype.forall, imp_false]
  apply fun i hi => HN i ?_ x hx
  have :  i ∉ hN.toFinset := fun hg ↦ hi (Finset.union_subset_left hn hg)
  aesop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Variante01f98a2b610bd667ca2c344c70d9fea9345861760c7d94f3b6d55707ed1695a.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0bb7ab00839986ebf656ab7ed7e10958dfbd51e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

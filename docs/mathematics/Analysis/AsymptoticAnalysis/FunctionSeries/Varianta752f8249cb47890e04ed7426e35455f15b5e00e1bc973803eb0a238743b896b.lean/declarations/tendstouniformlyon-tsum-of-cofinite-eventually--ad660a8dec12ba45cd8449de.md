# tendstoUniformlyOn_tsum_of_cofinite_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bff4fcc2-2ff0-18f9-b676-68c87d1ab48e",
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
  "slug": "tendstouniformlyon-tsum-of-cofinite-eventually--ad660a8dec12ba45cd8449de",
  "source": {
    "blob": "c78cfb496b71353217bfcd6f9859ae4807370dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 57,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad660a8dec12ba45cd8449de96c2e972ba651297b5efa35c652e7ec962bc1dcc",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bff4fcc2-2ff0-18f9-b676-68c87d1ab48e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–82.

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

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FunctionSeries/Varianta752f8249cb47890e04ed7426e35455f15b5e00e1bc973803eb0a238743b896b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c78cfb496b71353217bfcd6f9859ae4807370dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

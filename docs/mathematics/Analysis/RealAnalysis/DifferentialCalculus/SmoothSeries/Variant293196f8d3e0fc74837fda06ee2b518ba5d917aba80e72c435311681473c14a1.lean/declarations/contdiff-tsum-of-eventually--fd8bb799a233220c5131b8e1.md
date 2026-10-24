# contDiff_tsum_of_eventually

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0824b4375ba9ab81411e58c734211090ce1be397",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/293196f8d3e0fc74837fda06ee2b518ba5d917aba80e72c435311681473c14a1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7eaa799f-3f41-cb4f-a1ca-f19cde082339",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3dd117f8-d489-4719-e876-6fc8a7d2fa1f",
  "kind": "theorem",
  "lexical_name": "contDiff_tsum_of_eventually",
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
  "slug": "contdiff-tsum-of-eventually--fd8bb799a233220c5131b8e1",
  "source": {
    "blob": "0824b4375ba9ab81411e58c734211090ce1be397",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant293196f8d3e0fc74837fda06ee2b518ba5d917aba80e72c435311681473c14a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd8bb799a233220c5131b8e150ce3f816391396105641e96191ae214b0e1113d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant293196f8d3e0fc74837fda06ee2b518ba5d917aba80e72c435311681473c14a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dd117f8-d489-4719-e876-6fc8a7d2fa1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiff_tsum_of_eventually (hf : ∀ i, ContDiff 𝕜 N (f i))
    (hv : ∀ k : ℕ, k ≤ N → Summable (v k))
    (h'f : ∀ k : ℕ, k ≤ N →
      ∀ᶠ i in (Filter.cofinite : Filter α), ∀ x : E, ‖iteratedFDeriv 𝕜 k (f i) x‖ ≤ v k i) :
    ContDiff 𝕜 N fun x => ∑' i, f i x := by
  refine contDiff_iff_forall_nat_le.2 fun m hm => ?_
  let t : Set α :=
    { i : α | ¬∀ k : ℕ, k ∈ Finset.range (m + 1) → ∀ x, ‖iteratedFDeriv 𝕜 k (f i) x‖ ≤ v k i }
  have ht : Set.Finite t :=
    haveI A :
      ∀ᶠ i in (Filter.cofinite : Filter α),
        ∀ k : ℕ, k ∈ Finset.range (m + 1) → ∀ x : E, ‖iteratedFDeriv 𝕜 k (f i) x‖ ≤ v k i := by
      rw [eventually_all_finset]
      intro i hi
      apply h'f
      simp only [Finset.mem_range_succ_iff] at hi
      exact (WithTop.coe_le_coe.2 hi).trans hm
    eventually_cofinite.2 A
  let T : Finset α := ht.toFinset
  have : (fun x => ∑' i, f i x) = (fun x => ∑ i ∈ T, f i x) +
      fun x => ∑' i : { i // i ∉ T }, f i x := by
    ext1 x
    refine (Summable.sum_add_tsum_subtype_compl ?_ T).symm
    refine .of_norm_bounded_eventually (hv 0 zero_le) ?_
    filter_upwards [h'f 0 zero_le] with i hi
    simpa only [norm_iteratedFDeriv_zero] using hi x
  rw [this]
  apply (ContDiff.sum fun i _ => (hf i).of_le (mod_cast hm)).add
  have h'u : ∀ k : ℕ, (k : ℕ∞) ≤ m → Summable (v k ∘ ((↑) : { i // i ∉ T } → α)) := fun k hk =>
    (hv k (hk.trans hm)).subtype _
  refine contDiff_tsum (fun i => (hf i).of_le (mod_cast hm)) h'u ?_
  rintro k ⟨i, hi⟩ x hk
  simp only [t, T, Finite.mem_toFinset, mem_ofPred_eq, Finset.mem_range, not_forall, not_le,
    exists_prop, not_exists, not_and, not_lt] at hi
  exact hi k (Nat.lt_succ_iff.2 (WithTop.coe_le_coe.1 hk)) x
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant293196f8d3e0fc74837fda06ee2b518ba5d917aba80e72c435311681473c14a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SmoothSeries/Variant293196f8d3e0fc74837fda06ee2b518ba5d917aba80e72c435311681473c14a1.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0824b4375ba9ab81411e58c734211090ce1be397` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

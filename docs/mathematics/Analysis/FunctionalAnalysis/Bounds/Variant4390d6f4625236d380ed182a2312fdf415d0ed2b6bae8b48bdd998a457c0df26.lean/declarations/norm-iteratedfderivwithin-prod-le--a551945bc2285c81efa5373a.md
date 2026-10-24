# norm_iteratedFDerivWithin_prod_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e980f255-21b8-0d07-1a20-843b8edc1d56",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDerivWithin_prod_le",
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
  "slug": "norm-iteratedfderivwithin-prod-le--a551945bc2285c81efa5373a",
  "source": {
    "blob": "a503d47c2335fc0583a9aa26d256e96bedf21182",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 294,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a551945bc2285c81efa5373a20c2c799c69a4761a417f2d75b856da5fb7df45d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e980f255-21b8-0d07-1a20-843b8edc1d56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDerivWithin_prod_le [DecidableEq ι] [NormOneClass A'] {u : Finset ι}
    {f : ι → E → A'} {N : ℕ∞ω} (hf : ∀ i ∈ u, ContDiffOn 𝕜 N (f i) s)
    (hs : UniqueDiffOn 𝕜 s) {x : E} (hx : x ∈ s) {n : ℕ} (hn : n ≤ N) :
    ‖iteratedFDerivWithin 𝕜 n (∏ j ∈ u, f j ·) s x‖ ≤
      ∑ p ∈ u.sym n, (p : Multiset ι).countPerms *
        ∏ j ∈ u, ‖iteratedFDerivWithin 𝕜 (Multiset.count j p) (f j) s x‖ := by
  induction u using Finset.induction generalizing n with
  | empty =>
    cases n with
    | zero => simp [Sym.eq_nil_of_card_zero]
    | succ n => simp [iteratedFDerivWithin_succ_const]
  | insert i u hi IH =>
    conv => lhs; simp only [Finset.prod_insert hi]
    simp only [Finset.mem_insert, forall_eq_or_imp] at hf
    refine le_trans (norm_iteratedFDerivWithin_mul_le hf.1 (contDiffOn_prod hf.2) hs hx hn) ?_
    rw [← Finset.sum_coe_sort (Finset.sym _ _)]
    rw [Finset.sum_equiv (Finset.symInsertEquiv hi) (t := Finset.univ)
      (g := (fun v ↦ v.countPerms *
          ∏ j ∈ insert i u, ‖iteratedFDerivWithin 𝕜 (v.count j) (f j) s x‖) ∘
        Sym.toMultiset ∘ Subtype.val ∘ (Finset.symInsertEquiv hi).symm)
      (by simp) (by simp only [← comp_apply (g := Finset.symInsertEquiv hi), comp_assoc]; simp)]
    rw [← Finset.univ_sigma_univ, Finset.sum_sigma, Finset.sum_range]
    simp +instances only [comp_apply, Finset.symInsertEquiv_symm_apply_coe]
    gcongr with m _
    specialize IH hf.2 (n := n - m) (le_trans (by exact_mod_cast n.sub_le m) hn)
    grw [IH]
    rw [Finset.mul_sum, ← Finset.sum_coe_sort]
    refine Finset.sum_le_sum ?_
    simp only [Finset.mem_univ, forall_true_left, Subtype.forall, Finset.mem_sym_iff]
    intro p hp
    refine le_of_eq ?_
    rw [Finset.prod_insert hi]
    have hip : i ∉ p := mt (hp i) hi
    rw [Sym.count_coe_fill_self_of_notMem hip, Sym.countPerms_coe_fill_of_notMem hip]
    suffices ∏ j ∈ u, ‖iteratedFDerivWithin 𝕜 (Multiset.count j p) (f j) s x‖ =
        ∏ j ∈ u, ‖iteratedFDerivWithin 𝕜 (Multiset.count j (Sym.fill i m p)) (f j) s x‖ by
      rw [this, Nat.cast_mul]
      ring
    refine Finset.prod_congr rfl ?_
    intro j hj
    have hji : j ≠ i := mt (· ▸ hj) hi
    rw [Sym.count_coe_fill_of_ne hji]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variant4390d6f4625236d380ed182a2312fdf415d0ed2b6bae8b48bdd998a457c0df26.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a503d47c2335fc0583a9aa26d256e96bedf21182` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

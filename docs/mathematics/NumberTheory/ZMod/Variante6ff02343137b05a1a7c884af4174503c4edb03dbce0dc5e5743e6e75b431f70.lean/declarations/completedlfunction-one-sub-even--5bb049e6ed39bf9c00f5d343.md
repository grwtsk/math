# completedLFunction_one_sub_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 456,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e6/e6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c6facba-6bfd-1239-6be6-3eaed838a441",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16cb76b5-42aa-586f-2b22-747219cbc63c",
  "kind": "theorem",
  "lexical_name": "completedLFunction_one_sub_even",
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
  "slug": "completedlfunction-one-sub-even--5bb049e6ed39bf9c00f5d343",
  "source": {
    "blob": "7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 503,
    "line": 456,
    "path": "GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bb049e6ed39bf9c00f5d343ed82276a6a62ba10e0cbbfb81771f8ace701d2e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16cb76b5-42aa-586f-2b22-747219cbc63c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–503.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completedLFunction_one_sub_even (hΦ : Φ.Even) (s : ℂ)
    (hs₀ : s ≠ 0 ∨ ∑ j, Φ j = 0) (hs₁ : s ≠ 1 ∨ Φ 0 = 0) :
    completedLFunction Φ (1 - s) = N ^ (s - 1) * completedLFunction (𝓕 Φ) s := by
  -- We prove this using `AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq`, so we need to
  -- gather up the ingredients for this big theorem.
  -- First set up some notations:
  let F (t) := completedLFunction Φ (1 - t)
  let G (t) := ↑N ^ (t - 1) * completedLFunction (𝓕 Φ) t
  -- Set on which F, G are analytic:
  let U := {t : ℂ | (t ≠ 0 ∨ ∑ j, Φ j = 0) ∧ (t ≠ 1 ∨ Φ 0 = 0)}
  -- Properties of U:
  have hsU : s ∈ U := ⟨hs₀, hs₁⟩
  have h2U : 2 ∈ U := ⟨.inl two_ne_zero, .inl (OfNat.ofNat_ne_one _)⟩
  have hUo : IsOpen U := (isOpen_compl_singleton.union isOpen_const).inter
    (isOpen_compl_singleton.union isOpen_const)
  have hUp : IsPreconnected U := by
    -- need to write `U` as the complement of an obviously countable set
    let Uc : Set ℂ := (if ∑ j, Φ j = 0 then ∅ else {0}) ∪ (if Φ 0 = 0 then ∅ else {1})
    have : Uc.Countable := by
      apply Countable.union <;>
      split_ifs <;>
      simp only [countable_singleton, countable_empty]
    convert (this.isConnected_compl_of_one_lt_rank ?_).isPreconnected using 1
    · ext x
      by_cases h : Φ 0 = 0 <;>
      by_cases h' : ∑ j, Φ j = 0 <;>
      simp [U, Uc, h, h', and_comm]
    · simp only [rank_real_complex, Nat.one_lt_ofNat]
  -- Analyticity on U:
  have hF : AnalyticOnNhd ℂ F U := by
    refine DifferentiableOn.analyticOnNhd
      (fun t ht ↦ DifferentiableAt.differentiableWithinAt ?_) hUo
    refine (differentiableAt_completedLFunction Φ _ ?_ ?_).comp t (differentiableAt_id.const_sub 1)
    exacts [ht.2.imp_left (sub_ne_zero.mpr ∘ Ne.symm), ht.1.imp_left sub_eq_self.not.mpr]
  have hG : AnalyticOnNhd ℂ G U := by
    refine DifferentiableOn.analyticOnNhd
      (fun t ht ↦ DifferentiableAt.differentiableWithinAt ?_) hUo
    apply ((differentiableAt_id.sub_const 1).const_cpow (.inl (NeZero.ne _))).mul
    apply differentiableAt_completedLFunction _ _ (ht.1.imp_right fun h ↦ dft_apply_zero Φ ▸ h)
    exact ht.2.imp_right (fun h ↦ by simp only [← dft_apply_zero, dft_dft, neg_zero, h, smul_zero])
  -- set where we know equality
  have hV : {z | 1 < re z} ∈ 𝓝 2 := (continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds (by simp)
  have hFG : F =ᶠ[𝓝 2] G := eventually_of_mem hV <| fun t ht ↦ by
    simpa only [F, G, pow_zero, mul_one] using completedLFunction_one_sub_of_one_lt_even hΦ ht
  -- now apply the big hammer to finish
  exact hF.eqOn_of_preconnected_of_eventuallyEq hG hUp h2U hFG hsU

/-- Functional equation for completed L-functions (odd case), valid for all `s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZMod/Variante6ff02343137b05a1a7c884af4174503c4edb03dbce0dc5e5743e6e75b431f70.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7745983b9935beadd3ae1b9fffa4e6f01cdfbeaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

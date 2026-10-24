# corollary_8_apply_theorem_6

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3799,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b47003f-73ed-a51b-fbd0-b120baca2580",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ed7d2e92-5e36-acff-531b-daa7a4d972a8",
  "kind": "lemma",
  "lexical_name": "corollary_8_apply_theorem_6",
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
  "slug": "corollary-8-apply-theorem-6--d012bdec462f94dc14e307e7",
  "source": {
    "blob": "bdccd0a48781b270841d4381607ac6c992b7e0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3875,
    "line": 3799,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d012bdec462f94dc14e307e777d99a1ded9ba5e189c4cb58403d0a69e9fbd243",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed7d2e92-5e36-acff-531b-daa7a4d972a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3799–3875.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma corollary_8_apply_theorem_6 {x₁ : ℝ} (hx₁ : x₁ ≥ 14)
    {M : ℕ} (b' : Fin (M + 1) → EReal) (hmono : Monotone b')
    (h_b_start : b' 0 = ↑(log x₁))
    (h_b_end : b' (Fin.last M) = ⊤)
    (h_finite : ∀ j : Fin (M+1), b' j = ⊤ → j = Fin.last M)
    (εθ_num : ℝ → ℝ)
    (h_εθ_num : ∀ i : Fin (M+1), Eθ.numericalBound (exp (b' i).toReal) εθ_num)
    (x : ℝ) (hx : x ≥ x₁)
    (i : Fin M)
    (hi_le : b' ⟨i.val, by omega⟩ ≤ ↑(log x))
    (hi_lt : ↑(log x) < b' ⟨i.val + 1, by omega⟩) :
    Eπ x ≤ επ_num (fun j : Fin (i.val+1) ↦ (b' ⟨j.val, by omega⟩).toReal)
        εθ_num x₁ (exp (b' ⟨i.val, by omega⟩).toReal)
        (if ⟨i.val + 1, by omega⟩ = Fin.last M then ⊤
         else ↑(exp (b' ⟨i.val + 1, by omega⟩).toReal)) := by
  split_ifs <;> simp_all +decide only [Fin.ext_iff];
  · convert theorem_6_alt _ _ _ _ _ _ _ _ _ using 1;
    any_goals tauto
    all_goals generalize_proofs at *;
    · convert ereal_exp_ge_max hx₁ b' hmono h_b_start ⟨ i, by linarith ⟩ _ using 1 ; aesop;
    · intro j k hjk; exact (by
      apply_rules [ EReal.toReal_le_toReal ];
      · exact ne_of_gt ( lt_of_lt_of_le ( by aesop ) ( hmono ( show 0 ≤ _ from Nat.zero_le _ ) ) );
      · exact fun h => by have := h_finite _ h; exact absurd this ( by linarith [ Fin.is_lt k ] ) ;);
    · aesop;
    · aesop;
    · -- Apply the lemma that states if $b' i \leq \log x$, then $\exp(b' i).toReal \leq \exp(\log x)$.
      have h_exp_le : Real.exp (b' ⟨i.val, by omega⟩).toReal ≤ Real.exp (Real.log x) := by
        apply_rules [ ereal_exp_toReal_le ];
        aesop
      generalize_proofs at *; (
      rwa [ Real.exp_log ( by linarith ) ] at h_exp_le);
  · convert theorem_6 _ _ _ _ _ _ _ _ _ _ _ using 1
    all_goals generalize_proofs at *;
    · convert ereal_exp_ge_max hx₁ _ _ _ _ using 1
      all_goals generalize_proofs at *;
      rotate_left
      · exact fun j => b' ⟨ j, by linarith [ Fin.is_lt j ] ⟩
      · generalize_proofs at *
        exact fun j k hjk => hmono <| by simpa using hjk
      · apply_rules [ ereal_toReal_coe_log ]
      · exact i
      norm_num [ EReal.toReal_coe ] at *
      exact Or.inl fun h => by have := h_finite _ h; aesop;
    · generalize_proofs at *
      convert ereal_toReal_sub_mono b' hmono i ( Real.log x ) hi_le _ using 1
      generalize_proofs at *
      aesop
    all_goals norm_num [ EReal.toReal_coe ] at *;
    · aesop;
    · exact fun j => h_εθ_num _;
    · have := @ereal_exp_toReal_le;
      exact le_trans ( this b' hmono i ( Real.log x ) hi_le ( by aesop ) ) ( by rw [ Real.exp_log ( by linarith ) ] ) |> le_trans <| by linarith;
    · have h_exp : Real.log x < (b' ⟨i.val + 1, by omega⟩).toReal := by
        have h_exp : b' ⟨i.val + 1, by omega⟩ ≠ ⊤ := by
          exact fun h => ‹¬ ( i : ℕ ) + 1 = M› <| by have := h_finite _ h; aesop;
        generalize_proofs at *; (
        cases h : b' ⟨ i + 1, by linarith ⟩ <;> aesop)
      generalize_proofs at *; (
      rw [ ← Real.log_le_iff_le_exp ( by linarith ) ] ; linarith [ Real.log_le_log ( by linarith ) hx ] ;);



@[blueprint
  "fks2-corollary-8"
  (title := "FKS2 Corollary 8")
  (statement := /--
  Let $\{b'_i\}_{i=1}^M$ be a set of finite subdivisions of $[\log(x_1),\infty)$, with
  $b'_1 = \log(x_1)$ and $b'_M = \infty$. Define
  $$ \varepsilon_{\pi, num}(x_1) :=
    \max_{1 \leq i \leq M-1}\varepsilon_{\pi, num}(\exp(b'_i),
    \exp(b'_{i+1})).$$
  Then $E_\pi(x) \leq \varepsilon_{\pi,num}(x_1)$ for all $x \geq x_1$.
  -/)
  (proof := /-- This follows directly from Theorem \ref{fks2-theorem-6} by taking the supremum over all partitions ending at infinity. -/)
  (latexEnv := "corollary")
  (discussion := 719)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Lemma10Substep86c747f4a149/Variant2e74c2b656754ae49cbdae6e6001febc68de8332845fdc2b1993896166180633.lean#L3799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdccd0a48781b270841d4381607ac6c992b7e0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

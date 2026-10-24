# sum_lambda_eq_sum_mu_div_sq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bfb2050-6a9a-b14f-3398-8547de729031",
  "kind": "lemma",
  "lexical_name": "sum_lambda_eq_sum_mu_div_sq",
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
  "slug": "sum-lambda-eq-sum-mu-div-sq--feada8ae506e0af08633dbb0",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2142,
    "line": 2106,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:feada8ae506e0af08633dbb005be5a6ee5aa5d9757869267bb1e27569610918d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6bfb2050-6a9a-b14f-3398-8547de729031`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2106–2142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_lambda_eq_sum_mu_div_sq (N : ℕ) :
    ∑ n ∈ Finset.Icc 1 N, ((-1 : ℝ) ^ (Ω n)) =
    ∑ d ∈ Finset.Icc 1 (Nat.sqrt N), ∑ k ∈ Finset.Icc 1 (N / d^2), (μ k : ℝ) := by
      have h_sum_rewrite : ∑ n ∈ Finset.Icc 1 N, (-1 : ℝ) ^ (Ω n) = ∑ n ∈ Finset.Icc 1 N, ∑ d ∈ (Finset.Icc 1 N).filter (fun d => d^2 ∣ n), (μ (n / d^2) : ℝ) := by
        have h_sum_rewrite : ∀ n ∈ Finset.Icc 1 N, (-1 : ℝ) ^ (Ω n) = ∑ d ∈ (Finset.Icc 1 N).filter (fun d => d^2 ∣ n), (μ (n / d^2) : ℝ) := by
          intro n hn
          have h_lambda_eq : ((-1 : ℝ) ^ (Ω n)) = ∑ d ∈ (Finset.Icc 1 n).filter (fun d => d^2 ∣ n), (μ (n / d^2) : ℝ) := by
            convert lambda_eq_sum_sq_dvd_mu n ( by linarith [ Finset.mem_Icc.mp hn ] ) using 1;
          rw [ h_lambda_eq, Finset.sum_subset ];
          · exact fun x hx => Finset.mem_filter.mpr ⟨ Finset.mem_Icc.mpr ⟨ Finset.mem_Icc.mp ( Finset.mem_filter.mp hx |>.1 ) |>.1, by linarith [ Finset.mem_Icc.mp ( Finset.mem_filter.mp hx |>.1 ) |>.2, Finset.mem_Icc.mp hn |>.2 ] ⟩, Finset.mem_filter.mp hx |>.2 ⟩;
          · simp +zetaDelta only [mem_Icc, mem_filter, not_and, and_imp, Int.cast_eq_zero] at *
            exact fun x hx₁ hx₂ hx₃ hx₄ => False.elim <| hx₄ hx₁ ( by nlinarith [ Nat.le_of_dvd ( by linarith ) hx₃ ] ) hx₃;
        exact Finset.sum_congr rfl h_sum_rewrite;
      rw [ h_sum_rewrite, Finset.sum_sigma' ];
      have h_reindex : ∑ x ∈ (Finset.Icc 1 N).sigma fun (n : ℕ) => {d ∈ Finset.Icc 1 N | d ^ 2 ∣ n}, (μ (x.fst / x.snd ^ 2) : ℝ) = ∑ d ∈ Finset.Icc 1 (Nat.sqrt N), ∑ k ∈ Finset.Icc 1 (N / d ^ 2), (μ k : ℝ) := by
        have : Finset.filter (fun x => x.snd ^ 2 ∣ x.fst) (Finset.Icc 1 N ×ˢ Finset.Icc 1 N) = Finset.biUnion (Finset.Icc 1 (Nat.sqrt N)) (fun d => Finset.image (fun k => (d ^ 2 * k, d)) (Finset.Icc 1 (N / d ^ 2))) := by
          ext ⟨n, d⟩
          simp only [Finset.mem_filter, Finset.mem_product, Finset.mem_Icc, Finset.mem_biUnion, Finset.mem_image, Prod.mk.injEq]
          constructor
          · intro ⟨⟨⟨hn1, hn2⟩, hd1, hd2⟩, hdiv⟩
            exact ⟨d, ⟨hd1, by rw [Nat.le_sqrt]; nlinarith [Nat.le_of_dvd (by linarith) hdiv]⟩, n / d ^ 2, ⟨Nat.div_pos (Nat.le_of_dvd (by linarith) hdiv) (by nlinarith), Nat.div_le_div_right hn2⟩, Nat.mul_div_cancel' hdiv, rfl⟩
          · rintro ⟨a, ⟨ha₁, ha₂⟩, b, ⟨hb₁, hb₂⟩, hn, hd⟩
            rw [← hn, ← hd]
            exact ⟨⟨⟨by nlinarith, by nlinarith [Nat.div_mul_le_self N (a ^ 2)]⟩, ha₁, by nlinarith [Nat.sqrt_le N]⟩, dvd_mul_right _ _⟩
        rw [ Finset.sum_sigma' ];
        apply Finset.sum_bij (fun x _ => ⟨x.snd, x.fst / x.snd ^ 2⟩);
        · simp_all +decide only [Finset.ext_iff, mem_filter, mem_product, mem_Icc, mem_biUnion, mem_image, Prod.forall,
            Prod.mk.injEq, ↓existsAndEq, and_true, exists_and_left, mem_sigma, true_and, and_imp]
          exact fun x hx₁ hx₂ hx₃ hx₄ hx₅ => ⟨ by nlinarith [ Nat.le_of_dvd ( by linarith ) hx₅, Nat.lt_succ_sqrt N ], Nat.div_pos ( Nat.le_of_dvd ( by linarith ) hx₅ ) ( by positivity ), Nat.div_le_div_right hx₂ ⟩;
        · simp +contextual [ Finset.mem_sigma, Finset.mem_filter ];
          aesop;
        · simp +zetaDelta only [mem_sigma, mem_Icc, mem_filter, exists_prop, Sigma.exists, and_imp] at *
          exact fun b hb₁ hb₂ hb₃ hb₄ => ⟨ b.fst ^ 2 * b.snd, b.fst, ⟨ ⟨ by nlinarith, by nlinarith [ Nat.div_mul_le_self N ( b.fst ^ 2 ) ] ⟩, ⟨ by nlinarith, by nlinarith [ Nat.div_mul_le_self N ( b.fst ^ 2 ) ] ⟩, by norm_num ⟩, by simp +decide [ Nat.mul_div_cancel_left _ ( by nlinarith : 0 < b.fst ^ 2 ) ] ⟩;
        · aesop;
      convert h_reindex using 1


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L2106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

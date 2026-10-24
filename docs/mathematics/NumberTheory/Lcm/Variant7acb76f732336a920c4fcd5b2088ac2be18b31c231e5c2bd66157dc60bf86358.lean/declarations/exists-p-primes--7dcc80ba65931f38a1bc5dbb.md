# exists_p_primes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1030,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:122832fb-d995-0599-610d-6e79aad3e9db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:eed9c0d8-d986-c6d7-f458-b32f92d3c6d3",
  "kind": "theorem",
  "lexical_name": "exists_p_primes",
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
  "slug": "exists-p-primes--7dcc80ba65931f38a1bc5dbb",
  "source": {
    "blob": "a71400b521d5902842b91edafd8e491fe67e89eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1085,
    "line": 1030,
    "path": "GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7dcc80ba65931f38a1bc5dbbd6f08864c44a7a56f597034983c4e11977415268",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eed9c0d8-d986-c6d7-f458-b32f92d3c6d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1030–1085.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_p_primes {n : ℕ} (hn : n ≥ X₀ ^ 2) :
    ∃ p : Fin 3 → ℕ, (∀ i, Nat.Prime (p i)) ∧ StrictMono p ∧
      (∀ i, p i ≤ √(n : ℝ) * (1 + 1 / (log √(n : ℝ)) ^ 3) ^ (i + 1 : ℝ)) ∧
      √(n : ℝ) < p 0 := by
  let x := √(n : ℝ)
  have hx_pos : 0 < x := (by grind : (0 : ℝ) < X₀).trans_le (hsqrt_ge hn)
  have hlog_pos : 0 < log x := by positivity [hlog hn]
  set ε := 1 / (log x) ^ 3 with hε_def
  have upper {y : ℝ} (hy : 0 < y) (hlog_ge : log y ≥ log x) {p : ℕ}
      (hp : (p : ℝ) ≤ y + y / (log y) ^ (3 : ℝ)) : (p : ℝ) ≤ y * (1 + ε) := by
    have h : y / (log y) ^ (3 : ℝ) ≤ y / (log x) ^ (3 : ℝ) :=
      div_le_div_of_nonneg_left hy.le (rpow_pos_of_pos hlog_pos 3)
        (rpow_le_rpow hlog_pos.le hlog_ge (by grind))
    calc (p : ℝ) ≤ y + y / (log y) ^ (3 : ℝ) := hp
      _ ≤ y + y / (log x) ^ (3 : ℝ) := add_le_add_right h y
      _ = y * (1 + ε) := by simp only [hε_def, ← rpow_natCast]; grind
  have hε_pos : 0 < ε := by positivity
  have hx1_ge : x * (1 + ε) ≥ X₀ := (hsqrt_ge hn).trans (le_mul_of_one_le_right hx_pos.le
    (by grind))
  have hx2_ge : x * (1 + ε) ^ 2 ≥ X₀ := (hsqrt_ge hn).trans (le_mul_of_one_le_right hx_pos.le
    (by nlinarith [sq_nonneg ε]))
  obtain ⟨p₀, hp₀_prime, hp₀_lb, hp₀_ub⟩ := Dusart.proposition_5_4 x (hsqrt_ge hn)
  obtain ⟨p₁, hp₁_prime, hp₁_lb, hp₁_ub⟩ := Dusart.proposition_5_4 _ hx1_ge
  obtain ⟨p₂, hp₂_prime, hp₂_lb, hp₂_ub⟩ := Dusart.proposition_5_4 _ hx2_ge
  have hp₀_ub' : (p₀ : ℝ) ≤ x * (1 + ε) := upper hx_pos le_rfl hp₀_ub
  have hp₁_ub' : (p₁ : ℝ) ≤ x * (1 + ε) ^ 2 := by
    linarith [sq (1 + ε), upper (by grind) (log_le_log hx_pos (by grind)) hp₁_ub]
  have hp₂_ub' : (p₂ : ℝ) ≤ x * (1 + ε) ^ 3 := by
    linarith [pow_succ (1 + ε) 2, upper (by grind) (log_le_log hx_pos (by grind)) hp₂_ub]
  refine ⟨![p₀, p₁, p₂], fun i ↦ by fin_cases i <;> assumption,
    Fin.strictMono_iff_lt_succ.mpr fun i ↦ by
      fin_cases i
      · exact cast_lt.mp (hp₀_ub'.trans_lt hp₁_lb)
      · exact cast_lt.mp (hp₁_ub'.trans_lt hp₂_lb), fun i ↦ ?_, hp₀_lb⟩
  fin_cases i <;> norm_num
  · convert hp₀_ub' using 2
  · convert hp₁_ub' using 2
  · convert hp₂_ub' using 2



@[blueprint "lem:choose-qi"
  (title := "Choice of large primes \\(q_i\\)")
  (statement := /--
  Let \(n \ge X_0^2\). Then there exist primes \(q_1 < q_2 < q_3\) with
  \[
    q_{4-i} \ge n \Bigl(1 + \frac{1}{\log^3 \sqrt{n}}\Bigr)^{-i}
  \]
  for \(i = 1,2,3\), and \(q_1 < q_2 < q_3 < n\).
  -/)
  (proof := /-- Apply Theorem~\ref{Dusart_prop_5_4} with suitable values of \(x\) slightly below \(n\),
  e.g.\ \(x = n(1+1/\log^3\sqrt{n})^{-i}\), again keeping track of the intervals.  For \(n\) large
  enough, these intervals lie in \((\sqrt{n},n)\) and contain primes \(q_i\) with the desired
  ordering. -/)
  (proofUses := ["Dusart_prop_5_4"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Variant7acb76f732336a920c4fcd5b2088ac2be18b31c231e5c2bd66157dc60bf86358.lean#L1030).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a71400b521d5902842b91edafd8e491fe67e89eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

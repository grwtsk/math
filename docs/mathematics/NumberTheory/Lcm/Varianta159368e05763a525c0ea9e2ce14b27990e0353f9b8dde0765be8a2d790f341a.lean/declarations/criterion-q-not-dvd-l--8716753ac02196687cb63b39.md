# Criterion.q_not_dvd_L'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f5c548c-57f6-91e1-1685-53b4de0e1abd",
  "kind": "theorem",
  "lexical_name": "Criterion.q_not_dvd_L'",
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
  "slug": "criterion-q-not-dvd-l--8716753ac02196687cb63b39",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 317,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8716753ac02196687cb63b3963a15e47793954aaf61f3669d044356582935740",
  "verification": {
    "reference": "docs/verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f5c548c-57f6-91e1-1685-53b4de0e1abd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Criterion.q_not_dvd_L' (c : Criterion) : ∀ i, ¬(c.q i ∣ c.L') := by
  intro i hqi
  have hn_lt_q_sq := Real.lt_sq_of_sqrt_lt <| c.h_ord_1.trans_le <| cast_le.mpr <|
    show c.p 0 ≤ c.q i by
      grw [c.hp_mono.monotone <| Fin.zero_le 2, c.h_ord_2, c.hq_mono.monotone <| Fin.zero_le i]
  norm_cast at hn_lt_q_sq
  suffices ¬(c.q i) ^ 2 ∣ L c.n from this <| Nat.pow_two _ ▸ by
    refine mul_dvd_mul_right (Finset.dvd_prod_of_mem c.q <| Finset.mem_univ i) _ |>.trans ?_
    exact Fin.prod_univ_three c.q ▸ c.ln_eq ▸ mul_dvd_mul_left _ hqi

  set p : ℕ := c.q i
  have hp : Nat.Prime p := c.hq i

  -- 1) prime power divides binary lcm iff divides one side
  have pow_dvd_lcm_iff (a b k : ℕ) (ha : a ≠ 0) (hb : b ≠ 0) :
      p ^ k ∣ Nat.lcm a b ↔ (p ^ k ∣ a ∨ p ^ k ∣ b) := by
    refine ⟨?_, by grind [dvd_trans, Nat.dvd_lcm_left, Nat.dvd_lcm_right]⟩
    grind [Prime.pow_dvd_iff_le_factorization, lcm_ne_zero, Nat.factorization_lcm, Finsupp.sup_apply]

  -- 2) prime power divides finset-lcm -> appears in some member
  have exists_mem_of_pow_dvd_finset_lcm (s : Finset ℕ) (hs_nz : ∀ x ∈ s, x ≠ 0) (k)
      (hk : 0 < k) (h : p ^ k ∣ s.lcm _root_.id) : ∃ m ∈ s, p ^ k ∣ m := by
    induction s using Finset.induction with
    | empty =>
      have := one_lt_pow hk.ne' hp.one_lt |>.trans_le <| le_of_dvd zero_lt_one h
      contradiction
    | insert a s ha ih =>
      have ha0 := hs_nz _ <| mem_insert_self a s
      have hs_nz' := (hs_nz · <| mem_insert_of_mem ·)
      have hs0 := lcm_ne_zero_iff.mpr hs_nz'
      have := (pow_dvd_lcm_iff _ _ k ha0 hs0).1 <| by simpa using h
      rcases this with hpa | hps
      · exact ⟨a, mem_insert_self a s, hpa⟩
      · have ⟨m, hmS, hpm⟩ := ih hs_nz' hps
        exact ⟨m, mem_insert_of_mem hmS, hpm⟩

  intro hq2
  have ⟨m, hmIcc, hpm⟩ := exists_mem_of_pow_dvd_finset_lcm _ (by grind) 2 zero_lt_two hq2
  refine not_lt_of_ge ?_ hn_lt_q_sq
  refine le_trans (le_of_dvd ?_ hpm) (Finset.mem_Icc.mp hmIcc).2
  exact succ_le_iff.mp (Finset.mem_Icc.mp hmIcc).1

@[blueprint
  "lem:sigmaLn"
  (title := "Normalised divisor sum for \\(L_n\\)")
  (statement := /--
  Let \(L'\) be as in Lemma~\ref{lem:Lprime-def}. Then
  \begin{equation}\label{eq:sigmaLn}
    \frac{\sigma(L_n)}{L_n}
    \;=\;
    \frac{\sigma(L')}{L'} \prod_{i=1}^3 \Bigl(1 + \frac{1}{q_i}\Bigr).
  \end{equation}
  -/)
  (proof := /--
  Use the multiplicativity of \(\sigma(\cdot)\) and the fact that each \(q_i\) occurs to the first
  power in \(L_n\).  Then
  \[
    \sigma(L_n)
    = \sigma(L') \prod_{i=1}^3 \sigma(q_i)
    = \sigma(L') \prod_{i=1}^3 (1+q_i).
  \]
  Dividing by \(L_n = L' \prod_{i=1}^3 q_i\) gives
  \[
    \frac{\sigma(L_n)}{L_n}
    = \frac{\sigma(L')}{L'} \prod_{i=1}^3 \frac{1+q_i}{q_i}
    = \frac{\sigma(L')}{L'} \prod_{i=1}^3 \Bigl(1 + \frac{1}{q_i}\Bigr).
  \]
  -/)
  (proofUses := ["lem:Lprime-def"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Criterion.Ln_div_M_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6bceb4a0-3ee5-4f8b-73c9-02c2885a326d",
  "kind": "theorem",
  "lexical_name": "Criterion.Ln_div_M_lt",
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
  "slug": "criterion-ln-div-m-lt--74e15358c2fdb2bcff653ecf",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 636,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:74e15358c2fdb2bcff653ecf6bbdf85171d4e30a7c444d503cedb789467e0c43",
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

Occurrence: `result:6bceb4a0-3ee5-4f8b-73c9-02c2885a326d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Criterion.Ln_div_M_lt (c : Criterion) :
    L c.n / c.M < (1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i))⁻¹ := by
  have hprod_q_pos_R : (0 : ℝ) < (∏ i, c.q i) :=
    cast_pos.mpr <| prod_pos fun i _ ↦ (c.hq i).pos
  have hLM_eq :
      (L c.n : ℝ) / c.M = ((∏ i, c.q i) : ℝ) / (((4 * ∏ i, c.p i) * c.m) : ℕ) := by
    simp only [c.L_eq_prod_q_mul_L', M, cast_mul]
    have hL'_ne : (c.L' : ℝ) ≠ 0 := cast_ne_zero.mpr c.L'_pos.ne'
    field_simp
    congr 1
    exact prod_natCast univ c.q
  have hLM_eq' : (L c.n : ℝ) / c.M = (1 - (c.r : ℝ) / (∏ i, c.q i))⁻¹ := by
    have hprod_q_eq_R : ((∏ i, c.q i) : ℝ) = ((4 * ∏ i, c.p i) * c.m : ℕ) + c.r := by
      exact_mod_cast c.prod_q_eq
    have h4pm_pos : 0 < (4 * ∏ i, c.p i) * c.m := mul_pos
      (mul_pos (by norm_num) <| prod_pos fun i _ ↦ (c.hp i).pos) c.m_pos
    rw [hLM_eq, hprod_q_eq_R]
    have hne : (((4 * ∏ i, c.p i) * c.m : ℕ) : ℝ) ≠ 0 := cast_ne_zero.mpr h4pm_pos.ne'
    have hsum_pos : (0 : ℝ) < ((4 * ∏ i, c.p i) * c.m : ℕ) + c.r := by positivity
    field_simp
    simp_all
  have h1_sub_pos : (0 : ℝ) < 1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i) := by
    rw [sub_pos, div_lt_one hprod_q_pos_R]; exact_mod_cast c.prod_p_le_prod_q
  have hsub_lt : 1 - (4 : ℝ) * (∏ i, c.p i) / (∏ i, c.q i) <
      1 - (c.r : ℝ) / (∏ i, c.q i) := by gcongr; exact_mod_cast c.r_le
  rw [hLM_eq']
  have hinv := one_div_lt_one_div_of_lt h1_sub_pos hsub_lt
  simp only [one_div] at hinv
  convert hinv using 2

blueprint_comment /--
\subsection{A sufficient condition}

We give a sufficient condition for $\sigma(M) \geq \sigma(L_n)$.
-/

@[blueprint
  "lem:criterion-sufficient"
  (title := "A sufficient inequality")
  (statement := /--
  Suppose
  \[
    \frac{\sigma(M)}{M}
    \Bigl(1 - \frac{4 p_1 p_2 p_3}{q_1 q_2 q_3}\Bigr)
    \;\ge\; \frac{\sigma(L_n)}{L_n}.
  \]
  Then \(\sigma(M) \ge \sigma(L_n)\), and so \(L_n\) is not highly abundant.
  -/)
  (proof := /--
  By Lemma~\ref{lem:M-basic},
  \[
    \frac{L_n}{M} < \Bigl(1 - \frac{4 p_1 p_2 p_3}{q_1 q_2 q_3}\Bigr)^{-1}.
  \]
  Hence
  \[
    \frac{\sigma(M)}{M} \ge \frac{\sigma(L_n)}{L_n}
    \Bigl(1 - \frac{4 p_1 p_2 p_3}{q_1 q_2 q_3}\Bigr)^{-1}
    > \frac{\sigma(L_n)}{L_n} \cdot \frac{M}{L_n}.
  \]
  Multiplying both sides by \(M\) gives
  \[
    \sigma(M) > \sigma(L_n) \cdot \frac{M}{L_n}
  \]
  and hence
  \[
    \sigma(M) \ge \sigma(L_n),
  \]
  since \(M/L_n<1\) and both sides are integers.
  -/)
  (proofUses := ["lem:M-basic"])
  (latexEnv := "lemma")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ex_pi_gt_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:242ffd61-9757-fa8d-ddb4-d46df2ae206d",
  "kind": "theorem",
  "lexical_name": "ex_pi_gt_nonneg",
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
  "slug": "ex-pi-gt-nonneg--8aa5b955ade4b1bc8dcbc2e2",
  "source": {
    "blob": "b6ca87b02f4d071369a6450567252419632f736d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 286,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aa5b955ade4b1bc8dcbc2e28f16075f99fea86f3d0bac5e88f0112b4a521175",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:242ffd61-9757-fa8d-ddb4-d46df2ae206d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ex_pi_gt_nonneg
    (m_a x_a : ℝ)
    (hm : 0 ≤ m_a)
    (hlower : ∀ x > x_a,
      x * ∑ k ∈ Finset.range 5, (k.factorial / log x ^ (k + 1))
        + (m_a * x / log x ^ 6) < pi x) :
    ∀ x > exp 1 * x_a,
      exp 1 * x / log x * pi (x / exp 1) >
        x ^ 2 * (
          1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5
          + 65 / log x ^ 6 + ε' m_a x / log x ^ 7) := by
  intro x hx
  have hxa_ge_one : 1 ≤ x_a := by
    by_contra hxa
    have hlt : x_a < 1 := lt_of_not_ge hxa
    have hbad := hlower 1 hlt
    have hpi1 : pi 1 = 0 := by
      unfold _root_.pi
      norm_num
    have hleft0 :
        (1 : ℝ) * ∑ k ∈ Finset.range 5, (k.factorial / log (1 : ℝ) ^ (k + 1))
          + (m_a * (1 : ℝ) / log (1 : ℝ) ^ 6) = 0 := by
      norm_num
    linarith
  have hxe : exp 1 < x := by
    have h1 : exp 1 ≤ exp 1 * x_a := by
      nlinarith [hxa_ge_one, exp_pos (1 : ℝ)]
    grind
  have hlog_gt1 : 1 < log x := by
    simpa using log_lt_log (show 0 < exp 1 by positivity) hxe
  have hlog_pos : 0 < log x := by linarith
  have hx_pos : 0 < x := lt_trans (exp_pos 1) hxe
  have hy_gt : x / exp 1 > x_a := by
    have hmul : x_a * exp 1 < x := by simpa [mul_comm] using hx
    exact (lt_div_iff₀ (exp_pos 1)).2 hmul
  have hlow := hlower (x / exp 1) hy_gt
  have hmul_pos : 0 < exp 1 * x / log x :=
    div_pos (mul_pos (exp_pos 1) hx_pos) hlog_pos
  have hmul := mul_lt_mul_of_pos_left hlow hmul_pos
  have hlog_div : log (x / exp 1) = log x - 1 := by
    rw [log_div (show x ≠ 0 by linarith) (show exp 1 ≠ 0 by positivity), log_exp]
  have hfrom0 :
      exp 1 * x / log x *
        ((x / exp 1) * ∑ k ∈ Finset.range 5, (k.factorial / (log x - 1) ^ (k + 1))
          + (m_a * (x / exp 1) / (log x - 1) ^ 6))
      < exp 1 * x / log x * pi (x / exp 1) := by
    simpa [hlog_div] using hmul
  let S : ℝ := ∑ k ∈ Finset.range 5, (k.factorial / (log x - 1) ^ (k + 1))
  have hfrom :
      x ^ 2 * ((1 / log x) * (S + m_a / (log x - 1) ^ 6))
      < exp 1 * x / log x * pi (x / exp 1) := by
    have hleft :
        exp 1 * x / log x * ((x / exp 1) * S + (m_a * (x / exp 1) / (log x - 1) ^ 6))
        = x ^ 2 * ((1 / log x) * (S + m_a / (log x - 1) ^ 6)) := by
      field_simp [hlog_pos.ne', show (exp 1 : ℝ) ≠ 0 by positivity]
    simpa [S, hleft] using hfrom0
  have hsum :
      S =
        1 / (log x - 1) + 1 / (log x - 1) ^ 2 + 2 / (log x - 1) ^ 3 +
        6 / (log x - 1) ^ 4 + 24 / (log x - 1) ^ 5 := by
    dsimp [S]
    simp [Finset.sum_range_succ, Nat.factorial]
  have hfac :
      (1 / log x) * S
      ≥
      1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
        + (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
            30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7 := by
    simpa [hsum] using shift_factorial_lower (log x) hlog_gt1
  have hmterm :
      m_a / (log x * (log x - 1) ^ 6)
      ≥ m_a / log x ^ 7 := by
    simpa using shift_m_lower_of_nonneg m_a (log x) hm hlog_gt1
  have hcore65 :
      (1 / log x) * (S + m_a / (log x - 1) ^ 6)
      ≥
      1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
        + ε' m_a x / log x ^ 7 := by
    have hsplit :
        (1 / log x) * (S + m_a / (log x - 1) ^ 6)
        = (1 / log x) * S + m_a / (log x * (log x - 1) ^ 6) := by
      calc
        (1 / log x) * (S + m_a / (log x - 1) ^ 6)
            = (1 / log x) * S + (1 / log x) * (m_a / (log x - 1) ^ 6) := by ring
        _ = (1 / log x) * S + m_a / (log x * (log x - 1) ^ 6) := by
          field_simp [hlog_pos.ne']
    have hsum' := add_le_add hfac hmterm
    have hsum'' :
        1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
          + (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
              30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7
          + m_a / log x ^ 7
        ≤ (1 / log x) * (S + m_a / (log x - 1) ^ 6) := by
      calc
        1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
          + (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
              30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7
          + m_a / log x ^ 7
            ≤ (1 / log x) * S + m_a / (log x * (log x - 1) ^ 6) := hsum'
        _ = (1 / log x) * (S + m_a / (log x - 1) ^ 6) := hsplit.symm
    calc
      1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
        + ε' m_a x / log x ^ 7
          =
            1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6
              + (206 + 364 / log x + 381 / log x ^ 2 + 238 / log x ^ 3 + 97 / log x ^ 4 +
                  30 / log x ^ 5 + 8 / log x ^ 6) / log x ^ 7
              + m_a / log x ^ 7 := by
                simp [ε']
                ring
      _ ≤ (1 / log x) * (S + m_a / (log x - 1) ^ 6) := hsum''
  have htarget_le :
      x ^ 2 *
          (1 / log x ^ 2 + 2 / log x ^ 3 + 5 / log x ^ 4 + 16 / log x ^ 5 + 65 / log x ^ 6 +
            ε' m_a x / log x ^ 7)
      ≤ x ^ 2 * ((1 / log x) * (S + m_a / (log x - 1) ^ 6)) :=
    mul_le_mul_of_nonneg_left hcore65 (sq_nonneg x)
  grind
@[blueprint
  "ramanujan-criterion-2"
  (title := "Criterion for Ramanujan's inequality, substep 2")
  (statement := /--
Let $m_a \in \mathbb{R}$  and suppose that for $x>x_a$ we have
$$\pi(x) > x \sum_{k=0}^{4} \frac{k!}{\log^{k+1}x}+\frac{m_a x}{\log^6 x}.$$
Then for $x > e x_a$ we have
$$\frac{ex}{\log x} \pi \Big(\frac{x}{e} \Big) > x^2 \Big\{ \frac{1}{\log^2 x}+ \frac{2}{\log^3 x}+ \frac{5}{\log^4 x}+ \frac{16}{\log^5 x}+ \frac{64}{\log^6 x} + \frac{\epsilon'_{m_a}(x)}{\log^7 x} \Big\},$$
where
$$\epsilon'_{m_a}(x) = 206+m_a+\frac{364}{\log x} + \frac{381}{\log^2 x}+\frac{238}{\log^3 x} + \frac{97}{\log^4 x} + \frac{30}{\log^5 x} + \frac{8}{\log^6 x}.$$
-/)
  (proof := /-- We have
$$\frac{ex}{\log x} \pi \Big(\frac{x}{e} \Big) > \frac{x^2}{\log x} \Big( \sum_{k=0}^{4} \frac{k!}{(\log x - 1)^{k+1}}\Big) + \frac{m_a x}{(\log x-1)^{6}}$$
Substituting
\begin{eqnarray*}
\frac{1}{(\log x - 1)^{k+1}} & = & \frac{1}{\log^{k+1} x} \Big(1+ \frac{1}{\log x} + \frac{1}{\log^2 x} + \frac{1}{\log^3 x} + \cdots \Big)^{k+1} \\ \\
& > & \frac{1}{\log^{k+1} x} \Big(1+ \frac{1}{\log x}+ \cdots + \frac{1}{\log^{5-k} x} \Big)^{k+1}
\end{eqnarray*}
we obtain the claim.
  -/)
  (latexEnv := "sublemma")
  (discussion := 984)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SqPiLtE3bf4b1c9656/Variant7ec54b8ea0878c6aaa463fc29aee43c5002268defa78f207c2d5b309afc92259.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6ca87b02f4d071369a6450567252419632f736d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

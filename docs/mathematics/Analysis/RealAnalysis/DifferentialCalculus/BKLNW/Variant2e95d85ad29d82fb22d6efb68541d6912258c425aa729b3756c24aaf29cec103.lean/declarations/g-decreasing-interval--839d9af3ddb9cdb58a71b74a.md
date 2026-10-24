# g_decreasing_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 805,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6329768d-e95a-3c7c-84ac-a3acff2fbfa6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:174180bb-88c2-15bc-add7-5902661ecc92",
  "kind": "lemma",
  "lexical_name": "g_decreasing_interval",
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
  "slug": "g-decreasing-interval--839d9af3ddb9cdb58a71b74a",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 848,
    "line": 805,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:839d9af3ddb9cdb58a71b74ad1b5b26abd647ea0b54e37b422223d235283eeea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:174180bb-88c2-15bc-add7-5902661ecc92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 805–848.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma g_decreasing_interval (A C : ℝ) (hA : 0 < A) (hC : 0 < C) (u v : ℝ) (hu : 4 * A ^ 2 / C ^ 2 ≤ u) (huv : u ≤ v) :
    v ^ A * Real.exp (-C * Real.sqrt v) ≤ u ^ A * Real.exp (-C * Real.sqrt u) := by
      -- Let $f(t) = t^A e^{-C\sqrt{t}}$. The derivative is $f'(t) = t^{A-1} e^{-C\sqrt{t}} (A - \frac{C}{2}\sqrt{t})$.
      set f := fun t : ℝ => t ^ A * Real.exp (-C * Real.sqrt t)
      have h_deriv : ∀ t > 0, deriv f t = t ^ (A - 1) * Real.exp (-C * Real.sqrt t) * (A - C / 2 * Real.sqrt t) := by
        intro t ht; norm_num [ f, ht.ne', Real.sqrt_eq_rpow, Real.rpow_sub ht ]
        rw [deriv_fun_mul, Real.deriv_rpow_const, _root_.deriv_exp]
        · simp only [deriv.fun_neg', deriv_const_mul_field',
          Real.deriv_rpow_const, mul_neg]
          rw [rpow_sub_one (by linarith), rpow_sub_one (by linarith)]
          ring
        all_goals fun_prop (disch := linarith)
      -- Since $4A^2/C^2 \le u \le v$, we have $f'(t) \le 0$ for $t \ge 4A^2/C^2$.
      have h_deriv_nonpos : ∀ t > 0, 4 * A ^ 2 / C ^ 2 ≤ t → deriv f t ≤ 0 := by
        intro t ht ht'; rw [ h_deriv t ht ] ; exact mul_nonpos_of_nonneg_of_nonpos ( mul_nonneg ( Real.rpow_nonneg ht.le _ ) ( Real.exp_nonneg _ ) ) ( sub_nonpos_of_le <| by rw [ div_le_iff₀ <| by positivity ] at *; nlinarith [ show 0 ≤ Real.sqrt t * C by positivity, Real.mul_self_sqrt ht.le ] ) ;
      by_contra h_contra;
      -- Apply the mean value theorem to $f$ on the interval $[u, v]$.
      obtain ⟨c, hc⟩ : ∃ c ∈ Set.Ioo u v, deriv f c = (f v - f u) / (v - u) := by
        apply_rules [ exists_deriv_eq_slope ];
        · exact huv.lt_of_ne ( by rintro rfl; linarith );
        · exact continuousOn_of_forall_continuousAt fun t ht => ContinuousAt.mul ( ContinuousAt.rpow continuousAt_id continuousAt_const <| Or.inr <| by linarith ) <| ContinuousAt.rexp <| ContinuousAt.mul continuousAt_const <| Real.continuous_sqrt.continuousAt;
        · exact fun x hx => DifferentiableAt.differentiableWithinAt ( by exact DifferentiableAt.mul ( DifferentiableAt.rpow ( differentiableAt_id ) ( by norm_num ) ( by linarith [ hx.1, show 0 < u by exact lt_of_lt_of_le ( by positivity ) hu ] ) ) ( DifferentiableAt.exp ( DifferentiableAt.mul ( differentiableAt_const _ ) ( DifferentiableAt.sqrt ( differentiableAt_id ) ( by linarith [ hx.1, show 0 < u by exact lt_of_lt_of_le ( by positivity ) hu ] ) ) ) ) );
      simp +zetaDelta only [gt_iff_lt, neg_mul, ge_iff_le, not_le, Set.mem_Ioo] at *
      rw [ eq_div_iff ] at hc <;> nlinarith [ h_deriv_nonpos c ( by linarith [ show 0 < u by exact lt_of_lt_of_le ( by positivity ) hu ] ) ( by linarith ) ]


@[blueprint
  "bklnw-lem-6"
  (title := "BKLNW Lemma 6")
  (statement := /--  Suppose there exists $c_1, c_2, c_3, c_4 > 0$ such that
\begin{equation}\label{bklnw_3.3}
|\theta(x) - x| \leq c_1 x (\log x)^{c_2} \exp(-c_3 (\log x)^{\frac{1}{2}}) \quad \text{for all } x \geq c_4.
\end{equation}
Let $k > 0$ and let $b \geq \max\left(\log c_4, \log\left(\frac{4(c_2 + k)^2}{c_3^2}\right)\right)$. Then for all $x \geq e^b$ we have
$$
|\theta(x) - x| \leq \frac{\mathcal{A}_k(b) x}{(\log x)^k},
$$
where
$$
\mathcal{A}_k(b) = c_1 \cdot b^{c_2 + k} e^{-c_3\sqrt{b}}.
$$ -/)
  (proof := /-- We denote $g(x) = (\log x)^{c_2 + k} \exp(-c_3 (\log x)^{\frac{1}{2}})$. By \eqref{bklnw_3.3}, $|\theta(x) - x| < \frac{c_1 g(x) x}{(\log x)^k}$ for all $x \geq c_4$. It suffices to bound $g$: by calculus, $g(x)$ decreases when $x \geq \frac{4(c_2 + k)^2}{c_3^2}$. Therefore $|\theta(x) - x| \leq \frac{c_1 g(e^b) x}{(\log x)^k}$. Note that $c_1 g(e^b) = \mathcal{A}_k(b)$ and the condition on $b$ follows from the conditions $e^b \geq c_4$ and $e^b \geq \frac{4(c_2 + k)^2}{c_3^2}$. -/)
  (latexEnv := "lemma")
  (discussion := 854)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L805).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

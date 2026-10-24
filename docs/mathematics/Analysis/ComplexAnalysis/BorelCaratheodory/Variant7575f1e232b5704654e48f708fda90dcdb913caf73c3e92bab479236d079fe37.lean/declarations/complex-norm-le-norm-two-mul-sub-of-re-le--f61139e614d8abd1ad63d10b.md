# Complex.norm_le_norm_two_mul_sub_of_re_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d075cf2a-29e5-a53f-73e2-a56018ef7613",
  "kind": "lemma",
  "lexical_name": "Complex.norm_le_norm_two_mul_sub_of_re_le",
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
  "slug": "complex-norm-le-norm-two-mul-sub-of-re-le--f61139e614d8abd1ad63d10b",
  "source": {
    "blob": "af5af9c63f28c935725a77402f969c98766e02e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 255,
    "path": "GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f61139e614d8abd1ad63d10b89f06c2c31bb134da8ce651d655d2c0e01eb7517",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d075cf2a-29e5-a53f-73e2-a56018ef7613`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Complex.norm_le_norm_two_mul_sub_of_re_le {M : ℝ}
    {x : ℂ} (Mpos : 0 < M) (hyp_re_x : x.re ≤ M) :
    ‖x‖ ≤ ‖2 * M - x‖ := by
  rw [← sq_le_sq₀ (by positivity) (by positivity)]
  repeat rw [Complex.sq_norm, Complex.normSq_apply]
  rw [calc
    (2 * M - x).re * (2 * M - x).re +
        (2 * M - x).im * (2 * M - x).im =
      (2 * M - x.re) * (2 * M - x.re) +
        x.im * x.im := by simp
    _ = x.re * x.re +
        (x.im * x.im + 4 * M * (M - x.re)) := by ring]
  bound

-- MIGRATED TO STRONGPNT.LEAN
-- @[blueprint "AnalyticOn.nor m_le_of_norm_le_on_sphere"
--   (title := "AnalyticOn.norm-le-of-norm-le-on-sphere")
--   (statement := /--
--     An application of the Maximum modulus principle.
--   -/)
--   (proof := /--
--     This is standard in the literature.
--   -/)
--   (latexEnv := "lemma")]
-- lemma AnalyticOn.norm_le_of_norm_le_on_sphere {f : ℂ → ℂ} {C R r : ℝ}
--     (analytic : AnalyticOn ℂ f (Metric.closedBall 0 R))
--     (hyp_r : r ≤ R)
--     (cond : ∀ z ∈ Metric.sphere 0 r, ‖f z‖ ≤ C)
--     (w : ℂ) (wInS : w ∈ Metric.closedBall 0 r) :
--     ‖f w‖ ≤ C := by
--   apply Complex.norm_le_of_forall_mem_frontier_norm_le
--     (U := Metric.closedBall 0 r) Metric.isBounded_closedBall
--   · apply DifferentiableOn.diffContOnCl
--     rw [Metric.closure_closedBall]
--     exact AnalyticOn.differentiableOn
--       (AnalyticOn.mono analytic
--         (Metric.closedBall_subset_closedBall (by linarith)))
--   · rw [frontier_closedBall']
--     exact cond
--   · rw [Metric.closure_closedBall]
--     exact wInS

@[blueprint "borelCaratheodory_closedBall"
  (title := "borelCaratheodory-closedBall")
  (statement := /--
    Let $R,\,M>0$. Let $f$ be analytic on $|z|\leq R$ such that
    $f(0)=0$ and suppose $\Re f(z)\leq M$ for all $|z|\leq R$.
    Then for any $0 < r < R$,
    $$\sup_{|z|\leq r}|f(z)|\leq\frac{2Mr}{R-r}.$$
  -/)
  (proof := /--
    Let
    $$f_M(z)=\frac{f(z)/z}{2M-f(z)}.$$
    Note that $2M-f(z)\neq 0$ because
    $\Re (2M-f(z))=2M-\Re f(z)\geq M>0$. Additionally, since
    $f(z)$ has a zero at $0$, we know that $f(z)/z$ is analytic
    on $|z|\leq R$. Likewise, $f_M(z)$ is analytic on
    $|z|\leq R$.
    Now note that $|f(z)|\leq|2M-f(z)|$ since $\Re f(z)\leq M$.
    Thus we have that
    $$|f_M(z)|=\frac{|f(z)|/|z|}{|2M-f(z)|}
      \leq\frac{1}{|z|}.$$
    Now by the maximum modulus principle, we know the maximum of
    $|f_M|$ must occur on the boundary where $|z|=R$. Thus,
    $|f_M(z)|\leq 1/R$ for all $|z|\leq R$. So for $|z|=r$ we
    have
    $$|f_M(z)|=\frac{|f(z)|/r}{|2M-f(z)|}\leq\frac{1}{R}
    \implies R\,|f(z)|\leq r\,|2M-f(z)|\leq 2Mr+r\,|f(z)|.$$
    Which by algebraic manipulation gives
    $$|f(z)|\leq\frac{2Mr}{R-r}.$$
    Once more, by the maximum modulus principle, we know the
    maximum of $|f|$ must occur on the boundary where $|z|=r$.
    Thus, the desired result immediately follows
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/BorelCaratheodory/Variant7575f1e232b5704654e48f708fda90dcdb913caf73c3e92bab479236d079fe37.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af5af9c63f28c935725a77402f969c98766e02e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

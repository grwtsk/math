# prod_p_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fcdeb22-240a-cbd9-dcc4-e8e964c92c77",
  "kind": "theorem",
  "lexical_name": "prod_p_ge",
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
  "slug": "prod-p-ge--681fd8fdfd381ef0b9afd6d3",
  "source": {
    "blob": "5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1370,
    "line": 1310,
    "path": "GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:681fd8fdfd381ef0b9afd6d3e10cf01d0b55cd04c5db3d48bfa72a01053613af",
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

Occurrence: `result:6fcdeb22-240a-cbd9-dcc4-e8e964c92c77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1310–1370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prod_p_ge {n : ℕ} (hn : n ≥ X₀ ^ 2) :
    ∏ i, (1 + (1 : ℝ) /
        ((exists_p_primes hn).choose i * ((exists_p_primes hn).choose i + 1))) ≥
      ∏ i : Fin 3,
        (1 + 1 / ((1 + 1 / (log √(n : ℝ)) ^ 3) ^ (2 * (i : ℕ) + 2 : ℝ) * (n + √n))) := by
  refine Finset.prod_le_prod (fun i _ => by positivity [hlog hn]) fun i _ => ?_
  set p := (exists_p_primes hn).choose
  have h₀ (i) : √n < p i := by
    have : p 0 ≤ p i := by
      apply (exists_p_primes hn).choose_spec.2.1.monotone
      simp
    grw [← this]
    exact (exists_p_primes hn).choose_spec.2.2.2
  gcongr 1 + 1 / ?_
  · have := ((exists_p_primes hn).choose_spec.1 i).pos
    positivity
  have : p i ≤ √n * (1 + 1 / log √n ^ 3) ^ (i + 1 : ℝ) :=
    (exists_p_primes hn).choose_spec.2.2.1 i
  have h₁ : p i ^ 2 ≤ n * (1 + 1 / log √n ^ 3) ^ (2 * i + 2 : ℝ) := by
    grw [this, mul_pow, sq_sqrt (by simp)]
    norm_cast
    rw [← pow_mul]
    grind
  have h₂ : p i + 1 ≤ p i * (1 / n * (n + √n)) := by
    field_simp [this]
    linear_combination √n * h₀ i - sq_sqrt (cast_nonneg n)
  grw [h₂, ← mul_assoc, ← sq, h₁]
  field_simp
  rfl

@[blueprint
  "lem:pq-ratio"
  (title := "Lower bound for the product ratio \\(p_i/q_i\\)")
  (statement := /--
  With \(p_i,q_i\) as in Lemmas~\ref{lem:choose-pi} and \ref{lem:choose-qi}, we have
  \begin{equation}\label{eq:pq-ratio}
    1 - \frac{4 p_1 p_2 p_3}{q_1 q_2 q_3}
    \ge
    1 - \frac{4 \bigl(1 + \frac{1}{\log^3 \sqrt{n}}\bigr)^{12}}{n^{3/2}}.
  \end{equation}
  -/)
  (proof := /--
  We have \(p_i \le \sqrt{n} (1+1/\log^3 \sqrt{n})^i\), so
  \[
    p_1 p_2 p_3 \le n^{3/2} \bigl(1 + \tfrac{1}{\log^3 \sqrt{n}}\bigr)^{6}.
  \]
  Similarly, \(q_i \ge n(1+1/\log^3 \sqrt{n})^{-i}\), so
  \[
    q_1 q_2 q_3 \ge n^3 \bigl(1 + \tfrac{1}{\log^3 \sqrt{n}}\bigr)^{-6}.
  \]
  Combining,
  \[
    \frac{p_1 p_2 p_3}{q_1 q_2 q_3} \le
    \frac{n^{3/2} \bigl(1 + \frac{1}{\log^3 \sqrt{n}}\bigr)^{6}}{n^3
    \bigl(1 + \frac{1}{\log^3\sqrt{n}}\bigr)^{-6}}
    = \frac{\bigl(1 + \frac{1}{\log^3 \sqrt{n}}\bigr)^{12}}{n^{3/2}}.
  \]
  This implies \eqref{eq:pq-ratio}.
  -/)
  (latexEnv := "lemma")
  (discussion := 534)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Lcm/Varianta159368e05763a525c0ea9e2ce14b27990e0353f9b8dde0765be8a2d790f341a.lean#L1310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cb9afb3bbcc8b6114129c1b549a9f2ad5d98440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

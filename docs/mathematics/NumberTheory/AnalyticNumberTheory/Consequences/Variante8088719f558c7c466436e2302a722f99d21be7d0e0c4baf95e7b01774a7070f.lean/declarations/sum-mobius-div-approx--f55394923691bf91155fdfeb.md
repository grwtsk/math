# sum_mobius_div_approx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a97e12e7-bbc8-90d9-2604-f2ac26a29848",
  "kind": "lemma",
  "lexical_name": "sum_mobius_div_approx",
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
  "slug": "sum-mobius-div-approx--f55394923691bf91155fdfeb",
  "source": {
    "blob": "0d55aed8d28b87d0341356666e0dbf58ba828e44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2410,
    "line": 2365,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f55394923691bf91155fdfeb650d6a1d7913bce1b41206d81f1440b345edef04",
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

Occurrence: `result:a97e12e7-bbc8-90d9-2604-f2ac26a29848`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2365–2410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_mobius_div_approx (x : ℝ) (K : ℕ) (hK : 0 < K) (hx : 1 ≤ x) :
  |x * (∑ n ∈ Icc 1 ⌊x/K⌋₊, (μ n : ℝ) / n) - 1| ≤ x/K + |∑ n ∈ Ioc ⌊x/K⌋₊ ⌊x⌋₊, (μ n : ℝ) * (⌊x / (n : ℝ)⌋ : ℝ)| := by
    have h_split : ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (μ n : ℝ) * ⌊x / (n : ℝ)⌋ = (∑ n ∈ Finset.Icc 1 ⌊x / (K : ℝ)⌋₊, (μ n : ℝ) * ⌊x / (n : ℝ)⌋) + (∑ n ∈ Finset.Ioc ⌊x / (K : ℝ)⌋₊ ⌊x⌋₊, (μ n : ℝ) * ⌊x / (n : ℝ)⌋) := by
      erw [Finset.sum_Ioc_consecutive] <;> norm_num
      · rfl
      · exact Nat.floor_mono <| div_le_self (by positivity) <| mod_cast hK
    have h_floor : ∑ n ∈ Finset.Icc 1 ⌊x / (K : ℝ)⌋₊, (μ n : ℝ) * ⌊x / (n : ℝ)⌋ = x * ∑ n ∈ Finset.Icc 1 ⌊x / (K : ℝ)⌋₊, (μ n : ℝ) / (n : ℝ) - ∑ n ∈ Finset.Icc 1 ⌊x / (K : ℝ)⌋₊, (μ n : ℝ) * (x / (n : ℝ) - ⌊x / (n : ℝ)⌋) := by
      rw [Finset.mul_sum _ _ _] ; rw [← Finset.sum_sub_distrib] ; exact Finset.sum_congr rfl fun _ _ => by ring
    have h_bound : |∑ n ∈ Finset.Icc 1 ⌊x / (K : ℝ)⌋₊, (μ n : ℝ) * (x / (n : ℝ) - ⌊x / (n : ℝ)⌋)| ≤ ⌊x / (K : ℝ)⌋₊ := by
      have h_bound : ∀ n ∈ Finset.Icc 1 ⌊x / (K : ℝ)⌋₊, |(μ n : ℝ) * (x / (n : ℝ) - ⌊x / (n : ℝ)⌋)| ≤ 1 := by
        norm_num [abs_mul]
        exact fun n hn₁ hn₂ => mul_le_one₀ (mod_cast by exact abs_moebius_le_one) (abs_nonneg _) (abs_le.mpr ⟨by linarith [Int.fract_nonneg (x / n)], by linarith [Int.fract_lt_one (x / n)]⟩)
      exact le_trans (Finset.abs_sum_le_sum_abs _ _) (le_trans (Finset.sum_le_sum h_bound) (by norm_num))
    have h_sum_floor : ∑ n ∈ Finset.Icc 1 ⌊x⌋₊, (μ n : ℝ) * ⌊x / (n : ℝ)⌋ = 1 := by
      convert sum_mobius_floor x hx using 1
    cases abs_cases (x * ∑ n ∈ Finset.Icc 1 ⌊x / (K : ℝ) ⌋₊, (μ n : ℝ) / n - 1) <;> cases abs_cases (∑ n ∈ Finset.Ioc ⌊x / (K : ℝ) ⌋₊ ⌊x⌋₊, (μ n : ℝ) * ⌊x / (n : ℝ) ⌋) <;> linarith [abs_le.mp h_bound, Nat.floor_le (show 0 ≤ x / (K : ℝ) by positivity), Nat.lt_floor_add_one (x / (K : ℝ))]



@[blueprint
  "mu-pnt-alt"
  (title := "Alternate M\\\"obius form of prime number theorem")
  (statement := /-- We have $\sum_{n \leq x} \mu(n)/n = o(1)$. -/)
  (proof := /--
  As in the proof of Theorem \ref{mun}, we have
    $$ 1 = \sum_{d \leq x} \mu(d) \lfloor \frac{x}{d} \rfloor$$
    $$ = x \sum_{d \leq x} \frac{\mu(d)}{d} - \sum_{d \leq x} \mu(d) \{ \frac{x}{d} \}$$
  so it will suffice to show that
  $$ \sum_{d \leq x} \mu(d) \{ \frac{x}{d} \} = o(x).$$
  Let $N$  be a natural number.  It suffices to show that
  $$ \sum_{d \leq x} \mu(d) \{ \frac{x}{d} \} = O(x/N).$$
  if $x$ is large enough depending on $N$.
  We can split the left-hand side as the sum of
  $$ \sum_{d \leq x/N} \mu(d) \{ \frac{x}{d} \} $$
  and
  $$ \sum_{j=1}^{N-1} \sum_{x/(j+1) < d \leq x/j} \mu(d) (x/d - j).$$
  The first term is clearly $O(x/N)$.  For the second term, we can use Theorem \ref{mu-pnt}
  and summation by parts (using the fact that $x/d-j$ is monotone and bounded) to find that
  $$ \sum_{x/(j+1) < d \leq x/j} \mu(d) (x/d - j) = o(x)$$
  for any given $j$, so in particular
  $$ \sum_{x/(j+1) < d \leq x/j} \mu(d) (x/d - j) = O(x/N^2)$$
  for all $j=1,\dots,N-1$ if $x$ is large enough depending on $N$.
  Summing all the bounds, we obtain the claim.
  -/)
  (proofUses := ["mu-pnt"])
  (latexEnv := "proposition")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Consequences/Variante8088719f558c7c466436e2302a722f99d21be7d0e0c4baf95e7b01774a7070f.lean#L2365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d55aed8d28b87d0341356666e0dbf58ba828e44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

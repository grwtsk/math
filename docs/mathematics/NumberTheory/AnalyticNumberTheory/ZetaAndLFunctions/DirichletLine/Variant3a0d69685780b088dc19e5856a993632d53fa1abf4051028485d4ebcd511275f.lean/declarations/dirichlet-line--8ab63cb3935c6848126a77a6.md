# dirichlet_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "623d2728545fdcf928c20af733ee17858b74c2d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 207,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:806d5ac7-5421-9c9a-bce9-fc8c12c81835",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:430e717b-0195-4914-bb59-4bb1e72f1885",
  "kind": "theorem",
  "lexical_name": "dirichlet_line",
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
  "slug": "dirichlet-line--8ab63cb3935c6848126a77a6",
  "source": {
    "blob": "623d2728545fdcf928c20af733ee17858b74c2d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 207,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ab63cb3935c6848126a77a68ec56e3d9b01647e8dabcd67f8cb778d0e92cdf7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:430e717b-0195-4914-bb59-4bb1e72f1885`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichlet_line {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k) (hkc : HasCompactSupport k) (c : ℝ)
    (a : ℕ → ℂ) (ha : Summable (fun N : ℕ => ‖a N‖ * (N : ℝ) ^ (-c))) :
    Integrable (fun t : ℝ => Hfn k ((c : ℂ) + t * I) * LSeries a ((c : ℂ) + t * I)) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, Hfn k ((c : ℂ) + t * I) * LSeries a ((c : ℂ) + t * I))
      = ∑' N : ℕ, a N / ((Real.sqrt N : ℝ) : ℂ) * k (Real.log N) := by
  refine ⟨integrable_Hfn_mul_LSeries hk hkc a c ha, ?_⟩
  have h1 : ∀ t : ℝ, Hfn k (c + t * I) * LSeries a (c + t * I)
      = ∑' n : ℕ, paperFT (tilt k (c - 1/2)) t * LSeries.term a (c + t * I) n :=
    fun t => integrand_eq_tsum_gen k a c t
  calc (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k (c + t * I) * LSeries a (c + t * I)
      = (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, ∑' n : ℕ, paperFT (tilt k (c - 1/2)) t
          * LSeries.term a (c + t * I) n := by
        rw [integral_congr_ae (Filter.Eventually.of_forall h1)]
    _ = (1 / (2 * Real.pi) : ℂ) * ∑' n : ℕ, ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t
          * LSeries.term a (c + t * I) n := by
        rw [line_integral_swap_gen hk hkc a c ha]
    _ = ∑' n : ℕ, (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, paperFT (tilt k (c - 1/2)) t
          * LSeries.term a (c + t * I) n := by
        rw [← tsum_mul_left]
    _ = ∑' n : ℕ, a n / ((Real.sqrt n : ℝ) : ℂ) * k (Real.log n) :=
        tsum_congr fun n => per_n_line_integral_gen hk hkc a c n

/-- the mirrored weight: (1/2π)∫ H(1−c−it)·L(a,c+it) dt = Σ_N a_N N^{−1/2} k(−log N). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletLine/Variant3a0d69685780b088dc19e5856a993632d53fa1abf4051028485d4ebcd511275f.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623d2728545fdcf928c20af733ee17858b74c2d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# sum_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7603cceb-74d9-f4f6-1c84-84c5e3a5641c",
  "kind": "theorem",
  "lexical_name": "sum_exp",
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
  "slug": "sum-exp--6ff256f59ab63b2b6f07dfea",
  "source": {
    "blob": "f869b880aa9d5c6e2858410bad54b3e07bc8ad22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 56,
    "path": "GRWTSK/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff256f59ab63b2b6f07dfead831d6fe302c406bcd385abcfebe5da7eb002ed1",
  "verification": {
    "reference": "docs/verification/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7603cceb-74d9-f4f6-1c84-84c5e3a5641c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem sum_exp {n : ℕ} {k : ℤ} (hn : n ≠ 0) (hk : ¬ (2 * n : ℤ) ∣ k) :
    ∑ i ∈ range n, exp ((k * ((2 * i + 1) / (2 * n) * π)) * I) =
      (exp (k / (2 * n) * π * I) / (exp (k / n * π * I) - 1)) * ((-1) ^ k - 1) := by
  suffices (∑ i ∈ range n, exp ((k * ((2 * i + 1) / (2 * n) * π)) * I)) *
    exp (-(k / (2 * n) * π * I)) * (exp (k / n * π * I) - 1) = (-1) ^ k - 1 by
    rw [Complex.exp_neg] at this
    have hf {s a b t : ℂ} (h : s * a⁻¹ * b = t) (ha : a ≠ 0) (hb : b ≠ 0) : s = a / b * t := by
      linear_combination (norm := field) h * a / b
    apply hf this (Complex.exp_ne_zero _) (by grind [exp_sub_one_ne_zero])
  convert! geom_sum_mul (exp (k / n * π * I)) n using 1
  · simp_rw [sum_mul]
    congr! 1 with i hi
    rw [← Complex.exp_nat_mul, ← Complex.exp_add]
    grind
  · rw [← Complex.exp_nat_mul,
      show (n * (k / n * π * I)) = k * (π * I) by field [show (n : ℂ) ≠ 0 by aesop],
      Complex.exp_int_mul, Complex.exp_pi_mul_I]

/-- Weighted sum of `P (x)` where `x` goes over `cos ((2 * i + 1) / (2 * n) * π)` for
  `0 ≤ i < n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ChebyshevGauss/Variant798ee354b99bd13b0de321ddf111df7a2505ad7b76ef48e23e84eb65a58ffdd4.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f869b880aa9d5c6e2858410bad54b3e07bc8ad22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

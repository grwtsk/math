# sum_vonMangoldt_sq_div_eq_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a20d3ac-eb11-9e40-d66a-23529319a6dc",
  "kind": "theorem",
  "lexical_name": "sum_vonMangoldt_sq_div_eq_explicit",
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
  "slug": "sum-vonmangoldt-sq-div-eq-explicit--109285f23b63e2610a8a057a",
  "source": {
    "blob": "8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1046,
    "line": 1006,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:109285f23b63e2610a8a057a048c469cff423fd5325f9f59eb9173cb3f42f60f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a20d3ac-eb11-9e40-d66a-23529319a6dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1006–1046.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_vonMangoldt_sq_div_eq_explicit : ∀ x : ℝ, 2 ≤ x →
    |(∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n) - Real.log x ^ 2 / 2|
      ≤ (2 * (Real.log 4 + 4) + 1537 / Real.log 2) * Real.log x := by
  set CD : ℝ := 1537 with hCDdef
  have hCD : ∀ y : ℝ, ∑ n ∈ Ioc 0 ⌊y⌋₊, Λ n * (Real.log n - Λ n) / n ≤ CD := by
    intro y
    rw [hCDdef]
    exact defect_bounded_explicit y
  have hCD0 : (0:ℝ) < CD := by rw [hCDdef]; norm_num
  have hlog2pos : (0 : ℝ) < Real.log 2 := Real.log_pos one_lt_two
  intro x hx
  show _ ≤ (2 * (Real.log 4 + 4) + CD / Real.log 2) * Real.log x
  have hx1 : (1 : ℝ) ≤ x := by linarith
  have h1 := abs_le.mp (sum_log_mul_vonMangoldt_div_bound hx1)
  have hdiff : (∑ n ∈ Ioc 0 ⌊x⌋₊, Real.log n * (Λ n / n))
        - ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n ^ 2 / n
      = ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n * (Real.log n - Λ n) / n := by
    rw [← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun n _ => by ring
  have hD0 : 0 ≤ ∑ n ∈ Ioc 0 ⌊x⌋₊, Λ n * (Real.log n - Λ n) / n :=
    Finset.sum_nonneg fun n _ =>
      div_nonneg (mul_nonneg vonMangoldt_nonneg (sub_nonneg.mpr vonMangoldt_le_log))
        (Nat.cast_nonneg n)
  have hDle := hCD x
  have hlog2 : Real.log 2 ≤ Real.log x := Real.log_le_log two_pos hx
  have hCDlog : CD ≤ CD / Real.log 2 * Real.log x := by
    have hkey : CD / Real.log 2 * Real.log 2 = CD := div_mul_cancel₀ CD hlog2pos.ne'
    calc CD = CD / Real.log 2 * Real.log 2 := hkey.symm
      _ ≤ CD / Real.log 2 * Real.log x :=
          mul_le_mul_of_nonneg_left hlog2 (by positivity)
  have hnn : (0 : ℝ) ≤ CD / Real.log 2 * Real.log x :=
    mul_nonneg (by positivity) (Real.log_nonneg hx1)
  rw [abs_le]
  constructor
  · nlinarith [h1.1, h1.2, hdiff, hD0, hDle, hCDlog, hnn]
  · nlinarith [h1.1, h1.2, hdiff, hD0, hDle, hCDlog, hnn]

/-- [eq:cheb2].1: Σ_{n≤x} Λ(n)²/n = (log x)²/2 + O(log x).
Paper [lem:cheb]: "Σ_{n≤x} Λ(n)²/n = Σ_{n≤x} Λ(n) log n/n + O(1) ..., and partial
summation from Mertens' formula gives Σ_{n≤x} Λ(n) log n/n = ½log²x + O(log x)."
(From the explicit-constant version.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variantc80386abec77eaae9737c861e090a33eeb9cf80b8b7a0d371e257676007743e7.lean#L1006).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d0d154c5fb6a7cec2352a0772b4b1a09c38ce3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

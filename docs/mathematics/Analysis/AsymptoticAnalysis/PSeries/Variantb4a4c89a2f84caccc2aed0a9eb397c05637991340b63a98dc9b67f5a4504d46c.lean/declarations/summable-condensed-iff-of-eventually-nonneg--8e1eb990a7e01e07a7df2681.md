# summable_condensed_iff_of_eventually_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51f6deae-4f4e-7cc6-7965-7838b46a4918",
  "kind": "theorem",
  "lexical_name": "summable_condensed_iff_of_eventually_nonneg",
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
  "slug": "summable-condensed-iff-of-eventually-nonneg--8e1eb990a7e01e07a7df2681",
  "source": {
    "blob": "7b8568d7fc2dfd30d472f83eb0d0892d3194d53e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 253,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e1eb990a7e01e07a7df2681d6bc000ecc43d7259b040a56b0a8c7d2babcdf2c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51f6deae-4f4e-7cc6-7965-7838b46a4918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_condensed_iff_of_eventually_nonneg {f : ℕ → ℝ} (h_nonneg : 0 ≤ᶠ[Filter.atTop] f)
    (h_mono : ∀ᶠ k in Filter.atTop, f (k + 1) ≤ f k) :
    (Summable fun k : ℕ => (2 : ℝ) ^ k * f (2 ^ k)) ↔ Summable f := by
  rw [Filter.EventuallyLE, Filter.eventually_atTop] at h_nonneg
  rw [Filter.eventually_atTop] at h_mono
  rcases h_nonneg with ⟨n, hn⟩
  rcases h_mono with ⟨m, hm⟩
  convert! summable_condensed_iff_of_nonneg (f := fun k ↦ f (max k (n + m))) _ _ using 1
  · rw [summable_congr_atTop]
    have h_pow := tendsto_pow_atTop_atTop_of_one_lt (r := 2) (by simp)
    filter_upwards [h_pow.eventually_ge_atTop (n + m)] with _ hk using by simp [max_eq_left hk]
  · rw [summable_congr_atTop]
    filter_upwards [Filter.eventually_ge_atTop (n + m)] with _ hk using by simp [max_eq_left hk]
  · simp_all
  · intro _ _ _ _
    exact antitoneOn_nat_Ici_of_succ_le (k := n + m) (by grind) (by simp) (by simp) (by grind)

section p_series

/-!
### Convergence of the `p`-series

In this section we prove that for a real number `p`, the series `∑' n : ℕ, 1 / (n ^ p)` converges if
and only if `1 < p`. There are many different proofs of this fact. The proof in this file uses the
Cauchy condensation test we formalized above. This test implies that `∑ n, 1 / (n ^ p)` converges if
and only if `∑ n, 2 ^ n / ((2 ^ n) ^ p)` converges, and the latter series is a geometric series with
common ratio `2 ^ {1 - p}`. -/

namespace Real

open Filter

/-- Test for convergence of the `p`-series: the real-valued series `∑' n : ℕ, (n ^ p)⁻¹` converges
if and only if `1 < p`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PSeries/Variantb4a4c89a2f84caccc2aed0a9eb397c05637991340b63a98dc9b67f5a4504d46c.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b8568d7fc2dfd30d472f83eb0d0892d3194d53e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

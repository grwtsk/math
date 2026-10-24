# half_residual_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0eb49be-8c22-f764-4d8e-273b1eef4984",
  "kind": "theorem",
  "lexical_name": "half_residual_bounds",
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
  "slug": "half-residual-bounds--d22548c2d57a9d1d5f61cd2d",
  "source": {
    "blob": "cd08a978a9614549cd68619711832e5d1e1bdeae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 35,
    "path": "GRWTSK/Analysis/ErrorBounds/AtanhLogEnclosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d22548c2d57a9d1d5f61cd2dbe34ad640e45be82434856eaa5b3448f8b04ce99",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/AtanhLogEnclosure.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0eb49be-8c22-f764-4d8e-273b1eef4984`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_residual_bounds {y : ℝ} (hy : 0 ≤ y) (hy1 : y < 1) (n : ℕ) :
    0 ≤ 1 / 2 * Real.log ((1 + y) / (1 - y)) -
        ∑ i ∈ range n, y ^ (2 * i + 1) / (2 * i + 1) ∧
    1 / 2 * Real.log ((1 + y) / (1 - y)) -
        ∑ i ∈ range n, y ^ (2 * i + 1) / (2 * i + 1) ≤
      y ^ (2 * n + 1) / (2 * n + 1) / (1 - y ^ 2) := by
  let F (x : ℝ) := 1 / 2 * Real.log ((1 + x) / (1 - x)) -
    ∑ i ∈ range n, x ^ (2 * i + 1) / (2 * i + 1)
  let P (x : ℝ) := x ^ (2 * n + 1) / (2 * n + 1) / (1 - y ^ 2)
  let G (x : ℝ) := P x - F x
  have hden : 0 < 1 - y ^ 2 := by nlinarith
  have hn : (2 * (n : ℝ) + 1) ≠ 0 := by positivity
  have hderiv : ∀ x ∈ Icc 0 y,
      HasDerivAt G (x ^ (2 * n) / (1 - y ^ 2) -
        (x ^ 2) ^ n / (1 - x ^ 2)) x := by
    intro x hx
    have hx1 : x < 1 := hx.2.trans_lt hy1
    have hxneg : -1 < x := by linarith [hx.1]
    have hp : HasDerivAt P (x ^ (2 * n) / (1 - y ^ 2)) x := by
      have hh := ((hasDerivAt_pow (2 * n + 1) x).div_const
        (2 * (n : ℝ) + 1)).div_const (1 - y ^ 2)
      simpa only [P, Nat.add_sub_cancel, Nat.cast_add, Nat.cast_mul, Nat.cast_ofNat,
        Nat.cast_one, mul_div_cancel_left₀ _ hn] using hh
    exact hp.sub (Real.hasDerivAt_half_log_one_add_div_one_sub_sub_sum_range n hxneg hx1)
  have hmono : MonotoneOn G (Icc 0 y) := by
    apply monotoneOn_of_hasDerivWithinAt_nonneg (convex_Icc 0 y)
      (fun x hx => (hderiv x hx).continuousAt.continuousWithinAt)
      (fun x hx => (hderiv x (interior_subset hx)).hasDerivWithinAt)
    intro x hx
    have hx' : x ∈ Icc 0 y := interior_subset hx
    have hxden : 0 < 1 - x ^ 2 := by nlinarith [hx'.1, hx'.2]
    have hd : 1 - y ^ 2 ≤ 1 - x ^ 2 := by nlinarith [hx'.1, hx'.2]
    rw [← pow_mul]
    apply sub_nonneg.mpr
    apply (div_le_div_iff₀ hxden hden).mpr
    exact mul_le_mul_of_nonneg_left hd (pow_nonneg hx'.1 _)
  have hcomp := hmono (show (0 : ℝ) ∈ Icc 0 y from ⟨le_rfl, hy⟩)
    (show y ∈ Icc 0 y from ⟨hy, le_rfl⟩) hy
  have hzero : G 0 = 0 := by simp [G, P, F]
  rw [hzero] at hcomp
  exact ⟨sub_nonneg.mpr (Real.sum_range_le_log_div hy hy1 n), by
    dsimp [G, P, F] at hcomp
    linarith⟩

/-- A one-sided error bound; the polynomial is a lower endpoint, not a midpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/AtanhLogEnclosure.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/AtanhLogEnclosure.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd08a978a9614549cd68619711832e5d1e1bdeae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# prop_3_sub_7

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c7ba38f-97ba-b165-f680-bf5dcd9cc2af",
  "kind": "theorem",
  "lexical_name": "prop_3_sub_7",
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
  "slug": "prop-3-sub-7--1dc6a1d4a55fe6fe8131e397",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 492,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1dc6a1d4a55fe6fe8131e397f87b6020c4d8a7544ff4366b972c3d616630079a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c7ba38f-97ba-b165-f680-bf5dcd9cc2af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 492–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prop_3_sub_7 (x₀ : ℝ) (hx₀ : x₀ ≥ 2 ^ 9) (x : ℝ)
    (hx : x ∈ Set.Ico x₀ (2 ^ (⌊(log x₀) / (log 2)⌋₊ + 1))) :
    f x ≤ f x₀ := by
  obtain ⟨hx_lo, hx_hi⟩ := hx
  have hx₀_pos : 0 < x₀ := by positivity
  have hlog2 : log 2 > 0 := log_pos one_lt_two
  set n := ⌊(log x₀) / (log 2)⌋₊
  have key : (2:ℝ)^((log x₀) / (log 2)) = x₀ := by
    rw [rpow_def_of_pos (by norm_num), mul_comm, div_mul_cancel₀ _ hlog2.ne', exp_log hx₀_pos]
  have hx₀_ge : x₀ ≥ 2^n := by
    have : (n:ℝ) ≤ log x₀ / log 2 := Nat.floor_le (div_nonneg (log_nonneg (by linarith)) hlog2.le)
    calc x₀ = 2^(log x₀ / log 2) := key.symm
      _ ≥ 2^(n:ℝ) := rpow_le_rpow_of_exponent_le one_le_two this
      _ = 2^n := rpow_natCast 2 n
  have hx₀_lt : x₀ < 2^(n+1) := by
    have : log x₀ / log 2 < n + 1 := Nat.lt_floor_add_one _
    calc x₀ = 2^(log x₀ / log 2) := key.symm
      _ < 2^((n:ℝ)+1) := rpow_lt_rpow_of_exponent_lt one_lt_two (by exact_mod_cast this)
      _ = 2^(n+1) := by rw [← rpow_natCast]; norm_cast
  have hn_ge : n ≥ 4 := by
    by_contra! hcon
    have : (2 : ℝ) ^ (n + 1) ≤ 2^9 := pow_le_pow_right₀ one_le_two <| by omega
    linarith [hx₀, hx₀_lt]
  rcases hx_lo.eq_or_lt with rfl | hlt
  · rfl
  · exact (prop_3_sub_2 n hn_ge ⟨hx₀_ge, hx₀_lt⟩ ⟨hx₀_ge.trans hx_lo, hx_hi⟩ hlt).le

@[blueprint
  "bklnw-prop-3-sub-8"
  (title := "BKLNW Proposition 3, substep 8")
  (statement := /--  $f(x) \leq \max\left(f(x_0), f(2^{\lfloor \frac{\log x_0}{\log 2} \rfloor + 1})\right)$. -/)
  (proof := /-- Combines previous sublemmas. -/)
  (latexEnv := "sublemma")
  (discussion := 638)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L492).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

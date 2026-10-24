# abs_rem_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:223bfd4f-ca85-8b52-f705-8fb7bb73e8ef",
  "kind": "theorem",
  "lexical_name": "abs_rem_le",
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
  "slug": "abs-rem-le--083c4c8c2425aef7e9e2d905",
  "source": {
    "blob": "3a09a10fcf49da99210c3489b775fc36a274b40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 189,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:083c4c8c2425aef7e9e2d905e3dae07c1af0a5efafdb1a7c9403c9dbf1f8ae04",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:223bfd4f-ca85-8b52-f705-8fb7bb73e8ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_rem_le {d : ℕ} (hd : d ≠ 0) :
    |rem (s := toBoundingSieve (self := primeInterSieve x y z hz)) d| ≤ 5 := by
  rw [rem_eq _ _ _ hx hz _ hd]
  have hpush : ↑(⌊x + y⌋₊ / d - (⌈x⌉₊ - 1) / d) =
      (↑(⌊x + y⌋₊ / d) - ↑((⌈x⌉₊ - 1) / d) : ℝ) := by
    rw [Nat.cast_sub]
    gcongr
    rw [Nat.le_floor_iff, ← add_le_add_iff_right 1]
    · rw_mod_cast [Nat.sub_add_cancel (by simp [hx])]
      linarith [Nat.ceil_le_self_add_one x (le_of_lt hx)]
    linarith
  rw [hpush]
  obtain ⟨C₁, hC₁_le, hC₁⟩ := floor_div_approx (x + y) (by linarith) d
  obtain ⟨C₂, hC₂_le, hC₂⟩ := nat_div_approx (Nat.ceil x - 1) d
  obtain ⟨C₃, hC₃_le, hC₃⟩ := ceil_approx (x) (by linarith)
  rw [hC₁, hC₂, Nat.cast_sub, hC₃]
  · ring_nf
    rw [(by ring_nf : |(↑d)⁻¹ - (↑d)⁻¹ * C₃ + C₁ - C₂| = |(↑d)⁻¹ - (↑d)⁻¹ * C₃ + (C₁ - C₂)|)]
    have : |(↑d)⁻¹ - (↑d)⁻¹ * C₃ + (C₁ - C₂)| ≤
        |(↑d)⁻¹ - (↑d)⁻¹ * C₃| + |C₁ - C₂| := abs_add_le _ _
    have : |(↑d)⁻¹ - (↑d)⁻¹ * C₃| ≤
        |(↑d)⁻¹| + |(↑d)⁻¹ * C₃| := abs_sub _ _
    have : |C₁ - C₂| ≤ |C₁| + |C₂| := abs_sub _ _
    have : |(d:ℝ)⁻¹| ≤ 1 := by
      rw [abs_inv, Nat.abs_cast]
      exact Nat.cast_inv_le_one _
    have : |(↑d)⁻¹ * C₃| ≤ |C₃| := by
      rw [inv_mul_eq_div, abs_div]
      refine div_le_self (abs_nonneg _) ?_
      rw [Nat.abs_cast, Nat.one_le_cast]
      omega
    linarith
  · simp [hx]

end Remainder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/BrunTitchmarsh/Variant76c45aaaf3ae7348466cc7d64d40bdf2a6f670da5fb219f3530d552c12fef9db.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a09a10fcf49da99210c3489b775fc36a274b40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

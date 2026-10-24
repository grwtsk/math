# psi_sub_theta_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:426e3f37-4133-9a90-8ec0-f5fa5ddb8033",
  "kind": "theorem",
  "lexical_name": "psi_sub_theta_bounds",
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
  "slug": "psi-sub-theta-bounds--9109d5d9a06e9e3eff2b48ef",
  "source": {
    "blob": "6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 591,
    "line": 564,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9109d5d9a06e9e3eff2b48ef6d31dee291e3c704eeb429c819ea8dbb8e5005eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:426e3f37-4133-9a90-8ec0-f5fa5ddb8033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–591.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem psi_sub_theta_bounds {x : ℝ} (hx : 0 ≤ x) :
    ψ x - θ x ≤ ψ (x ^ (2 : ℝ)⁻¹) + ψ (x ^ (3 : ℝ)⁻¹) + ψ (x ^ (5 : ℝ)⁻¹) ∧
    ψ (x ^ (2 : ℝ)⁻¹) + ψ (x ^ (3 : ℝ)⁻¹) + ψ (x ^ (7 : ℝ)⁻¹) ≤ ψ x - θ x := by
  obtain ⟨N₁, h1⟩ := psi_pow_eq_sum_b x 1 hx
  obtain ⟨N₂, h2⟩ := psi_pow_eq_sum_b x 2 hx
  obtain ⟨N₃, h3⟩ := psi_pow_eq_sum_b x 3 hx
  obtain ⟨N₅, h5⟩ := psi_pow_eq_sum_b x 5 hx
  obtain ⟨N₇, h7⟩ := psi_pow_eq_sum_b x 7 hx
  let N := N₁ + N₂ + N₃ + N₅ + N₇
  specialize h1 (1 + 6 * N) (by lia)
  specialize h2 (3 * N) (by lia)
  specialize h3 (2 * N) (by lia)
  specialize h5 N (by lia)
  specialize h7 N (by lia)
  have : ∑ n ∈ Icc 1 N, c x n ≤ ∑ n ∈ Icc 1 N, b x (5 * n) := by
    apply sum_le_sum
    intro n hn
    unfold c
    linarith [(b_antitone x hx (by grind) (by grind) (by lia) : b x (6 * n + 1) ≤ b x (6 * n)),
      (b_antitone x hx (by grind) (by grind) (by lia) : b x (6 * n - 1) ≤ b x (5 * n))]
  have : ∑ n ∈ Icc 1 N, b x (7 * n) ≤ ∑ n ∈ Icc 1 N, c x n := by
    apply sum_le_sum; intro n hn; simp only [mem_Icc, c] at hn ⊢
    linarith [(b_antitone x hx (by grind) (by grind) (by lia) : b x (6 * n) ≤ b x (6 * n - 1)),
      (b_antitone x hx (by grind) (by grind) (by lia) : b x (7 * n) ≤ b x (6 * n + 1))]
  have : b x 1 = θ x := by simp [b]
  simp only [cast_one, one_mul, sum_b_eq_b_add_sum_add_sum_add_sum, inv_one, rpow_one] at h1
  grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant7455975ea7e07320b71a4fecb585e93623b33ac54fbc7e84873875b4459a0d39.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b4f47107dc0a1502ebe46e87d82b1eadd29dbcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

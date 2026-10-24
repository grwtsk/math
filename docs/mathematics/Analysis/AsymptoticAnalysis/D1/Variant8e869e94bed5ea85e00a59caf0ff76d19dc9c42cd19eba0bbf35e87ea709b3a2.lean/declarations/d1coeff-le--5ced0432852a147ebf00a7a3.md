# D1coeff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12ea51a3-bc02-bbe2-8806-894e7aa6cb2a",
  "kind": "theorem",
  "lexical_name": "D1coeff_le",
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
  "slug": "d1coeff-le--5ced0432852a147ebf00a7a3",
  "source": {
    "blob": "036f84b7cb8355e2f941db818033eff3ba55d236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 110,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ced0432852a147ebf00a7a3e12342d64814e2e04d5a01f91687656c482dc767",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12ea51a3-bc02-bbe2-8806-894e7aa6cb2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem D1coeff_le (k : ℕ) : D1coeff k ≤ 2 * 4 ^ (k + 1) / (Nat.factorial (k + 1) : ℝ) := by
  unfold D1coeff
  have hdvd : Nat.factorial k * Nat.factorial (k + 2) ∣ Nat.factorial (2 * k + 2) := by
    have := Nat.factorial_mul_factorial_dvd_factorial_add k (k + 2)
    have e : k + (k + 2) = 2 * k + 2 := by ring
    rwa [e] at this
  have hle : (Nat.factorial k : ℝ) * Nat.factorial (k + 1) ≤ Nat.factorial (2 * k + 2) := by
    have h1 : Nat.factorial k * Nat.factorial (k + 1) ≤ Nat.factorial k * Nat.factorial (k + 2) :=
      Nat.mul_le_mul_left _ (Nat.factorial_le (by omega))
    have h2 : Nat.factorial k * Nat.factorial (k + 2) ≤ Nat.factorial (2 * k + 2) :=
      Nat.le_of_dvd (Nat.factorial_pos _) hdvd
    exact_mod_cast h1.trans h2
  have hA : (0 : ℝ) < Nat.factorial (2 * k + 2) := by positivity
  have hB : (0 : ℝ) < Nat.factorial (k + 1) := by positivity
  rw [div_le_div_iff₀ hA hB]
  have h4 : (0 : ℝ) ≤ 2 * 4 ^ (k + 1) := by positivity
  calc 2 * 4 ^ (k + 1) * (Nat.factorial k : ℝ) * Nat.factorial (k + 1)
      = 2 * 4 ^ (k + 1) * ((Nat.factorial k : ℝ) * Nat.factorial (k + 1)) := by ring
    _ ≤ 2 * 4 ^ (k + 1) * (Nat.factorial (2 * k + 2) : ℝ) := mul_le_mul_of_nonneg_left hle h4

/-! ### summability and continuity of the series -/

/-- the general term of the D₁ series. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f84b7cb8355e2f941db818033eff3ba55d236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

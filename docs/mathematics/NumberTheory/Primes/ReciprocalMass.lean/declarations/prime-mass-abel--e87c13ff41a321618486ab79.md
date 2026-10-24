# prime_mass_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a924070f-d628-d289-4c62-1399bde3f043",
  "kind": "theorem",
  "lexical_name": "prime_mass_abel",
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
  "slug": "prime-mass-abel--e87c13ff41a321618486ab79",
  "source": {
    "blob": "4f20f7dc568798f47a70048e03ffdd4723f2b550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 46,
    "path": "GRWTSK/NumberTheory/Prime/ReciprocalMass.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e87c13ff41a321618486ab7958abba460735e2e50b74b6ca06e0df0716f5ba91",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/ReciprocalMass.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a924070f-d628-d289-4c62-1399bde3f043`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem prime_mass_abel {x : ℝ} (hx : 2 ≤ x) :
    (∑ p ∈ (Finset.Icc 0 ⌊x⌋₊).filter Nat.Prime, (p : ℝ)⁻¹) =
      massWeight x * Chebyshev.theta x -
        ∫ t in (2 : ℝ)..x, deriv massWeight t * Chebyshev.theta t := by
  let c : ℕ → ℝ := fun n ↦ if n.Prime then log n else 0
  have hid (t : ℝ) : (∑ n ∈ Finset.Icc 0 ⌊t⌋₊, c n) = Chebyshev.theta t := by
    simp [c, Chebyshev.theta_eq_sum_Icc, Finset.sum_filter]
  have hw : ∀ t ∈ Icc 2 x, DifferentiableAt ℝ massWeight t :=
    fun t ht ↦ (massWeight_deriv (by linarith [ht.1])).differentiableAt
  have hd : IntegrableOn (deriv massWeight) (Icc 2 x) := by
    apply ContinuousOn.integrableOn_Icc
    apply ContinuousOn.congr (f := fun t : ℝ ↦ -(log t + 1) / (t * log t)^2)
    · intro t ht
      have ht0 : t ≠ 0 := by linarith [ht.1]
      have hlt : log t ≠ 0 := (log_pos (by linarith [ht.1])).ne'
      exact ContinuousAt.continuousWithinAt (by fun_prop (disch := aesop))
    · intro t ht
      exact (massWeight_deriv (x := t) (by linarith [ht.1])).deriv
  have hab := sum_mul_eq_sub_integral_mul₁ c (by simp [c]) (by simp [c]) x hw hd
  rw [hid, ← intervalIntegral.integral_of_le hx] at hab
  simp_rw [hid] at hab
  rw [← hab, Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n _
  by_cases hn : n.Prime
  · have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne_zero
    have hl0 : log (n : ℝ) ≠ 0 := (log_pos (by exact_mod_cast hn.one_lt)).ne'
    simp only [c, if_pos hn, massWeight]
    field_simp
  · simp [c, hn]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/ReciprocalMass.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Prime/ReciprocalMass.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f20f7dc568798f47a70048e03ffdd4723f2b550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

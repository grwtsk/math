# paired_three_prime_atom_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe77b66c-b06a-8d9e-bd1a-e0e6119b45ab",
  "kind": "theorem",
  "lexical_name": "paired_three_prime_atom_lower",
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
  "slug": "paired-three-prime-atom-lower--52d04d5555cdff4df9f052cd",
  "source": {
    "blob": "ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 357,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52d04d5555cdff4df9f052cd6e29a5345a8c034833e65c60c58030e2c28c2f74",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe77b66c-b06a-8d9e-bd1a-e0e6119b45ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_three_prime_atom_lower (T : ℝ) (m p : ℕ) (hT : 20 ≤ T)
    (hp : p.Prime) (hp3 : p ≠ 3) (hpodd : Odd p)
    (hmlo : Real.exp (T - 1 / 4) ≤ (m : ℝ)) (hmhi : (m : ℝ) ≤ Real.exp (T - 1 / 8))
    (hqlo : Real.exp (T - 1 / 4) ≤ ((3 * p : ℕ) : ℝ))
    (hqhi : ((3 * p : ℕ) : ℝ) ≤ Real.exp (T - 1 / 8)) :
    Odd (3 * p) ∧
    ArithmeticFunction.vonMangoldt m *
      (T ^ 8 / (23592960 * Real.sqrt ((m * (3 * p) : ℕ) : ℝ))) ≤
      ArithmeticFunction.vonMangoldt m * (ArithmeticFunction.moebius (3 * p) : ℝ) *
        (integratedKernel T m (3 * p) - integratedKernel T m (2 * (3 * p))) := by
  refine ⟨(by decide : Odd (3 : ℕ)).mul hpodd, ?_⟩
  have hmu : ArithmeticFunction.moebius (3 * p) = 1 := by
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      ((Nat.coprime_primes Nat.prime_three hp).2 (Ne.symm hp3)),
      ArithmeticFunction.moebius_apply_prime Nat.prime_three,
      ArithmeticFunction.moebius_apply_prime hp]
    norm_num
  rw [hmu, Int.cast_one, mul_one]
  exact mul_le_mul_of_nonneg_left (paired_interval_lower T m (3 * p) hT hmlo hmhi hqlo hqhi)
    (ArithmeticFunction.vonMangoldt_nonneg (n := m))

end
end EstimatePairedStrip
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant5e0097041dc138df8eebef9f0ee8c29cd7332511787d6e6f08acf4b369eb5b3d.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee02b2e977f5d2f8bf0171b18fd60a0b929ea73a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

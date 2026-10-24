# paired_three_prime_atom_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c36c9e6f-4688-762e-6b15-18c4547c1624",
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
  "slug": "paired-three-prime-atom-lower--a46c477ca99e8801d15dc75f",
  "source": {
    "blob": "ce26f376a53cac584bc777addb5fd986765d3061",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 362,
    "line": 339,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a46c477ca99e8801d15dc75f16ef1f77544bc3a9cb706f16f42be737e6d522e8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c36c9e6f-4688-762e-6b15-18c4547c1624`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–362.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem paired_three_prime_atom_lower (T : ℝ) (m p : ℕ) (hT : 20 ≤ T)
    (hp : p.Prime) (hp3 : p ≠ 3) (hpodd : Odd p)
    (hmlo : Real.exp (T-1/4) ≤ (m:ℝ)) (hmhi : (m:ℝ) ≤ Real.exp (T-1/8))
    (hqlo : Real.exp (T-1/4) ≤ ((3*p : ℕ) : ℝ))
    (hqhi : ((3*p : ℕ) : ℝ) ≤ Real.exp (T-1/8)) :
    Odd (3*p) ∧
    ArithmeticFunction.vonMangoldt m *
      (T^8/(23592960 * Real.sqrt ((m*(3*p) : ℕ) : ℝ))) ≤
      ArithmeticFunction.vonMangoldt m * (ArithmeticFunction.moebius (3*p) : ℝ) *
        (integratedKernel T m (3*p) - integratedKernel T m (2*(3*p))) := by
  refine ⟨(by decide : Odd (3:ℕ)).mul hpodd, ?_⟩
  have hmu : ArithmeticFunction.moebius (3*p) = 1 := by
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      ((Nat.coprime_primes Nat.prime_three hp).2 (Ne.symm hp3)),
      ArithmeticFunction.moebius_apply_prime Nat.prime_three,
      ArithmeticFunction.moebius_apply_prime hp]
    norm_num
  rw [hmu, Int.cast_one, mul_one]
  exact mul_le_mul_of_nonneg_left (paired_interval_lower T m (3*p) hT hmlo hmhi hqlo hqhi)
    (ArithmeticFunction.vonMangoldt_nonneg (n := m))

end
end EstimatePairedStrip
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/47d964da70290a8be463575151cd74209ede571dd3bb3c5fbd3e2a3572f94e26MobiusStrip/Variant3e05a68b523ec68e3dd71c47502b75a5526c0d3f65a6604f6d35a682f2d55042.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce26f376a53cac584bc777addb5fd986765d3061` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

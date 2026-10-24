# IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:84c5b4fd-e0d9-26ed-59f1-4e8557e050d5",
  "kind": "theorem",
  "lexical_name": "IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime",
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
  "slug": "islocalization-overprime-mem-normalizedfactors-of-isprime--6c4a619f0640339aa628612b",
  "source": {
    "blob": "fff911466722f4890a4079e480f5388df6735adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 211,
    "path": "GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c4a619f0640339aa628612b194bafa90e99701d8b6bfa55f23063a93563e742",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84c5b4fd-e0d9-26ed-59f1-4e8557e050d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime [IsDomain S]
    {P : Ideal Sₚ} (hP : IsPrime P) (hP0 : P ≠ ⊥) :
    P ∈ normalizedFactors (Ideal.map (algebraMap R Sₚ) p) := by
  have non_zero_div : Algebra.algebraMapSubmonoid S p.primeCompl ≤ S⁰ :=
    map_le_nonZeroDivisors_of_injective _ (FaithfulSMul.algebraMap_injective _ _)
      p.primeCompl_le_nonZeroDivisors
  letI : Algebra (Localization.AtPrime p) Sₚ := localizationAlgebra p.primeCompl S
  haveI : IsScalarTower R (Localization.AtPrime p) Sₚ :=
    IsScalarTower.of_algebraMap_eq fun x => by
      rw [IsScalarTower.algebraMap_apply R S]
      exact (IsLocalization.map_eq (T := Algebra.algebraMapSubmonoid S (primeCompl p))
        (Submonoid.le_comap_map _) x).symm
  obtain ⟨pid, p', ⟨hp'0, hp'p⟩, hpu⟩ :=
    (IsDiscreteValuationRing.iff_pid_with_one_nonzero_prime (Localization.AtPrime p)).mp
      (IsLocalization.AtPrime.isDiscreteValuationRing_of_dedekind_domain R hp0 _)
  have : IsLocalRing.maximalIdeal (Localization.AtPrime p) ≠ ⊥ := by
    rw [Submodule.ne_bot_iff] at hp0 ⊢
    obtain ⟨x, x_mem, x_ne⟩ := hp0
    exact
      ⟨algebraMap _ _ x, (IsLocalization.AtPrime.to_map_mem_maximal_iff _ _ _).mpr x_mem,
        IsLocalization.to_map_ne_zero_of_mem_nonZeroDivisors _ p.primeCompl_le_nonZeroDivisors
          (mem_nonZeroDivisors_of_ne_zero x_ne)⟩
  rw [← Multiset.singleton_le, ← normalize_eq P, ←
    normalizedFactors_irreducible (Ideal.prime_of_isPrime hP0 hP).irreducible, ←
    dvd_iff_normalizedFactors_le_normalizedFactors hP0, dvd_iff_le,
    IsScalarTower.algebraMap_eq R (Localization.AtPrime p) Sₚ, ← Ideal.map_map,
    Localization.AtPrime.map_eq_maximalIdeal, Ideal.map_le_iff_le_comap,
    hpu (IsLocalRing.maximalIdeal _) ⟨this, _⟩, hpu (comap _ _) ⟨_, _⟩]
  · have : Algebra.IsIntegral (Localization.AtPrime p) Sₚ := ⟨isIntegral_localization⟩
    exact mt (Ideal.eq_bot_of_comap_eq_bot ) hP0
  · exact Ideal.comap_isPrime (algebraMap (Localization.AtPrime p) Sₚ) P
  · exact (IsLocalRing.maximalIdeal.isMaximal _).isPrime
  · rw [Ne, zero_eq_bot, Ideal.map_eq_bot_iff_of_injective]
    · assumption
    rw [IsScalarTower.algebraMap_eq R S Sₚ]
    exact
      (IsLocalization.injective Sₚ non_zero_div).comp (FaithfulSMul.algebraMap_injective _ _)

/-- Let `p` be a prime in the Dedekind domain `R` and `S` be an integral extension of `R`,
then the localization `Sₚ` of `S` at `p` is a PID. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant6ea7b125cb7e8ed91b6a96d2329604355159ada0f1ae9c6a4b159c8c8a203b6c.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff911466722f4890a4079e480f5388df6735adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

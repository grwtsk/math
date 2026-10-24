# IsLocalization.OverPrime.mem_normalizedFactors_of_isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:99e2dcdd-0742-fc42-1009-0d509a3176cf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:546f72e8-60d5-b81c-28a5-ef8fb69004f0",
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
  "slug": "islocalization-overprime-mem-normalizedfactors-of-isprime--c91c6fa8ee4d22fef0da5a6c",
  "source": {
    "blob": "44f700c6a30abaa3f68b461753f86cd8a17cda18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 203,
    "path": "GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c91c6fa8ee4d22fef0da5a6ca239220f7f42e3d3d1fd6c87c6020b96bd2bcd20",
  "verification": {
    "reference": "docs/verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:546f72e8-60d5-b81c-28a5-ef8fb69004f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–242.

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

[Verification target and public status](../../../../../verification/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PID/Variant14c6c22672f5742af907df1b430c8c8f3101a98cacd5a357f9e3675956c152f5.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f700c6a30abaa3f68b461753f86cd8a17cda18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

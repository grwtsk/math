# exists_ideal_over_prime_of_isIntegral'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d0b445ca3c355c6af50c4f8ef90c96ddca6211d5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8952348d-1b37-1ac3-18f5-2fb9beba4a53",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:976ee6f3-915f-e6a6-804c-b2b1a0ffcdac",
  "kind": "theorem",
  "lexical_name": "exists_ideal_over_prime_of_isIntegral'",
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
  "slug": "exists-ideal-over-prime-of-isintegral--1f638196c0a9098895bc49e6",
  "source": {
    "blob": "d0b445ca3c355c6af50c4f8ef90c96ddca6211d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 363,
    "path": "GRWTSK/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f638196c0a9098895bc49e65e55f523429d48fa8a52184b7466c7ea264e684a",
  "verification": {
    "reference": "docs/verification/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:976ee6f3-915f-e6a6-804c-b2b1a0ffcdac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_ideal_over_prime_of_isIntegral' (H : Algebra.IsIntegral R S) (P : Ideal R)
    [IsPrime P] (hP : RingHom.ker (algebraMap R S) ≤ P) :
    ∃ Q : Ideal S, IsPrime Q ∧ Q.comap (algebraMap R S) = P := by
  have hP0 : (0 : S) ∉ Algebra.algebraMapSubmonoid S P.primeCompl := by
    rintro ⟨x, ⟨hx, x0⟩⟩
    exact absurd (hP x0) hx
  let Rₚ := Localization P.primeCompl
  let Sₚ := Localization (Algebra.algebraMapSubmonoid S P.primeCompl)
  letI : IsDomain (Localization (Algebra.algebraMapSubmonoid S P.primeCompl)) :=
    IsLocalization.isDomain_localization (le_nonZeroDivisors_of_noZeroDivisors hP0)
  obtain ⟨Qₚ : Ideal Sₚ, Qₚ_maximal⟩ := exists_maximal Sₚ
  haveI Qₚ_max : IsMaximal (comap _ Qₚ) :=
    @isMaximal_comap_of_isIntegral_of_isMaximal Rₚ _ Sₚ _ (localizationAlgebra P.primeCompl S)
      (isIntegral_localization H) _ Qₚ_maximal
  refine' ⟨comap (algebraMap S Sₚ) Qₚ, ⟨comap_isPrime _ Qₚ, _⟩⟩
  convert Localization.AtPrime.comap_maximalIdeal (I := P)
  rw [comap_comap, ← LocalRing.eq_maximalIdeal Qₚ_max,
    ←@IsLocalization.map_comp (P := S) (Q := Sₚ) (g := algebraMap R S)
    (M := P.primeCompl) (T := Algebra.algebraMapSubmonoid S P.primeCompl) (S := Rₚ) _
    _ _ _ _ _ (fun p hp => Algebra.mem_algebraMapSubmonoid_of_mem ⟨p, hp⟩) _ _]
  rfl
#align ideal.exists_ideal_over_prime_of_is_integral' Ideal.exists_ideal_over_prime_of_isIntegral'

end

/-- More general going-up theorem than `exists_ideal_over_prime_of_isIntegral'`.
TODO: Version of going-up theorem with arbitrary length chains (by induction on this)?
  Not sure how best to write an ascending chain in Lean -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Over/Variante4ab4e483d5422f1edd8cbc265941f2f3665326c9dd2528aefbb25827c78cd57.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0b445ca3c355c6af50c4f8ef90c96ddca6211d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

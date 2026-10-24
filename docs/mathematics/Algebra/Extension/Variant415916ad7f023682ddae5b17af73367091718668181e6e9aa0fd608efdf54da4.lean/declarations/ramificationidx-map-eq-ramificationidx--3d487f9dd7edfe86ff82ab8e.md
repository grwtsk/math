# ramificationIdx_map_eq_ramificationIdx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc8edaa901a98c2486f528a2cdf812bf97c92ab3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/41/415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:70b4104f-4b69-9239-afa8-9a7d4e133bed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bce4c72-0fca-b85f-f47c-bf99945efb0f",
  "kind": "theorem",
  "lexical_name": "ramificationIdx_map_eq_ramificationIdx",
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
  "slug": "ramificationidx-map-eq-ramificationidx--3d487f9dd7edfe86ff82ab8e",
  "source": {
    "blob": "bc8edaa901a98c2486f528a2cdf812bf97c92ab3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 217,
    "line": 182,
    "path": "GRWTSK/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d487f9dd7edfe86ff82ab8ebb5cf267915f19bdff984231f216c57c467a57f7",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bce4c72-0fca-b85f-f47c-bf99945efb0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–217.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ramificationIdx_map_eq_ramificationIdx [P.IsPrime] :
    (P.map (algebraMap S Sₚ)).ramificationIdx Rₚ = P.ramificationIdx R := by
  have := liesOver_map_of_liesOver p Rₚ Sₚ P
  have := IsLocalization.liesOver_map_of_isPrime_disjoint (algebraMapSubmonoid S p.primeCompl) Sₚ
    (Set.disjoint_image_left.mpr (Set.disjoint_compl_left_iff_subset.mpr hPp.over.ge))
  have := isPrime_map_of_liesOver S p Sₚ P
  rw [ramificationIdx_eq (maximalIdeal Rₚ) (P.map (algebraMap S Sₚ)), ramificationIdx_eq p P]
  let R₁ := Localization.AtPrime (P.map (algebraMap S Sₚ))
  let R₂ := Localization.AtPrime P
  let : Algebra R₂ R₁ := Localization.AtPrime.algebraOfLiesOver P (P.map (algebraMap S Sₚ))
  have : IsLocalization.AtPrime R₁ P := by
    convert isLocalization_isLocalization_atPrime_isLocalization
      (algebraMapSubmonoid S p.primeCompl) R₁ (P.map (algebraMap S Sₚ))
    rw [← Ideal.under_def, ← Ideal.over_def (P.map (algebraMap S Sₚ)) P]
  have h : Function.Bijective (algebraMap R₂ R₁) :=
    (Localization.algEquiv P.primeCompl R₁).bijective
  have key : p.map (algebraMap R R₂) =
      ((maximalIdeal Rₚ).map (algebraMap Rₚ R₁)).comap (algebraMap R₂ R₁) := by
    rw [← IsLocalization.AtPrime.map_eq_maximalIdeal p, p.map_map, ← IsScalarTower.algebraMap_eq,
      IsScalarTower.algebraMap_eq R R₂ R₁, ← p.map_map, comap_map_of_bijective _ h]
  rw [Module.length_quotient, Module.length_quotient, key, coheight_comap_of_surjective _ h.2]

end IsLocalization.AtPrime

namespace IsDedekindDomain

open IsLocalization AtPrime

variable [IsDomain R] [IsDedekindDomain S] [IsTorsionFree R S] [Algebra R Sₚ] [IsScalarTower R S Sₚ]
  [IsScalarTower R Rₚ Sₚ]

/--
For `R ⊆ S` an extension of Dedekind domains and `p` a prime ideal of `R`, the bijection
between the primes of `S` over `p` and the primes over the maximal ideal of `Rₚ` in `Sₚ` where
`Rₚ` and `Sₚ` are resp. the localizations of `R` and `S` at the complement of `p`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variant415916ad7f023682ddae5b17af73367091718668181e6e9aa0fd608efdf54da4.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc8edaa901a98c2486f528a2cdf812bf97c92ab3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

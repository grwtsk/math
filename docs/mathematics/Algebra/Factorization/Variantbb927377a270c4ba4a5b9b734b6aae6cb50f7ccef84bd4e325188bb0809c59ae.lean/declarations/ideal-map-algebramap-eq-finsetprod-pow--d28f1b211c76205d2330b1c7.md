# Ideal.map_algebraMap_eq_finsetProd_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 810,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f0f320d6-9c2c-127d-9b25-314ee517c9a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d47565e-7f55-64fa-5154-e0bdfbe51945",
  "kind": "theorem",
  "lexical_name": "Ideal.map_algebraMap_eq_finsetProd_pow",
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
  "slug": "ideal-map-algebramap-eq-finsetprod-pow--d28f1b211c76205d2330b1c7",
  "source": {
    "blob": "88647c45574d4f4a8bd2224cdc49b47cfacbd607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 851,
    "line": 810,
    "path": "GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d28f1b211c76205d2330b1c7b1b2502acce52e9ce66f70600cd4d7e2f9187b4d",
  "verification": {
    "reference": "docs/verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d47565e-7f55-64fa-5154-e0bdfbe51945`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 810–851.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ideal.map_algebraMap_eq_finsetProd_pow {p : Ideal S} [p.IsMaximal] (hp : p ≠ 0) :
    map (algebraMap S R) p = ∏ P ∈ p.primesOver R, P ^ P.ramificationIdx S := by
  have h : map (algebraMap S R) p ≠ 0 := map_ne_bot_of_ne_bot hp
  rw [← finprod_heightOneSpectrum_factorization (I := p.map (algebraMap S R)) h]
  let hF : Fintype {v : HeightOneSpectrum R | v.asIdeal ∣ map (algebraMap S R) p} :=
    (finite_factors h).fintype
  rw [finprod_eq_finsetProd_of_mulSupport_subset
    (s := {v | v.asIdeal ∣ p.map (algebraMap S R)}.toFinset), ← Finset.prod_set_coe,
    ← Finset.prod_set_coe]
  · let _ : Fintype {v : HeightOneSpectrum R // v.asIdeal ∣ map (algebraMap S R) p} := hF
    refine Fintype.prod_equiv (equivPrimesOver _ hp) _ _ fun ⟨v, _⟩ ↦ ?_
    have : v.asIdeal.LiesOver p := by rwa [Ideal.liesOver_iff_dvd_map v.2.ne_top]
    simp [maxPowDividing_eq_pow_multiset_count _ h, ramificationIdx_eq_factors_count p v h]
  · intro v hv
    simpa [maxPowDividing, Function.mem_mulSupport, IsPrime.ne_top _,
      Associates.count_ne_zero_iff_dvd h (irreducible v)] using hv

@[deprecated (since := "2026-04-08")]
alias Ideal.map_algebraMap_eq_finset_prod_pow := Ideal.map_algebraMap_eq_finsetProd_pow

end primesOver

/-!
### Conversion between various multiplicities

We provide some lemmas that convert various ways of expressing the multiplicity of
a prime ideal `p` in the factorization of some ideal `I` into `multiplicity p.asIdeal I`.
-/

section conversion

variable {R : Type*} [CommRing R] [IsDedekindDomain R]

namespace IsDedekindDomain.HeightOneSpectrum

variable {I : Ideal R} (hI : I ≠ ⊥) (p : HeightOneSpectrum R)
include hI

open UniqueFactorizationMonoid in
/-- Normalize the multiplicity of a prime ideal `p` in the factorization of `I`
as `multiplicity p.asIdeal I`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Factorization/Variantbb927377a270c4ba4a5b9b734b6aae6cb50f7ccef84bd4e325188bb0809c59ae.lean#L810).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88647c45574d4f4a8bd2224cdc49b47cfacbd607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

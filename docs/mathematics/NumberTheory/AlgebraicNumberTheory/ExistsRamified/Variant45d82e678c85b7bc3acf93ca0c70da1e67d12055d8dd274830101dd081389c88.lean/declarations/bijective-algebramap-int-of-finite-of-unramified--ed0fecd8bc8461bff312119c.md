# bijective_algebraMap_int_of_finite_of_unramified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f290424-890b-b694-07c3-6ce8ad1b205d",
  "kind": "lemma",
  "lexical_name": "bijective_algebraMap_int_of_finite_of_unramified",
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
  "slug": "bijective-algebramap-int-of-finite-of-unramified--ed0fecd8bc8461bff312119c",
  "source": {
    "blob": "2cc50229db6237af40bff5ec0721b65148400bde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed0fecd8bc8461bff312119cf86d1c0699d03cb0ee762d0333bca1c9042382ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f290424-890b-b694-07c3-6ce8ad1b205d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma bijective_algebraMap_int_of_finite_of_unramified
    [Module.Finite ℤ 𝒪] [Algebra.Unramified ℤ 𝒪] [IsDomain 𝒪] [FaithfulSMul ℤ 𝒪] :
    Function.Bijective (algebraMap ℤ 𝒪) := by
  have := IsDedekindDomain.of_formallyUnramified ℤ 𝒪
  let K := FractionRing 𝒪
  let : Algebra ℤ K := Ring.toIntAlgebra K
  have : CharZero 𝒪 := Algebra.charZero_of_charZero ℤ _
  have : NumberField K := { to_finiteDimensional := Module.Finite.of_isLocalization ℤ 𝒪 ℤ⁰ }
  have := NumberField.finrank_eq_one_of_unramified (K := K) (𝒪 := 𝒪)
  have : IsIntegralClosure ℤ ℤ K := .of_algEquiv _ (.ofBijective (IsScalarTower.toAlgHom _ _ _)
    (Algebra.finrank_eq_one_iff_bijective_algebraMap.mp this)) (by simp)
  exact bijective_algebraMap_of_linearEquiv (IsIntegralClosure.equiv ℤ ℤ K 𝒪).toLinearEquiv

/-- If `K` is a number field with positive rank such that `K/ℚ` is galois, then there exists
some rational prime `p : ℕ` such that every prime of `K` over `p` is ramified. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant45d82e678c85b7bc3acf93ca0c70da1e67d12055d8dd274830101dd081389c88.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cc50229db6237af40bff5ec0721b65148400bde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

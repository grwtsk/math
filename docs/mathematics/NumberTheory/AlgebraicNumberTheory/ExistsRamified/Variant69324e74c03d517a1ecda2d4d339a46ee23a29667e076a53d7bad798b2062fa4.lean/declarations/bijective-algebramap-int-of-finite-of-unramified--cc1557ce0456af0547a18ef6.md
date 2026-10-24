# bijective_algebraMap_int_of_finite_of_unramified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7bd5970b1d73db608d3d18928b78aa6c7caea49b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26367709-d3f6-f80d-9bba-4bb3b31e4829",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91954db9-1435-a859-7471-680dcdb2ce0d",
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
  "slug": "bijective-algebramap-int-of-finite-of-unramified--cc1557ce0456af0547a18ef6",
  "source": {
    "blob": "7bd5970b1d73db608d3d18928b78aa6c7caea49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cc1557ce0456af0547a18ef6405b9231681e69e4b6a4516aa192d5a232d09fe4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91954db9-1435-a859-7471-680dcdb2ce0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–72.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/ExistsRamified/Variant69324e74c03d517a1ecda2d4d339a46ee23a29667e076a53d7bad798b2062fa4.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7bd5970b1d73db608d3d18928b78aa6c7caea49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

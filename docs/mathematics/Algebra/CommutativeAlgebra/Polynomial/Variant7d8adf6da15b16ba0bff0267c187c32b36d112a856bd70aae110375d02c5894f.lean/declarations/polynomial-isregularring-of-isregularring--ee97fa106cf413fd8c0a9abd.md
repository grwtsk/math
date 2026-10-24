# Polynomial.isRegularRing_of_isRegularRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4efb64d4b767070bdeaad1bba9cdac54abdc39531d09c574ed502b4150098a62",
  "kind": "instance",
  "lexical_name": "Polynomial.isRegularRing_of_isRegularRing",
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
  "slug": "polynomial-isregularring-of-isregularring--ee97fa106cf413fd8c0a9abd",
  "source": {
    "blob": "ce0e9cf25d7cf7a0a6e2f594fc3b0f9623c014f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 78,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7d8adf6da15b16ba0bff0267c187c32b36d112a856bd70aae110375d02c5894f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee97fa106cf413fd8c0a9abd14501f496cc416d37206285aec3a35a4e1a0a1ac",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant7d8adf6da15b16ba0bff0267c187c32b36d112a856bd70aae110375d02c5894f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4efb64d4b767070bdeaad1bba9cdac54abdc39531d09c574ed502b4150098a62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Polynomial.isRegularRing_of_isRegularRing [IsRegularRing R] : IsRegularRing R[X] := by
  apply isRegularRing_iff.mpr (fun p hp ↦ ?_)
  let q := p.comap C
  let S := (Localization.AtPrime q)[X]
  let pc := Submonoid.map Polynomial.C.toMonoidHom q.primeCompl
  let : Algebra R[X] S := algebra R (Localization.AtPrime q)
  have : IsLocalization pc S := Polynomial.isLocalization _ _
  let pS := p.map (algebraMap R[X] S)
  have disj : Disjoint (pc : Set R[X]) (p : Set R[X]) := by
    simpa [pc, q] using! Set.disjoint_image_left.mpr
      (Set.disjoint_compl_left_iff_subset.mpr (fun _ a ↦ a))
  have : pS.IsPrime := IsLocalization.isPrime_of_isPrime_disjoint pc _ _ ‹_› disj
  have : IsLocalization.AtPrime (Localization.AtPrime pS) p := by
    convert IsLocalization.isLocalization_isLocalization_atPrime_isLocalization pc
      (Localization.AtPrime pS) pS
    exact (IsLocalization.under_map_of_isPrime_disjoint pc _ ‹_› disj).symm
  have := isRegularRing_iff.mp ‹_› q
  have eq : comap C pS = maximalIdeal (Localization.AtPrime q) := by
    rw [← IsLocalization.map_under q.primeCompl _ (comap C pS),
      ← IsLocalization.map_under q.primeCompl _ (maximalIdeal (Localization.AtPrime q))]
    simp only [comap_comap, S, pS]
    rw [← Polynomial.algebraMap_eq (R := Localization.AtPrime q),
      ← IsScalarTower.algebraMap_eq R (Localization.AtPrime q) (Localization.AtPrime q)[X],
      IsScalarTower.algebraMap_eq R R[X] (Localization.AtPrime q)[X], ← comap_comap,
      ← Ideal.under_def R[X], IsLocalization.under_map_of_isPrime_disjoint pc _ ‹_› disj]
    simp [q, IsLocalization.AtPrime.under_maximalIdeal (Localization.AtPrime q) q]
  have := isRegularLocalRing_localization_atPrime_of_comap_eq_maximalIdeal _ pS eq
  exact IsRegularLocalRing.of_ringEquiv (IsLocalization.algEquiv p.primeCompl
    (Localization.AtPrime pS) (Localization.AtPrime p)).toRingEquiv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant7d8adf6da15b16ba0bff0267c187c32b36d112a856bd70aae110375d02c5894f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant7d8adf6da15b16ba0bff0267c187c32b36d112a856bd70aae110375d02c5894f.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce0e9cf25d7cf7a0a6e2f594fc3b0f9623c014f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

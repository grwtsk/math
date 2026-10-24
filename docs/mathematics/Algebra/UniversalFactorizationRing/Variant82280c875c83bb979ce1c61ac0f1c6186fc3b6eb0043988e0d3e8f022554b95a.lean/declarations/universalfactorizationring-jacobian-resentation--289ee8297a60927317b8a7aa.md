# UniversalFactorizationRing.jacobian_resentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b49143a-bb2c-6faf-6981-91b20c0b230d",
  "kind": "lemma",
  "lexical_name": "UniversalFactorizationRing.jacobian_resentation",
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
  "slug": "universalfactorizationring-jacobian-resentation--289ee8297a60927317b8a7aa",
  "source": {
    "blob": "56a1041889cc9095ca7ab293316e7658cdf2bfe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 520,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:289ee8297a60927317b8a7aa4723d39720edbd1e5cab45d9d463e085e146e575",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b49143a-bb2c-6faf-6981-91b20c0b230d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UniversalFactorizationRing.jacobian_resentation :
    (presentation m k hn p).jacobian =
      (-1) ^ n * (factor₁ m k hn p).1.resultant (factor₂ m k hn p).1 := by
  cases subsingleton_or_nontrivial 𝓡
  · exact Subsingleton.elim _ _
  cases subsingleton_or_nontrivial ((MvPolynomial (Fin m) R ⊗[R] MvPolynomial (Fin k) R))
  · dsimp [UniversalFactorizationRing]; exact Subsingleton.elim _ _
  cases subsingleton_or_nontrivial R
  · dsimp [UniversalFactorizationRing]; exact Subsingleton.elim _ _
  let := (MvPolynomial.universalFactorizationMap R n m k hn).toAlgebra
  let := ((MvPolynomial.mapEquivMonic R _ n).symm p).toAlgebra
  refine (Algebra.PreSubmersivePresentation.baseChange_jacobian _ _).trans ?_
  change fromTensor _ _ _ _ _ = _
  rw [MvPolynomial.universalFactorizationMapPresentation_jacobian]
  rw [map_mul, map_pow, map_neg, map_one, ← AlgHom.coe_toRingHom, ← Polynomial.resultant_map_map,
    Polynomial.map_map, Polynomial.map_map, (monic_freeMonic R k).natDegree_map,
    (monic_freeMonic R m).natDegree_map, MonicDegreeEq.natDegree,
    MonicDegreeEq.natDegree, natDegree_freeMonic, natDegree_freeMonic]
  rfl

open UniversalFactorizationRing in
/-- The universal coprime factorization ring of a monic polynomial `p` of degree `n`.
This is the representing object of the functor
`S ↦ "factorizations of p into coprime (monic deg m) * (monic deg k) in S"`.
See `UniversalCoprimeFactorizationRing.homEquiv`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variant82280c875c83bb979ce1c61ac0f1c6186fc3b6eb0043988e0d3e8f022554b95a.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `56a1041889cc9095ca7ab293316e7658cdf2bfe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

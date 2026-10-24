# UniversalFactorizationRing.jacobian_resentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cf8eee16-a046-fad0-a16b-a8fddd374617",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d3209ca-06a4-6dab-1f73-cd909e5c7e55",
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
  "slug": "universalfactorizationring-jacobian-resentation--cbb802dd57963e79c6394d62",
  "source": {
    "blob": "ae678ab555f97d3252bab1329bec03a83142e418",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 536,
    "line": 512,
    "path": "GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbb802dd57963e79c6394d6281931ca9fb9e7a129505a7ea33ec6aca56a571f4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d3209ca-06a4-6dab-1f73-cd909e5c7e55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–536.

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

[Verification target and public status](../../../../../verification/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalFactorizationRing/Variantb9d4e8b2c2dd8227f62d787f5e91d624a5fa92a29f7c1f9afe98fc5de93f0bb9.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae678ab555f97d3252bab1329bec03a83142e418` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# polynomial_integer_coefficient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e49195f804e0f12ecfbf2059230230d3df0b91b8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 97,
      "path": "GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d470870-481a-78a8-88c6-f7ce0e707d45",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f59b5f08-7dae-aea6-8c90-485e5da6ab8c",
  "kind": "theorem",
  "lexical_name": "polynomial_integer_coefficient",
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
  "slug": "polynomial-integer-coefficient--94b0e72a839a273e77321e6b",
  "source": {
    "blob": "e49195f804e0f12ecfbf2059230230d3df0b91b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 97,
    "path": "GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94b0e72a839a273e77321e6b0c0b20b69fe34b5dab0703bcbbd350115e9f7bc8",
  "verification": {
    "reference": "docs/verification/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f59b5f08-7dae-aea6-8c90-485e5da6ab8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomial_integer_coefficient (P U : Finset ℕ)
    (hP : ∀ p ∈ P, p.Prime) (hUP : U ⊆ P) :
    coeff (exponentMask U) (finiteEulerPolynomial P) =
      integerCoefficient P (ASBNP04.FiniteProduct.primeProduct U) := by
  have hU : ∀ p ∈ U, p.Prime := fun p hp => hP p (hUP hp)
  have hv : ∀ p, exponentMask U p ≤ 1 :=
    ((exponentMask_eq_iff (exponentMask U) U).mp rfl).2
  rw [finiteEulerPolynomial_coeff, exponentMask_support, if_pos ⟨hUP, hv⟩,
    integerCoefficient_exact P hP]
  have hsf := ASBNP04.FiniteProduct.primeProduct_squarefree U hU
  have hsub : (ASBNP04.FiniteProduct.primeProduct U).primeFactors ⊆ P := by
    rw [ASBNP04.FiniteProduct.primeProduct_primeFactors U hU]
    exact hUP
  rw [if_pos ⟨hsf, hsub⟩, ASBNP04.FiniteProduct.moebius_primeProduct U hU]

end EulerP04RH.FEMI

#print axioms EulerP04RH.FEMI.finiteEulerPolynomial_expansion
#print axioms EulerP04RH.FEMI.finiteEulerPolynomial_coeff
#print axioms EulerP04RH.FEMI.polynomial_integer_coefficient
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MvPolynomial/SquarefreeEulerProduct.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MvPolynomial/SquarefreeEulerProduct.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e49195f804e0f12ecfbf2059230230d3df0b91b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

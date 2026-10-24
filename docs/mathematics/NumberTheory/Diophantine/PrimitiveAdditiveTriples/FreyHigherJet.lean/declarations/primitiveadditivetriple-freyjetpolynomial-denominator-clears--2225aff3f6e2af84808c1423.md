# PrimitiveAdditiveTriple.freyJetPolynomial_denominator_clears

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2a6d58b-d3c5-76ee-d912-2964babcb05e",
  "kind": "theorem",
  "lexical_name": "PrimitiveAdditiveTriple.freyJetPolynomial_denominator_clears",
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
  "slug": "primitiveadditivetriple-freyjetpolynomial-denominator-clears--2225aff3f6e2af84808c1423",
  "source": {
    "blob": "90830ec01c368f6c6e99f945a5e4bf9be5ac4c18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2225aff3f6e2af84808c142333fce4750783a430c92df9b808048c880d574b4e",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2a6d58b-d3c5-76ee-d912-2964babcb05e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem PrimitiveAdditiveTriple.freyJetPolynomial_denominator_clears
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (n : ℕ) :
    C ((t.freyPortJacobian i : ℚ) ^ FreyJetRecursion.denominatorExponent n) *
        t.freyJetApproximantPolynomial i n =
      (t.freyJetNumeratorPolynomial i n).map (Int.castRingHom ℚ) := by
  have hdj : C (t.freyPortJacobian i : ℚ) * C ((t.freyPortJacobian i : ℚ)⁻¹) =
      (1 : ℚ[X]) := by
    rw [← C_mul, mul_inv_cancel₀ (t.freyPortJacobian_ne_zero i), C_1]
  have hc := FreyJetRecursion.denominator_clears
    (C (t.freyPortJacobian i : ℚ)) (C ((t.freyPortJacobian i : ℚ)⁻¹))
    (C (t.freyPortQuadraticCoefficient i)) (X : ℚ[X]) hdj n
  have hm := FreyJetRecursion.map_numerator (Polynomial.mapRingHom (Int.castRingHom ℚ))
    (C (t.freyPortJacobian i)) (C (t.freyPortQuadraticCoefficientInt i)) (X : ℤ[X]) n
  simp only [Polynomial.coe_mapRingHom, Polynomial.map_C, Polynomial.map_X] at hm
  rw [show (Int.castRingHom ℚ) (t.freyPortQuadraticCoefficientInt i) =
      t.freyPortQuadraticCoefficient i from t.freyPortQuadraticCoefficient_cast i] at hm
  simpa only [PrimitiveAdditiveTriple.freyJetApproximantPolynomial,
    PrimitiveAdditiveTriple.freyJetNumeratorPolynomial, map_pow] using hc.trans hm.symm

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyHigherJet.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90830ec01c368f6c6e99f945a5e4bf9be5ac4c18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

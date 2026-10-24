# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b6f592be2431a0cc4afe0b99f94ecc1de7c077bd4d55dfa92c957b5156fcab1",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--0b5691ff6dd8cb2690a8af2f",
  "source": {
    "blob": "f91710e436e993f371e62f18605062540b08ecc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 57,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/PositiveAtlasFeshbachEquationIdeal/Variant33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b5691ff6dd8cb2690a8af2f67ec41d057be6e52402339ea2673601922cc97d0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/PositiveAtlasFeshbachEquationIdeal/Variant33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b6f592be2431a0cc4afe0b99f94ecc1de7c077bd4d55dfa92c957b5156fcab1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example :
    FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1 =
      FeshbachEquationIdealFixture.diagonalEquationIdeal 1 1 ∧
    (FeshbachEquationIdealFixture.diagonalEquationIdeal (-1) 1).IsRadical ∧
    (∀ x y : ℝ, 0 ≤ x ^ 2 + y ^ 2) ∧
    (∃ x y : ℝ, -(x ^ 2) + y ^ 2 < 0) :=
  FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign

#print FormalResearch.PositiveAtlas.feshbach_equationIdeal_eq
#print FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_eq
#print FormalResearch.PositiveAtlas.symmetric_linearIdeal_eq_ker
#print FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_isPrime
#print FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.reduced_feshbach_polynomial_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_eq_vanishingIdeal_zeroLocus
#print FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print FormalResearch.PositiveAtlas.reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty
#print FormalResearch.PositiveAtlas.blockCoordinateEquationIdeal_isRadical
#print FormalResearch.PositiveAtlas.nondegenerate_feshbach_polynomial_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign

#print axioms FormalResearch.PositiveAtlas.blockEquationIdeal_elimination
#print axioms FormalResearch.PositiveAtlas.feshbach_equationIdeal_eq
#print axioms FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_eq
#print axioms FormalResearch.PositiveAtlas.symmetric_linearIdeal_eq_ker
#print axioms FormalResearch.PositiveAtlas.symmetric_linearGeneratorIdeal_isPrime
#print axioms FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_isPrime
#print axioms FormalResearch.PositiveAtlas.feshbach_polynomial_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.reduced_feshbach_polynomial_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.homogeneous_mulVec_equationIdeal_eq_vanishingIdeal_zeroLocus
#print axioms FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print axioms FormalResearch.PositiveAtlas.reducedFeshbachPolynomialEquationIdeal_eq_vanishingIdeal_zeroLocus
#print axioms FormalResearch.PositiveAtlas.feshbachPolynomialEquationIdeal_full_reduced_zeroLocus_nonempty
#print axioms FormalResearch.PositiveAtlas.blockCoordinateEquationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.nondegenerate_feshbach_polynomial_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/PositiveAtlasFeshbachEquationIdeal/Variant33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/PositiveAtlasFeshbachEquationIdeal/Variant33ebb89ef2bf756997841feee2123471a4d10e3012116e676b1cfb8390c2aa3b.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f91710e436e993f371e62f18605062540b08ecc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

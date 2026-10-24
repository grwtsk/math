# hostile_vector_not_admissible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ded11df6-e730-2dbc-d637-21ef97fdf066",
  "kind": "theorem",
  "lexical_name": "hostile_vector_not_admissible",
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
  "slug": "hostile-vector-not-admissible--35660695775cf2e69fd507ed",
  "source": {
    "blob": "2317c8ea84cc6ba710467f7f8ed9f19737bf095e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 480,
    "path": "GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35660695775cf2e69fd507edc834c946c978726b0c4ca1d8c9fc18398f5fdca3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ded11df6-e730-2dbc-d637-21ef97fdf066`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 480–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hostile_vector_not_admissible : ¬constrainedProblem.Admissible (fun _ => 2) := by
  norm_num [Problem.Admissible, quadratic, constrainedProblem, Matrix.mulVec, dotProduct]

#eval [check gramProblem gramCertificate, check negativeProblem gramCertificate,
  check constrainedProblem constrainedCertificate, check inequalityProblem inequalityCertificate,
  check negativeMultiplierProblem negativeMultiplierCertificate,
  check (inequalityProblem.pullback (fun _ _ : Unit => (3 : ℚ)))
    (inequalityCertificate.pullback (fun _ _ : Unit => (3 : ℚ)))]

end FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures

#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_lift
#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_kernel
#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_schur
#print FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_projection
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_completion
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_posSemidef
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_center
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_packet_posSemidef
#print FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.same_kernel_different_sign
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.opposite_signs_same_equationIdeal
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_equationIdeal_isRadical
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_nonnegative
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_has_negative_direction
#print FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_gram
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_constrained
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_inequality
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative_multiplier
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.transports_inequality
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.constrained_target_negative
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.hostile_vector_not_admissible
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.sound
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_sound
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.valid_pullback
#print FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_pullback
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_lift
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_kernel
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_schur
#print axioms FormalResearch.PositiveAtlas.Feshbach.ReconstructionFixtures.nonzero_cross_projection
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_completion
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.coupled_posSemidef
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_center
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.imaginary_packet_posSemidef
#print axioms FormalResearch.PositiveAtlas.FeshbachHermitian.Fixtures.same_kernel_different_sign
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.opposite_signs_same_equationIdeal
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_equationIdeal_isRadical
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.positive_diagonal_nonnegative
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.indefinite_diagonal_has_negative_direction
#print axioms FormalResearch.PositiveAtlas.FeshbachEquationIdealFixture.radical_equationIdeal_does_not_determine_sign
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_gram
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_constrained
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.accepts_inequality
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.rejects_negative_multiplier
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.transports_inequality
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.constrained_target_negative
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.Fixtures.hostile_vector_not_admissible
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.sound
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_sound
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.valid_pullback
#print axioms FormalResearch.PositiveAtlas.FiniteQuadraticCertificate.check_pullback
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/A92df473a3007505ac1cd2945448f593ee55163aedd9a111960c4c55ce8c9d9eFinalFeshbachFix/Variante105279dfc841d1ef999549c1c7e6cef9bee22c4fe1f3dd1053313bda2dbd5aa.lean#L480).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2317c8ea84cc6ba710467f7f8ed9f19737bf095e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

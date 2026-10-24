# factored_not_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7c3b2dbf-4d6c-fea1-26ac-c31b4d94ebe1",
  "kind": "theorem",
  "lexical_name": "factored_not_injective",
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
  "slug": "factored-not-injective--68982e918c3ebc325d011cba",
  "source": {
    "blob": "5812ac06c1579a94e76296ad687c3c9939b4d94d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 245,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68982e918c3ebc325d011cbac12c65c75ce5a61081f62bf043c16ae6c8bb9f17",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7c3b2dbf-4d6c-fea1-26ac-c31b4d94ebe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem factored_not_injective {H:Type*} [Group H] (rho:B3→*H)
    (hrho:FactorsThrough rho) : ¬Function.Injective rho := by
  intro h
  have hb := factored_lostBraid_blindness rho hrho 1
  simp only [one_mul] at hb
  exact lostBraid_ne_one (h hb)

end ContinuousResearch.BraidQuotient

/- Full exact public type, proof and trusted-dependency audits. -/
#check ContinuousResearch.BraidQuotient.braidRelator
#print axioms ContinuousResearch.BraidQuotient.braidRelator
#print ContinuousResearch.BraidQuotient.braidRelator
#check ContinuousResearch.BraidQuotient.braidRelations
#print axioms ContinuousResearch.BraidQuotient.braidRelations
#print ContinuousResearch.BraidQuotient.braidRelations
#check ContinuousResearch.BraidQuotient.B3
#print axioms ContinuousResearch.BraidQuotient.B3
#print ContinuousResearch.BraidQuotient.B3
#check ContinuousResearch.BraidQuotient.sigma1
#print axioms ContinuousResearch.BraidQuotient.sigma1
#print ContinuousResearch.BraidQuotient.sigma1
#check ContinuousResearch.BraidQuotient.sigma2
#print axioms ContinuousResearch.BraidQuotient.sigma2
#print ContinuousResearch.BraidQuotient.sigma2
#check ContinuousResearch.BraidQuotient.braid_relation
#print axioms ContinuousResearch.BraidQuotient.braid_relation
#print ContinuousResearch.BraidQuotient.braid_relation
#check ContinuousResearch.BraidQuotient.halfTwist
#print axioms ContinuousResearch.BraidQuotient.halfTwist
#print ContinuousResearch.BraidQuotient.halfTwist
#check ContinuousResearch.BraidQuotient.fullTwist
#print axioms ContinuousResearch.BraidQuotient.fullTwist
#print ContinuousResearch.BraidQuotient.fullTwist
#check ContinuousResearch.BraidQuotient.halfTwist_swap_sigma1
#print axioms ContinuousResearch.BraidQuotient.halfTwist_swap_sigma1
#print ContinuousResearch.BraidQuotient.halfTwist_swap_sigma1
#check ContinuousResearch.BraidQuotient.halfTwist_swap_sigma2
#print axioms ContinuousResearch.BraidQuotient.halfTwist_swap_sigma2
#print ContinuousResearch.BraidQuotient.halfTwist_swap_sigma2
#check ContinuousResearch.BraidQuotient.halfTwist_sq
#print axioms ContinuousResearch.BraidQuotient.halfTwist_sq
#print ContinuousResearch.BraidQuotient.halfTwist_sq
#check ContinuousResearch.BraidQuotient.fullTwist_commute_sigma1
#print axioms ContinuousResearch.BraidQuotient.fullTwist_commute_sigma1
#print ContinuousResearch.BraidQuotient.fullTwist_commute_sigma1
#check ContinuousResearch.BraidQuotient.fullTwist_commute_sigma2
#print axioms ContinuousResearch.BraidQuotient.fullTwist_commute_sigma2
#print ContinuousResearch.BraidQuotient.fullTwist_commute_sigma2
#check ContinuousResearch.BraidQuotient.fullTwist_central
#print axioms ContinuousResearch.BraidQuotient.fullTwist_central
#print ContinuousResearch.BraidQuotient.fullTwist_central
#check ContinuousResearch.BraidQuotient.upperGenerator
#print axioms ContinuousResearch.BraidQuotient.upperGenerator
#print ContinuousResearch.BraidQuotient.upperGenerator
#check ContinuousResearch.BraidQuotient.lowerGenerator
#print axioms ContinuousResearch.BraidQuotient.lowerGenerator
#print ContinuousResearch.BraidQuotient.lowerGenerator
#check ContinuousResearch.BraidQuotient.matrix_braid_relation
#print axioms ContinuousResearch.BraidQuotient.matrix_braid_relation
#print ContinuousResearch.BraidQuotient.matrix_braid_relation
#check ContinuousResearch.BraidQuotient.generatorMatrix
#print axioms ContinuousResearch.BraidQuotient.generatorMatrix
#print ContinuousResearch.BraidQuotient.generatorMatrix
#check ContinuousResearch.BraidQuotient.matrix_relator_identity
#print axioms ContinuousResearch.BraidQuotient.matrix_relator_identity
#print ContinuousResearch.BraidQuotient.matrix_relator_identity
#check ContinuousResearch.BraidQuotient.matrixRepresentation
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation
#print ContinuousResearch.BraidQuotient.matrixRepresentation
#check ContinuousResearch.BraidQuotient.matrixRepresentation_sigma1
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation_sigma1
#print ContinuousResearch.BraidQuotient.matrixRepresentation_sigma1
#check ContinuousResearch.BraidQuotient.matrixRepresentation_sigma2
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation_sigma2
#print ContinuousResearch.BraidQuotient.matrixRepresentation_sigma2
#check ContinuousResearch.BraidQuotient.generatorExponent
#print axioms ContinuousResearch.BraidQuotient.generatorExponent
#print ContinuousResearch.BraidQuotient.generatorExponent
#check ContinuousResearch.BraidQuotient.exponent_relator_identity
#print axioms ContinuousResearch.BraidQuotient.exponent_relator_identity
#print ContinuousResearch.BraidQuotient.exponent_relator_identity
#check ContinuousResearch.BraidQuotient.exponentHom
#print axioms ContinuousResearch.BraidQuotient.exponentHom
#print ContinuousResearch.BraidQuotient.exponentHom
#check ContinuousResearch.BraidQuotient.exponentHom_sigma1
#print axioms ContinuousResearch.BraidQuotient.exponentHom_sigma1
#print ContinuousResearch.BraidQuotient.exponentHom_sigma1
#check ContinuousResearch.BraidQuotient.exponentHom_sigma2
#print axioms ContinuousResearch.BraidQuotient.exponentHom_sigma2
#print ContinuousResearch.BraidQuotient.exponentHom_sigma2
#check ContinuousResearch.BraidQuotient.lostBraid
#print axioms ContinuousResearch.BraidQuotient.lostBraid
#print ContinuousResearch.BraidQuotient.lostBraid
#check ContinuousResearch.BraidQuotient.lostBraid_eq_fullTwist_square
#print axioms ContinuousResearch.BraidQuotient.lostBraid_eq_fullTwist_square
#print ContinuousResearch.BraidQuotient.lostBraid_eq_fullTwist_square
#check ContinuousResearch.BraidQuotient.lostBraid_central
#print axioms ContinuousResearch.BraidQuotient.lostBraid_central
#print ContinuousResearch.BraidQuotient.lostBraid_central
#check ContinuousResearch.BraidQuotient.generator_product_matrix
#print axioms ContinuousResearch.BraidQuotient.generator_product_matrix
#print ContinuousResearch.BraidQuotient.generator_product_matrix
#check ContinuousResearch.BraidQuotient.generator_product_cube_matrix
#print axioms ContinuousResearch.BraidQuotient.generator_product_cube_matrix
#print ContinuousResearch.BraidQuotient.generator_product_cube_matrix
#check ContinuousResearch.BraidQuotient.fullTwist_matrix
#print axioms ContinuousResearch.BraidQuotient.fullTwist_matrix
#print ContinuousResearch.BraidQuotient.fullTwist_matrix
#check ContinuousResearch.BraidQuotient.fullTwist_matrix_ne_one
#print axioms ContinuousResearch.BraidQuotient.fullTwist_matrix_ne_one
#print ContinuousResearch.BraidQuotient.fullTwist_matrix_ne_one
#check ContinuousResearch.BraidQuotient.generator_product_sixth
#print axioms ContinuousResearch.BraidQuotient.generator_product_sixth
#print ContinuousResearch.BraidQuotient.generator_product_sixth
#check ContinuousResearch.BraidQuotient.lostBraid_matrix_identity
#print axioms ContinuousResearch.BraidQuotient.lostBraid_matrix_identity
#print ContinuousResearch.BraidQuotient.lostBraid_matrix_identity
#check ContinuousResearch.BraidQuotient.lostBraid_exponent
#print axioms ContinuousResearch.BraidQuotient.lostBraid_exponent
#print ContinuousResearch.BraidQuotient.lostBraid_exponent
#check ContinuousResearch.BraidQuotient.lostBraid_ne_one
#print axioms ContinuousResearch.BraidQuotient.lostBraid_ne_one
#print ContinuousResearch.BraidQuotient.lostBraid_ne_one
#check ContinuousResearch.BraidQuotient.matrixRepresentation_not_injective
#print axioms ContinuousResearch.BraidQuotient.matrixRepresentation_not_injective
#print ContinuousResearch.BraidQuotient.matrixRepresentation_not_injective
#check ContinuousResearch.BraidQuotient.beta_mul_lostBraid_ne
#print axioms ContinuousResearch.BraidQuotient.beta_mul_lostBraid_ne
#print ContinuousResearch.BraidQuotient.beta_mul_lostBraid_ne
#check ContinuousResearch.BraidQuotient.FactorsThrough
#print axioms ContinuousResearch.BraidQuotient.FactorsThrough
#print ContinuousResearch.BraidQuotient.FactorsThrough
#check ContinuousResearch.BraidQuotient.factored_kernel_blindness
#print axioms ContinuousResearch.BraidQuotient.factored_kernel_blindness
#print ContinuousResearch.BraidQuotient.factored_kernel_blindness
#check ContinuousResearch.BraidQuotient.factored_lostBraid_blindness
#print axioms ContinuousResearch.BraidQuotient.factored_lostBraid_blindness
#print ContinuousResearch.BraidQuotient.factored_lostBraid_blindness
#check ContinuousResearch.BraidQuotient.factored_not_injective
#print axioms ContinuousResearch.BraidQuotient.factored_not_injective
#print ContinuousResearch.BraidQuotient.factored_not_injective
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt07/Variantf0a137bc4e872e86d3d90555610fa16abc1947ce093afcfca4ac24374c2ca894.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5812ac06c1579a94e76296ad687c3c9939b4d94d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

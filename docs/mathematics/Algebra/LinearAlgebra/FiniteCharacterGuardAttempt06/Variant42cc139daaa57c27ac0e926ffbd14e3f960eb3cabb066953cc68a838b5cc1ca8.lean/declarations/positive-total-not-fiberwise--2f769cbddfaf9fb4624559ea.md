# positive_total_not_fiberwise

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0132bc6e-015f-6b98-ac52-1aba6818b77a",
  "kind": "theorem",
  "lexical_name": "positive_total_not_fiberwise",
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
  "slug": "positive-total-not-fiberwise--2f769cbddfaf9fb4624559ea",
  "source": {
    "blob": "14ac0b46d175fab3193ad32312bdc4edd71055fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 203,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f769cbddfaf9fb4624559ea6146edb96b6db20b30484c8ecda8c131d18ead02",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0132bc6e-015f-6b98-ac52-1aba6818b77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_total_not_fiberwise [Nontrivial G] :
    ¬ (∀ Q : AddChar G ℂ → ℝ, 0 ≤ ∑ character, Q character → ∀ character, 0 ≤ Q character) := by
  intro h
  have hb := h scalarFiber scalarFiber_positive_total.le 0
  exact (not_le_of_gt scalarFiber_negative_trivial) hb

end ContinuousResearch.FiniteCharacterGuard

/- Exact public statement, proof and trusted-dependency audits. -/
#check ContinuousResearch.FiniteCharacterGuard.coefficientMap
#print axioms ContinuousResearch.FiniteCharacterGuard.coefficientMap
#print ContinuousResearch.FiniteCharacterGuard.coefficientMap
#check ContinuousResearch.FiniteCharacterGuard.coefficient_eq_expect
#print axioms ContinuousResearch.FiniteCharacterGuard.coefficient_eq_expect
#print ContinuousResearch.FiniteCharacterGuard.coefficient_eq_expect
#check ContinuousResearch.FiniteCharacterGuard.trivial_coefficient_eq_mean
#print axioms ContinuousResearch.FiniteCharacterGuard.trivial_coefficient_eq_mean
#print ContinuousResearch.FiniteCharacterGuard.trivial_coefficient_eq_mean
#check ContinuousResearch.FiniteCharacterGuard.coefficient_character
#print axioms ContinuousResearch.FiniteCharacterGuard.coefficient_character
#print ContinuousResearch.FiniteCharacterGuard.coefficient_character
#check ContinuousResearch.FiniteCharacterGuard.coefficient_eq_basis_repr
#print axioms ContinuousResearch.FiniteCharacterGuard.coefficient_eq_basis_repr
#print ContinuousResearch.FiniteCharacterGuard.coefficient_eq_basis_repr
#check ContinuousResearch.FiniteCharacterGuard.complete_reconstruction
#print axioms ContinuousResearch.FiniteCharacterGuard.complete_reconstruction
#print ContinuousResearch.FiniteCharacterGuard.complete_reconstruction
#check ContinuousResearch.FiniteCharacterGuard.incompleteReconstruction
#print axioms ContinuousResearch.FiniteCharacterGuard.incompleteReconstruction
#print ContinuousResearch.FiniteCharacterGuard.incompleteReconstruction
#check ContinuousResearch.FiniteCharacterGuard.reconstruction_split
#print axioms ContinuousResearch.FiniteCharacterGuard.reconstruction_split
#print ContinuousResearch.FiniteCharacterGuard.reconstruction_split
#check ContinuousResearch.FiniteCharacterGuard.incomplete_eq_self_iff
#print axioms ContinuousResearch.FiniteCharacterGuard.incomplete_eq_self_iff
#print ContinuousResearch.FiniteCharacterGuard.incomplete_eq_self_iff
#check ContinuousResearch.FiniteCharacterGuard.nontrivialSpan
#print axioms ContinuousResearch.FiniteCharacterGuard.nontrivialSpan
#print ContinuousResearch.FiniteCharacterGuard.nontrivialSpan
#check ContinuousResearch.FiniteCharacterGuard.nontrivialSpan_le_trivial_kernel
#print axioms ContinuousResearch.FiniteCharacterGuard.nontrivialSpan_le_trivial_kernel
#print ContinuousResearch.FiniteCharacterGuard.nontrivialSpan_le_trivial_kernel
#check ContinuousResearch.FiniteCharacterGuard.trivial_not_mem_nontrivialSpan
#print axioms ContinuousResearch.FiniteCharacterGuard.trivial_not_mem_nontrivialSpan
#print ContinuousResearch.FiniteCharacterGuard.trivial_not_mem_nontrivialSpan
#check ContinuousResearch.FiniteCharacterGuard.mem_nontrivialSpan_iff
#print axioms ContinuousResearch.FiniteCharacterGuard.mem_nontrivialSpan_iff
#print ContinuousResearch.FiniteCharacterGuard.mem_nontrivialSpan_iff
#check ContinuousResearch.FiniteCharacterGuard.nontrivialSpan_eq_trivial_kernel
#print axioms ContinuousResearch.FiniteCharacterGuard.nontrivialSpan_eq_trivial_kernel
#print ContinuousResearch.FiniteCharacterGuard.nontrivialSpan_eq_trivial_kernel
#check ContinuousResearch.FiniteCharacterGuard.coefficient_constant
#print axioms ContinuousResearch.FiniteCharacterGuard.coefficient_constant
#print ContinuousResearch.FiniteCharacterGuard.coefficient_constant
#check ContinuousResearch.FiniteCharacterGuard.nontrivialStack
#print axioms ContinuousResearch.FiniteCharacterGuard.nontrivialStack
#print ContinuousResearch.FiniteCharacterGuard.nontrivialStack
#check ContinuousResearch.FiniteCharacterGuard.nontrivialStack_add_constant
#print axioms ContinuousResearch.FiniteCharacterGuard.nontrivialStack_add_constant
#print ContinuousResearch.FiniteCharacterGuard.nontrivialStack_add_constant
#check ContinuousResearch.FiniteCharacterGuard.nontrivialStack_eq_iff_constant_difference
#print axioms ContinuousResearch.FiniteCharacterGuard.nontrivialStack_eq_iff_constant_difference
#print ContinuousResearch.FiniteCharacterGuard.nontrivialStack_eq_iff_constant_difference
#check ContinuousResearch.FiniteCharacterGuard.no_trivial_coefficient_decoder
#print axioms ContinuousResearch.FiniteCharacterGuard.no_trivial_coefficient_decoder
#print ContinuousResearch.FiniteCharacterGuard.no_trivial_coefficient_decoder
#check ContinuousResearch.FiniteCharacterGuard.scalarFiber
#print axioms ContinuousResearch.FiniteCharacterGuard.scalarFiber
#print ContinuousResearch.FiniteCharacterGuard.scalarFiber
#check ContinuousResearch.FiniteCharacterGuard.scalarFiber_sum
#print axioms ContinuousResearch.FiniteCharacterGuard.scalarFiber_sum
#print ContinuousResearch.FiniteCharacterGuard.scalarFiber_sum
#check ContinuousResearch.FiniteCharacterGuard.scalarFiber_positive_total
#print axioms ContinuousResearch.FiniteCharacterGuard.scalarFiber_positive_total
#print ContinuousResearch.FiniteCharacterGuard.scalarFiber_positive_total
#check ContinuousResearch.FiniteCharacterGuard.scalarFiber_negative_trivial
#print axioms ContinuousResearch.FiniteCharacterGuard.scalarFiber_negative_trivial
#print ContinuousResearch.FiniteCharacterGuard.scalarFiber_negative_trivial
#check ContinuousResearch.FiniteCharacterGuard.scalarFiber_positive_nontrivial
#print axioms ContinuousResearch.FiniteCharacterGuard.scalarFiber_positive_nontrivial
#print ContinuousResearch.FiniteCharacterGuard.scalarFiber_positive_nontrivial
#check ContinuousResearch.FiniteCharacterGuard.positive_total_not_fiberwise
#print axioms ContinuousResearch.FiniteCharacterGuard.positive_total_not_fiberwise
#print ContinuousResearch.FiniteCharacterGuard.positive_total_not_fiberwise
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteCharacterGuardAttempt06/Variant42cc139daaa57c27ac0e926ffbd14e3f960eb3cabb066953cc68a838b5cc1ca8.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14ac0b46d175fab3193ad32312bdc4edd71055fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# eight_mem_higherPrimePowerIndices_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:affe2867-a993-3703-a9ae-1ba21f22e7e4",
  "kind": "theorem",
  "lexical_name": "eight_mem_higherPrimePowerIndices_iff",
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
  "slug": "eight-mem-higherprimepowerindices-iff--160e4aa5a32c468a6e1606ea",
  "source": {
    "blob": "8463cd2d6637b0dc6cf1a00e28883146cd7859c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:160e4aa5a32c468a6e1606ea4d0e1bc18b6b878da1c40d34cf7019d111b64c33",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:affe2867-a993-3703-a9ae-1ba21f22e7e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eight_mem_higherPrimePowerIndices_iff (A : ℝ) :
    8 ∈ higherPrimePowerIndices A ↔ (8 : ℝ) < Real.exp (2 * A) := by
  classical
  simp only [higherPrimePowerIndices, Finset.mem_filter, Cutoff.mem_primeIndices_iff,
    eight_higher_not_square.1, and_true]
  norm_num

end
end HigherPowerSourceScratch

set_option pp.proofs false

#print HigherPowerSourceScratch.IsHigherPrimePower
#print axioms HigherPowerSourceScratch.IsHigherPrimePower
#print HigherPowerSourceScratch.higherPrimePowerIndices
#print axioms HigherPowerSourceScratch.higherPrimePowerIndices
#print HigherPowerSourceScratch.higherPrimePowerContribution
#print axioms HigherPowerSourceScratch.higherPrimePowerContribution
#print HigherPowerSourceScratch.prime_power_representation_unique
#print axioms HigherPowerSourceScratch.prime_power_representation_unique
#print HigherPowerSourceScratch.primeSquare_not_higher
#print axioms HigherPowerSourceScratch.primeSquare_not_higher
#print HigherPowerSourceScratch.primeSquare_not_prime
#print axioms HigherPowerSourceScratch.primeSquare_not_prime
#print HigherPowerSourceScratch.higher_not_prime
#print axioms HigherPowerSourceScratch.higher_not_prime
#print HigherPowerSourceScratch.nonprime_primePower_iff
#print axioms HigherPowerSourceScratch.nonprime_primePower_iff
#print HigherPowerSourceScratch.nonprime_weight_zero_of_outside
#print axioms HigherPowerSourceScratch.nonprime_weight_zero_of_outside
#print HigherPowerSourceScratch.primeSquare_higher_indices_disjoint
#print axioms HigherPowerSourceScratch.primeSquare_higher_indices_disjoint
#print HigherPowerSourceScratch.properPrimePowerContribution_eq_square_add_higher
#print axioms HigherPowerSourceScratch.properPrimePowerContribution_eq_square_add_higher
#print HigherPowerSourceScratch.primePowerContribution_eq_prime_square_higher
#print axioms HigherPowerSourceScratch.primePowerContribution_eq_prime_square_higher
#print HigherPowerSourceScratch.eight_higher_not_square
#print axioms HigherPowerSourceScratch.eight_higher_not_square
#print HigherPowerSourceScratch.eight_mem_higherPrimePowerIndices_iff
#print axioms HigherPowerSourceScratch.eight_mem_higherPrimePowerIndices_iff
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceAudit/Variant1b925102d79e64ab7ff4c504afbf59779e7a7c5c1a11810e0022cf818fd0bfe2.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8463cd2d6637b0dc6cf1a00e28883146cd7859c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

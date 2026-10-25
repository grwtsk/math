# eight_mem_higherPrimePowerIndices_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8c6211e-a61d-fa29-7fb7-3986d4f7578a",
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
  "slug": "eight-mem-higherprimepowerindices-iff--a2f2a35e41b61cd388f37409",
  "source": {
    "blob": "477bc03eafb88472a655bd26ee19dbf9868134ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 132,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2f2a35e41b61cd388f37409bbdbb96dfc088850b8e8ba76ef7287c5f3ba51a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8c6211e-a61d-fa29-7fb7-3986d4f7578a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–152.

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

set_option autoImplicit false
section HigherPowerSourceExactStatements
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization
open FormalResearch.RiemannHypothesis.SourceComparison
open ProperPrimePowers PrimeSquareSource
noncomputable section

open HigherPowerSourceScratch

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/HigherPowerSourceStatements/Variant65bd6ebf453f3a728df0785c03f557a2abf41a2cf312d7153abcc3a5dd704ee5.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `477bc03eafb88472a655bd26ee19dbf9868134ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

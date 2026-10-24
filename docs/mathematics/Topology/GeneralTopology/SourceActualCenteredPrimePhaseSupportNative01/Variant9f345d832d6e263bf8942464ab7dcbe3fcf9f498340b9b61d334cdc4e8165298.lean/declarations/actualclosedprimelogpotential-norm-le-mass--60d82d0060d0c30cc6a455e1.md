# actualClosedPrimeLogPotential_norm_le_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8e55652-b71b-dc7c-9dcd-cd506ddcd85e",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeLogPotential_norm_le_mass",
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
  "slug": "actualclosedprimelogpotential-norm-le-mass--60d82d0060d0c30cc6a455e1",
  "source": {
    "blob": "591edb85d613f5a7bb9943ad630e01be169ca2f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d82d0060d0c30cc6a455e142e38931b065be610c14fe086a418df648e6370e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8e55652-b71b-dc7c-9dcd-cd506ddcd85e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeLogPotential_norm_le_mass (A c t : ℝ) :
    ‖actualClosedPrimeLogPotential A ((c : ℂ)+(t : ℂ)*I)‖ ≤
      actualClosedPrimeLogMass A c := by
  unfold actualClosedPrimeLogPotential
  calc
    _ ≤ ∑ n ∈ Finset.range (⌊Real.exp (2*A)⌋₊+1),
        ‖((ArithmeticFunction.vonMangoldt n / Real.log n : ℝ) : ℂ) *
          Complex.exp (-((c : ℂ)+(t : ℂ)*I)*(Real.log n : ℂ))‖ := norm_sum_le _ _
    _ = _ := by simp only [term_norm, mass_eq_sum]

/-- The actual Q and S share one coefficient disk; they are not independent budgets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SourceActualCenteredPrimePhaseSupportNative01/Variant9f345d832d6e263bf8942464ab7dcbe3fcf9f498340b9b61d334cdc4e8165298.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `591edb85d613f5a7bb9943ad630e01be169ca2f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

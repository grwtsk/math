# projected_atom_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:396a9e94-d696-3e31-9230-375a4d340fde",
  "kind": "theorem",
  "lexical_name": "projected_atom_readout",
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
  "slug": "projected-atom-readout--dc5fd60cf4b99b1d14d2a578",
  "source": {
    "blob": "c683d20ded35a6753778cbb9221c6f7832e371e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variantdf5fb784725eea897d5a5553ca7e6f8a4e5626e7c6f996c5b36d9ab3b00b2219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc5fd60cf4b99b1d14d2a578d0cc2e97e3a3c7b2fa6a4505fc1ceee02d75ea69",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variantdf5fb784725eea897d5a5553ca7e6f8a4e5626e7c6f996c5b36d9ab3b00b2219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:396a9e94-d696-3e31-9230-375a4d340fde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem projected_atom_readout (A : ℝ) :
    changedSourceReadout A (actualNegativeWeightProjection A) =
      2 * ∑ q : SourceAtom A,
        if closedPrimeWeight A q.1.val < 0 then
          sourceMobiusRow A q * sourceLogRow A q * sourceAtomWeight A q else 0 := by
  rw [changedSourceReadout, projection_source_vector]
  change jointVector _ _ ⬝ᵥ signedDilation (pairKernel _) *ᵥ jointVector _ _ = _
  rw [pairKernel_covariance]
  congr 1
  apply Finset.sum_congr rfl
  intro q _
  by_cases h : closedPrimeWeight A q.1.val < 0 <;> simp [negativeMask, h] <;> ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variantdf5fb784725eea897d5a5553ca7e6f8a4e5626e7c6f996c5b36d9ab3b00b2219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualNegativeWeightProjection/Variantdf5fb784725eea897d5a5553ca7e6f8a4e5626e7c6f996c5b36d9ab3b00b2219.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c683d20ded35a6753778cbb9221c6f7832e371e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

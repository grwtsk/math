# prime_phase_compensation_of_prime_square_compensation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8ec8abdae62cca5ad310c738bc50ff269bc613dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:53478b75-5809-31fc-26be-3b6f1dac395c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1f444f6-5653-1e97-b2da-14245efcdd17",
  "kind": "theorem",
  "lexical_name": "prime_phase_compensation_of_prime_square_compensation",
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
  "slug": "prime-phase-compensation-of-prime-square-compensation--57d40990dce88e28031f746b",
  "source": {
    "blob": "8ec8abdae62cca5ad310c738bc50ff269bc613dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57d40990dce88e28031f746b73cf4e2f1e22e48f92c7551a184c75af01c958ec",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1f444f6-5653-1e97-b2da-14245efcdd17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_phase_compensation_of_prime_square_compensation
    (h : PrimeSquareCompensationTail) : HeliconeEstimate.PrimePhaseCompensationTail := by
  obtain ⟨C, hC, R, hR, htail⟩ := h
  obtain ⟨K, hK, hhigh⟩ := higherPowerContribution_uniform_abs_bound
  apply HeliconeEstimate.prime_phase_compensation_tail_iff_prime_contribution_tail.mpr
  refine ⟨C + 2 * K, by positivity, R, hR, ?_⟩
  intro A hRA
  have hA : 1 ≤ A := hR.trans hRA
  have hl := htail A hRA
  have hh := (abs_le.mp (hhigh A hA)).2
  rw [primePowerContribution_eq_lower_add_higher A,
    lowerPowerContribution_eq_weight_sub_half_phaseMass A hA]
  linarith

/-- The converse also holds: the removed sector is bounded on both sides,
so the reduced-support estimate introduces no stronger arithmetic premise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant00e6c500fb584efbae2bf31a269359fd9ebc102ea4ee5f04091a2fe8753edb44.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8ec8abdae62cca5ad310c738bc50ff269bc613dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

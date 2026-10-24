# boundary_trace_stability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b8173c5d0eab6bdb7d042b3a6fb34c51f649cd0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/ddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee2bbeb7-2e65-12b1-cd86-d299f0e264e4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:811f15f6-78bc-0e51-e9bb-6f9743bb8324",
  "kind": "theorem",
  "lexical_name": "boundary_trace_stability",
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
  "slug": "boundary-trace-stability--aba15934a4f44e70935b3fe7",
  "source": {
    "blob": "5b8173c5d0eab6bdb7d042b3a6fb34c51f649cd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 179,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aba15934a4f44e70935b3fe70e7e55c05202ef7068cbba14b2f886a93e12ed05",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:811f15f6-78bc-0e51-e9bb-6f9743bb8324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_trace_stability
    {system : RandomBitfieldSystem}
    {carrier : WassersteinLawCarrier system}
    {Schedule : Type uSchedule}
    {reference :
      ScheduleKernelFamily system carrier Schedule}
    {lawPerturbation :
      InvariantLawPerturbation reference}
    {spectral : BitfieldSpectralOperator system}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {trace :
      ArithmeticBitfieldTraceCertificate
        spectral Scale TestFunction}
    {scale : Scale}
    {test : TestFunction}
    (certificate :
      BoundaryTraceStabilityCertificate
        lawPerturbation trace scale test) :
    certificate.globalDiscrepancyDefect ≤
      certificate.globalBound := by
  have lawBound :
      certificate.lawTraceDisplacement ≤
        certificate.traceLipschitz *
          ((lawPerturbation.localDefect : ℝ) /
            (1 - (reference.contraction : ℝ))) :=
    le_trans
      certificate.lawTraceControlled
      (mul_le_mul_of_nonneg_left
        lawPerturbation.invariant_law_perturbation_bound
        certificate.traceLipschitzNonnegative)
  have operatorBound :
      certificate.operatorTraceDisplacement ≤
        certificate.operatorDefect := by
    rw [certificate.operatorTraceDisplacement_eq,
      certificate.operatorDefectDerived]
    exact
      trace.spectralTransform.displacement_le
        scale test
        certificate.referenceOperator
        certificate.perturbedOperator
  exact le_trans
    certificate.globalDefectDecomposition
    (add_le_add
      (add_le_add
        (add_le_add
          (add_le_add
            lawBound
            operatorBound)
          certificate.arithmeticCorrespondenceDisplacementLe)
        le_rfl)
      le_rfl)

end Mathematics.ConnesBitfield
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceStability/Variantddab0aaf4ccbd93a5035b44a7a5d9f897f850ba12ae74e9f9c69c772aeb7cde4.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b8173c5d0eab6bdb7d042b3a6fb34c51f649cd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

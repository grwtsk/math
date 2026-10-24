# normalizedSignedAbelKernelSubprobability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c248c6f-01a2-454d-087a-7b9a3f023255",
  "kind": "theorem",
  "lexical_name": "normalizedSignedAbelKernelSubprobability",
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
  "slug": "normalizedsignedabelkernelsubprobability--2198a5b976e811c34dc10139",
  "source": {
    "blob": "60d8e7a6036e14738b9e87fca74f96dd3b50cf00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 140,
    "path": "GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2198a5b976e811c34dc10139b855fc39d33affbc92ef5c6df832e7a7b39800a6",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c248c6f-01a2-454d-087a-7b9a3f023255`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSignedAbelKernelSubprobability
    {j t : ℕ} (htY : t + 2 ≤ 2 ^ (j + 1)) :
    NormalizedSignedAbelKernelSubprobability j t :=
  ⟨normalizedSignedAbelShiftKernel_nonneg j t,
    normalizedSignedAbelShiftKernelMass_le_one htY⟩

end GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling

#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedSignedAbelShiftKernelMass_eq_scaledWeightMass
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedSignedAbelShiftKernelMass_le_one
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.normalizedSignedAbelDepthShiftResponse_eq_kernelSum
#print axioms GRWTSK.RiemannHypothesis.CCC.LogarithmicSampling.weightedMertensDyadicSignedAbelDepthSlice_eq_kernelAutocorrelation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensSignedAbelSubprobabilityKernel.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60d8e7a6036e14738b9e87fca74f96dd3b50cf00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

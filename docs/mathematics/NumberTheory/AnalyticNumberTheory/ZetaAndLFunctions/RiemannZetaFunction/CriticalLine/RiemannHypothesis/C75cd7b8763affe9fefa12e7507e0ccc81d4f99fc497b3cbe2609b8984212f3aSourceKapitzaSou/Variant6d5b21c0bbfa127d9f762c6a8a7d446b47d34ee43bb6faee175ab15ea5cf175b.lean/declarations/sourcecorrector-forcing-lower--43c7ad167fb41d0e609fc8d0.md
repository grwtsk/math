# sourceCorrector_forcing_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb15edf-83ed-f12e-99e9-c6bde0f0a15a",
  "kind": "theorem",
  "lexical_name": "sourceCorrector_forcing_lower",
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
  "slug": "sourcecorrector-forcing-lower--43c7ad167fb41d0e609fc8d0",
  "source": {
    "blob": "25cefe05a0bce660358ef594d9970023d07b85cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43c7ad167fb41d0e609fc8d0a98776387f79a7eb4042f342ace39128d9c14ec0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb15edf-83ed-f12e-99e9-c6bde0f0a15a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrector_forcing_lower (A s : ℝ) (hA : 1 ≤ A)
    (hl : |affineTrend A s| ≤ 1 / 8) (hb : |endpointSlope A| ≤ 1 / 64) :
    (2035 / 1024 : ℝ) * Real.exp (s / 2) ≤ sourceCorrector A s * sourceForcing A s := by
  have h := obstruction_coefficients (actual_correlation_abs_le_one A s hA) hl hb
  exact obstruction_product (Real.exp_pos _).le h.1 h.2

end FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage

set_option pp.proofs true
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceForcing
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceForcing
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceCorrector
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceCorrector
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceForcing_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceForcing_hasDerivAt
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceCorrector_deriv_cancel
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceCorrector_deriv_cancel
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage_upper
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage_upper
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage_zero
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage_zero
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage_zero_epsilon
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceStorage_zero_epsilon
#print FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceCorrector_forcing_lower
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaSourceStorage.sourceCorrector_forcing_lower
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C75cd7b8763affe9fefa12e7507e0ccc81d4f99fc497b3cbe2609b8984212f3aSourceKapitzaSou/Variant6d5b21c0bbfa127d9f762c6a8a7d446b47d34ee43bb6faee175ab15ea5cf175b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25cefe05a0bce660358ef594d9970023d07b85cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

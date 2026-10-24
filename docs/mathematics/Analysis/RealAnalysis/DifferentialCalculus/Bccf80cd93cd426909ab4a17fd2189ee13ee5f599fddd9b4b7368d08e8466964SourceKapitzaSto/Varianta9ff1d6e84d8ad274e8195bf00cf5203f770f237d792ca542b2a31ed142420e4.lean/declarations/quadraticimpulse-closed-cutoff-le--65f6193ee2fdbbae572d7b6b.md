# quadraticImpulse_closed_cutoff_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffb9d458-d4e6-3a12-0ef9-1358bfd9210e",
  "kind": "theorem",
  "lexical_name": "quadraticImpulse_closed_cutoff_le",
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
  "slug": "quadraticimpulse-closed-cutoff-le--65f6193ee2fdbbae572d7b6b",
  "source": {
    "blob": "a2c42de317a3e56db7a15d21a86d07f63a532532",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 395,
    "line": 324,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65f6193ee2fdbbae572d7b6bd8ab4a22df1a67202d8ea9bb9984640d52af77cd",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffb9d458-d4e6-3a12-0ef9-1358bfd9210e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–395.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticImpulse_closed_cutoff_le (A : ℝ) :
    (∑ n ∈ Finset.Icc 2 ⌊Real.exp (2 * A)⌋₊, quadraticImpulse n) ≤
      16 + 8 * Real.log 2 + 2 * (Real.log 2) ^ 2 :=
  quadraticImpulse_sum_le _

end FormalResearch.RiemannHypothesis.SourceKapitzaStorage

set_option pp.proofs true
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.storage
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.storage
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.drift_identity
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.drift_identity
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.hasDerivAt_storage
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.hasDerivAt_storage
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.hasDerivAt_weight
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.hasDerivAt_weight
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.corrector_cancellation
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.corrector_cancellation
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.hasDerivAt_corrector
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.hasDerivAt_corrector
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.jump_continuous_corrector
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.jump_continuous_corrector
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.jump_jumping_corrector
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.jump_jumping_corrector
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.storage_endpoint
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.storage_endpoint
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.storage_complete_square
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.storage_complete_square
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_reconstruction
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_reconstruction
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_abs_sub_four
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_abs_sub_four
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_abs_sub_four_linear
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_abs_sub_four_linear
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_epsilon
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.initialStorage_epsilon
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.obstruction_coefficients
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.obstruction_coefficients
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.obstruction_product
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.obstruction_product
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticConstant
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticConstant
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_nonneg
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_nonneg
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_le_log
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_le_log
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.log_atom_le_quadraticMajorant
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.log_atom_le_quadraticMajorant
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive_hasDerivAt
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive_one
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive_one
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive_nonpos
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticPrimitive_nonpos
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant_continuousOn
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant_continuousOn
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant_integral
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant_integral
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant_integral_le
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticMajorant_integral_le
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_sum_le
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_sum_le
#print FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_closed_cutoff_le
#print axioms FormalResearch.RiemannHypothesis.SourceKapitzaStorage.quadraticImpulse_closed_cutoff_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bccf80cd93cd426909ab4a17fd2189ee13ee5f599fddd9b4b7368d08e8466964SourceKapitzaSto/Varianta9ff1d6e84d8ad274e8195bf00cf5203f770f237d792ca542b2a31ed142420e4.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c42de317a3e56db7a15d21a86d07f63a532532` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# sourceCorrelation_deriv_zero_of_two_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba54a3e881c696db504964864423573d4be91183",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6f730b81-d80c-16a7-2931-801d12accfa9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d03ec751-3e7a-ec6c-2b04-2e39ea2d0024",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_deriv_zero_of_two_mul_le",
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
  "slug": "sourcecorrelation-deriv-zero-of-two-mul-le--2c6fee8130657b78398e0122",
  "source": {
    "blob": "ba54a3e881c696db504964864423573d4be91183",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 98,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c6fee8130657b78398e0122af23f3485a5b611c124b6c1666d5e38c44f7a79d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d03ec751-3e7a-ec6c-2b04-2e39ea2d0024`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_deriv_zero_of_two_mul_le
    (A t : ℝ) (hA : 0 < A) (ht : 2 * A ≤ t) :
    deriv (sourceCorrelation Realization.explicitSecondDerivative A) t = 0 := by
  have hz : ∀ y ∈ Ici t,
      sourceCorrelation Realization.explicitSecondDerivative A y = 0 := by
    intro y hy
    exact CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs A y hA
      (ht.trans (hy.trans (le_abs_self y)))
  have hd : HasDerivWithinAt
      (sourceCorrelation Realization.explicitSecondDerivative A) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy ↦ hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- Every fixed summand has zero derivative at the exact upper Abel boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf3f4a4bfad5357972840a42f8321c37e4811ea5990dde1f5dbc0311a5a28c683.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba54a3e881c696db504964864423573d4be91183` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

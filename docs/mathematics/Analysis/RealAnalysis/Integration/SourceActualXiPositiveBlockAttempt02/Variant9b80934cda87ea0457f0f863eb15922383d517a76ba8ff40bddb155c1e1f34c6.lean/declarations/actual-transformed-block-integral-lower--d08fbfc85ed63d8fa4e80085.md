# actual_transformed_block_integral_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:93a088d7-1a1b-770e-5939-5d96e4b8bfd2",
  "kind": "theorem",
  "lexical_name": "actual_transformed_block_integral_lower",
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
  "slug": "actual-transformed-block-integral-lower--d08fbfc85ed63d8fa4e80085",
  "source": {
    "blob": "1a24d8406f8860416376c48539b38fbde9702e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 148,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d08fbfc85ed63d8fa4e800856ee6b527a4b03b7a0abaa1bf7a8cc6fce0759d90",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:93a088d7-1a1b-770e-5939-5d96e4b8bfd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_transformed_block_integral_lower (A : ℝ) (hA : 40 ≤ A) :
    blockMargin ≤ ∫ y in (13 / 2 : ℝ)..7, actualTransformedXiBlockDensity A y := by
  have hc : ContinuousOn (fun y : ℝ => (1 / 24 : ℝ) / y ^ (3 / 2 : ℝ))
      (Icc (13 / 2) 7) := by
    intro y hy
    have hyp : 0 < y := by linarith [hy.1]
    exact (continuousAt_const.div
      (continuousAt_id.rpow_const (Or.inl hyp.ne'))
      (Real.rpow_pos_of_pos hyp _).ne').continuousWithinAt
  rw [← lower_density_integral]
  apply intervalIntegral.integral_mono_on_of_le_Ioo (by norm_num)
    (hc.intervalIntegrable_of_Icc (by norm_num))
    (actual_transformed_density_intervalIntegrable A hA)
  intro y hy
  exact actual_transformed_density_lower hA hy.1.le hy.2

end RH16ActualXiPositiveBlock
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiPositiveBlockAttempt02/Variant9b80934cda87ea0457f0f863eb15922383d517a76ba8ff40bddb155c1e1f34c6.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a24d8406f8860416376c48539b38fbde9702e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mertensResidual_centered_abs_le_of_projection_rows

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11d99a0d-a3b3-24bb-a1d1-d84202607b99",
  "kind": "theorem",
  "lexical_name": "mertensResidual_centered_abs_le_of_projection_rows",
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
  "slug": "mertensresidual-centered-abs-le-of-projection-rows--cee59cef559f43e7e2e4f715",
  "source": {
    "blob": "e295536122f02b71ebacaf5caee52cb11df62669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 267,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cee59cef559f43e7e2e4f715c7ed7b86a896f7810f99e0caff8a2905e0e3a623",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11d99a0d-a3b3-24bb-a1d1-d84202607b99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 267–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mertensResidual_centered_abs_le_of_projection_rows
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (L : ComplexL2 →L[ℂ] ComplexL2) (hL : IsSelfAdjoint L)
    (hanchor : quadraticReadout L (originalSourceState A) = criticalContinuousMoment A)
    (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      ‖combinedProjectionRow V (mangoldtInteraction A - L) (originalSourceState A) j‖ ^ 2) ≤ B) :
    |mertensResidual A - criticalContinuousMoment A| ≤ Real.sqrt B := by
  have h := full_readout_abs_le_of_projection_rows V hV hzero (mangoldtInteraction A - L)
    ((mangoldtInteraction_selfAdjoint A).sub hL) (originalSourceState A) n hq B hB
  rw [originalSourceState_norm (by linarith : 0 < A), one_mul,
    quadraticReadout_sub, hanchor] at h
  simpa only [mertensResidual_eq_quadratic hA, quadraticReadout] using h

/-- The existing continuum bound converts the explicitly assumed centered row estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Probe/Variant94081cfac18d848c2c7c7823ad2237cddebdcf15540ade7151a10413e21fa329.lean#L267).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e295536122f02b71ebacaf5caee52cb11df62669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

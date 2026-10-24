# actualXiPrimitive_mean_weighted_readout_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48e11a5c-2ac9-ae7e-6b0e-c6a0aedb7792",
  "kind": "theorem",
  "lexical_name": "actualXiPrimitive_mean_weighted_readout_error",
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
  "slug": "actualxiprimitive-mean-weighted-readout-error--826db6ecc0141b37de91174f",
  "source": {
    "blob": "50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:826db6ecc0141b37de91174f29c739125e6191b9c3273c8548db7a8624d51d3c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e11a5c-2ac9-ae7e-6b0e-c6a0aedb7792`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXiPrimitive_mean_weighted_readout_error {T : ℝ} (hT : Real.log 7 ≤ T) :
    |(∫ t in Real.log 7..T, |actualAnchoredXiTailPrimitive t|) -
      (actualXiWeightedIntegerPrefix (Nat.floor (Real.exp T)) +
        |actualAnchoredXiTailPrimitive (Real.log (Nat.floor (Real.exp T) : ℝ))| *
          (T - Real.log (Nat.floor (Real.exp T) : ℝ)))| ≤ actualXiLogStepErrorConstant := by
  rw [← actualXiLogStep_integral_eq_prefix_fraction hT]
  exact actualXiLogStep_absolute_average_difference hT

end
end FormalResearch.RiemannHypothesis.SourceActualXiWeightedIntegerMean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiWeightedIntegerMean/Variant2b6afe58a552c03ce158303b8853ad285e66d67fe472576bf67cb8b6b48f5ba6.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50e3d4d0f14003667c2ae277d32cdc3e55f1f2e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

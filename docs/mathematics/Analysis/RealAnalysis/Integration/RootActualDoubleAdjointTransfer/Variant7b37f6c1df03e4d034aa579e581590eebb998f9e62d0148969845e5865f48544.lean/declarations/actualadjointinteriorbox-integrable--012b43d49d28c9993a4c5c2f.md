# actualAdjointInteriorBox_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7688f24e-8107-1e18-b1d6-1c196a71387b",
  "kind": "theorem",
  "lexical_name": "actualAdjointInteriorBox_integrable",
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
  "slug": "actualadjointinteriorbox-integrable--012b43d49d28c9993a4c5c2f",
  "source": {
    "blob": "64f2d596f3d20465e61005e256813fbe33a96bf9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 237,
    "line": 224,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant7b37f6c1df03e4d034aa579e581590eebb998f9e62d0148969845e5865f48544.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:012b43d49d28c9993a4c5c2f94ad30542823cb29d47e7f54399c3efabdc50785",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant7b37f6c1df03e4d034aa579e581590eebb998f9e62d0148969845e5865f48544.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7688f24e-8107-1e18-b1d6-1c196a71387b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–237.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualAdjointInteriorBox_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (fun z : ℝ × ℝ =>
      actualAdjointTimePrimitive A 0 z.1 * (actualAdjointColumnPrimitive A z.2 *
        covariantMixedDerivative (actualLogMixedDensity A) z.1 z.2))
      ((volume.restrict (Ioc (actualTimeLower A) (Real.log (sourceKernelCutoff A : ℝ)))).prod
        (volume.restrict (Ioc (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
          (actualColumnUpper A)))) := by
  obtain ⟨ht, _, hs⟩ := actual_orders hA
  exact weighted_box_integrable ht hs _ _ _
    ((time_primitive_continuousOn (offset := 0) hA).intervalIntegrable_of_Icc ht)
    ((column_primitive_continuousOn hA).intervalIntegrable_of_Icc hs)
    (covariant_continuous (by linarith))

/-- Genuine two-dimensional weighted Abel preserves the lower column trace in original W. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant7b37f6c1df03e4d034aa579e581590eebb998f9e62d0148969845e5865f48544.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RootActualDoubleAdjointTransfer/Variant7b37f6c1df03e4d034aa579e581590eebb998f9e62d0148969845e5865f48544.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f2d596f3d20465e61005e256813fbe33a96bf9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

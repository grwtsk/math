# signed_block_centering

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c407497b6a607f832537cf7881bf5c17da19ff9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 33,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4b/4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c88bc32-44f4-6cb8-1e99-e1f86c784b26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:491c7de4-2de0-5e12-71db-d7f4c9e31719",
  "kind": "theorem",
  "lexical_name": "signed_block_centering",
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
  "slug": "signed-block-centering--776ef3c1eee5b761ff1b5fbf",
  "source": {
    "blob": "4c407497b6a607f832537cf7881bf5c17da19ff9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 33,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:776ef3c1eee5b761ff1b5fbf6dd98f9f7e53ccb84d3d75527d828e80584886f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:491c7de4-2de0-5e12-71db-d7f4c9e31719`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signed_block_centering (A u v : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (huv : u ≤ v) (hv : v ≤ 2 * A) :
    -(∫ s in u..v, weightedMobiusPrimitive s * deriv (sourceLogKernel A) s) =
      -weightedMobiusPrimitive u * (sourceLogKernel A v - sourceLogKernel A u) -
        ∫ s in u..v, (weightedMobiusPrimitive s - weightedMobiusPrimitive u) *
          deriv (sourceLogKernel A) s := by
  have hG := sourceLogKernel_contDiff A (by linarith)
  have hdi : IntervalIntegrable (deriv (sourceLogKernel A)) volume u v :=
    (hG.continuous_deriv (by norm_num)).intervalIntegrable u v
  have hprod := signed_block_integrable A u v hA hu huv hv
  have hconst := hdi.const_mul (weightedMobiusPrimitive u)
  have hFTC : (∫ s in u..v, deriv (sourceLogKernel A) s) =
      sourceLogKernel A v - sourceLogKernel A u :=
    intervalIntegral.integral_deriv_eq_sub
      (fun s _ ↦ (hG.differentiable (by norm_num) s)) hdi
  have heq : (fun s ↦ (weightedMobiusPrimitive s - weightedMobiusPrimitive u) *
      deriv (sourceLogKernel A) s) =
      fun s ↦ weightedMobiusPrimitive s * deriv (sourceLogKernel A) s -
        weightedMobiusPrimitive u * deriv (sourceLogKernel A) s := by
    funext s
    ring
  rw [heq, intervalIntegral.integral_sub hprod hconst,
    intervalIntegral.integral_const_mul, hFTC]
  ring

/-- The number of logarithmic dyadic blocks needed to cover the full real source window. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4bf6254119105b7529ff6651ffec905748d26e0cda4c7b12be5c1568c41bd3e7.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c407497b6a607f832537cf7881bf5c17da19ff9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

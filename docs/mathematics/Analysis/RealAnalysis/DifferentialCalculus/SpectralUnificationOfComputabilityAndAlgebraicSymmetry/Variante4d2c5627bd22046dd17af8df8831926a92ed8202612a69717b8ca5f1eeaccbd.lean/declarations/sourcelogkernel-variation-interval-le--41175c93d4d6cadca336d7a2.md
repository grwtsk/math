# sourceLogKernel_variation_interval_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b52cebfa0909516e59465946896d99adb17ea45b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00f6eafa-5674-cb87-eb35-e47536748b85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8a4ee0d-4a88-035a-51b0-a8bf11b33503",
  "kind": "theorem",
  "lexical_name": "sourceLogKernel_variation_interval_le",
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
  "slug": "sourcelogkernel-variation-interval-le--41175c93d4d6cadca336d7a2",
  "source": {
    "blob": "b52cebfa0909516e59465946896d99adb17ea45b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:41175c93d4d6cadca336d7a239303af510443404f7e3c374593e6f2582e01c5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8a4ee0d-4a88-035a-51b0-a8bf11b33503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceLogKernel_variation_interval_le (A u v : ℝ) (hA : 1 ≤ A)
    (hu : 0 ≤ u) (huv : u ≤ v) :
    (∫ s in u..v, |deriv (sourceLogKernel A) s|) ≤
      (v - u) * (40 / A + 260 / (3 * A ^ 2)) := by
  have hc : Continuous (deriv (sourceLogKernel A)) :=
    (sourceLogKernel_contDiff A (by linarith)).continuous_deriv (by norm_num)
  have h := intervalIntegral.integral_mono_on huv (hc.abs.intervalIntegrable u v)
    (continuous_const.intervalIntegrable u v : IntervalIntegrable
      (fun _ : ℝ ↦ 40 / A + 260 / (3 * A ^ 2)) volume u v)
    (fun s hs ↦ sourceLogKernel_deriv_abs_le A s hA (hu.trans hs.1))
  simpa only [intervalIntegral.integral_const, smul_eq_mul] using h

/-- Total variation on the full source interval is bounded independently of its length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variante4d2c5627bd22046dd17af8df8831926a92ed8202612a69717b8ca5f1eeaccbd.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52cebfa0909516e59465946896d99adb17ea45b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# scaledPrimeSample_variation_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c284352f45f41ba600621b4c0b7e8948b3997da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 350,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/92/928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6571c28-9245-f68b-8468-5e5bf5b07231",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c087a865-5d23-f8c7-4f91-2ef20cfd51d7",
  "kind": "theorem",
  "lexical_name": "scaledPrimeSample_variation_le",
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
  "slug": "scaledprimesample-variation-le--01bc18d8440bac034dead957",
  "source": {
    "blob": "0c284352f45f41ba600621b4c0b7e8948b3997da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 350,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01bc18d8440bac034dead957c5467eb0a1b077b3d6da8c659de51dc6b366273b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c087a865-5d23-f8c7-4f91-2ef20cfd51d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaledPrimeSample_variation_le (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    (∫ t in Set.Ioi (1 : ℝ), |deriv (fun t : ℝ ↦ correlationPrimeSample A (q * t)) t|) ≤
      2 * (4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
        4 * Real.sqrt (325325 / 18) / A ^ 3) / Real.sqrt q := by
  let K := 4 * Real.sqrt (65 / 3) / A + 10 * (65 / (3 * A ^ 2)) +
    4 * Real.sqrt (325325 / 18) / A ^ 3
  calc
    _ ≤ ∫ t in Set.Ioi (1 : ℝ), q * (K / (q * t * Real.sqrt (q * t))) := by
      apply setIntegral_mono_on (scaledPrimeSample_derivative_integrable A q hA hq).abs
        (inverse_root_majorant_integrable q K hq) measurableSet_Ioi
      intro t ht
      rw [(scaledPrimeSample_hasDerivAt A q t hA hq (zero_lt_one.trans ht)).deriv,
        abs_mul, abs_of_pos hq]
      exact mul_le_mul_of_nonneg_left
        (primeSample_derivative_abs_le A (q * t) hA (mul_pos hq (zero_lt_one.trans ht))) hq.le
    _ = _ := inverse_root_majorant_integral q K hq

/-- Empty strict sampling at the endpoint uses no change to the cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefect/Variant928cc1657941919e8b1633ab2be10ecb10007c6338b6b82ff2d6a8b7f6ef2b7a.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c284352f45f41ba600621b4c0b7e8948b3997da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

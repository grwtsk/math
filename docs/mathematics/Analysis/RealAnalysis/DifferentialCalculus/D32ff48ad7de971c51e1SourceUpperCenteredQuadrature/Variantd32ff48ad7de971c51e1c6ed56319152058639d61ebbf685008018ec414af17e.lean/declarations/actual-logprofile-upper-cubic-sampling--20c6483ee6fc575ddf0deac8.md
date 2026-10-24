# actual_logProfile_upper_cubic_sampling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "401fa767dd75e73aa853915ac1e24e0a8841c97f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d548fd3-c9c8-243b-43ff-5b4b925ff3cc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ff5113ce-e4b8-3570-5044-917445460b03",
  "kind": "theorem",
  "lexical_name": "actual_logProfile_upper_cubic_sampling",
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
  "slug": "actual-logprofile-upper-cubic-sampling--20c6483ee6fc575ddf0deac8",
  "source": {
    "blob": "401fa767dd75e73aa853915ac1e24e0a8841c97f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20c6483ee6fc575ddf0deac8469a4a60495f11d4b493a245621f99984d2ce840",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff5113ce-e4b8-3570-5044-917445460b03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logProfile_upper_cubic_sampling {A k : ℝ} (hA : 91 ≤ A) (hk : 1 ≤ k) :
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), logProfile A k n) =
      (∫ u in Ioi (1 : ℝ), logProfile A k u) + cubicSignedUpperModelRow A k +
        cubicCenteredLogErrorRow A k := by
  have ha := centered_deriv_upper_integrable (logProfile A k)
    (logProfile_contDiff (by linarith : 0 < A) k)
    (logProfile_hasCompactSupport (by linarith : 0 < A) k)
  have hm := cubic_signed_upper_model_row_integrable hA (by linarith : 0 < k)
  have hd : cubicCenteredLogErrorRow A k =
      (∫ u in Ioi (1 : ℝ), centeredSawtooth u * deriv (logProfile A k) u) -
        cubicSignedUpperModelRow A k := by
    unfold cubicCenteredLogErrorRow cubicSignedUpperModelRow
    simp_rw [mul_sub]
    rw [integral_sub ha hm]
  have hq := actual_logProfile_upper_centered_quadrature (by linarith : 1 ≤ A) hk
  linarith only [hd, hq]

/-- Full actual short divisor sampling identity with the signed error summed before estimation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/D32ff48ad7de971c51e1SourceUpperCenteredQuadrature/Variantd32ff48ad7de971c51e1c6ed56319152058639d61ebbf685008018ec414af17e.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `401fa767dd75e73aa853915ac1e24e0a8841c97f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

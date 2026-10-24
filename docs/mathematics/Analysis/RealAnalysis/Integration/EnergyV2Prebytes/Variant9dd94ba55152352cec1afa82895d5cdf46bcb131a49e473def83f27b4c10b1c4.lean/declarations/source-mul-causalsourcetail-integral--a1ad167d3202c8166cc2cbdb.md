# source_mul_causalSourceTail_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "142dc6f38a7ae6fd5c86a268d46774be6462971b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faf008c0-6659-0d91-5709-299477d86786",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:041e19b8-eea3-2cdf-e047-42f02f680482",
  "kind": "theorem",
  "lexical_name": "source_mul_causalSourceTail_integral",
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
  "slug": "source-mul-causalsourcetail-integral--a1ad167d3202c8166cc2cbdb",
  "source": {
    "blob": "142dc6f38a7ae6fd5c86a268d46774be6462971b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 435,
    "line": 417,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1ad167d3202c8166cc2cbdb4cdfd30fae19c81745aa4e6f0ad6ec8cf426e50a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:041e19b8-eea3-2cdf-e047-42f02f680482`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–435.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_mul_causalSourceTail_integral {A : ℝ} (hA : 0 < A) :
    (∫ x : ℝ, normalizedTest explicitSecondDerivative A x * causalSourceTail A x) =
      (1 / 2 : ℝ) * ∫ x : ℝ, causalSourceTail A x ^ 2 := by
  have hm : Integrable (fun x ↦ deriv (causalSourceTail A) x * causalSourceTail A x) :=
    ((causalSourceTail_contDiff hA).continuous_deriv_one.mul
      (causalSourceTail_contDiff hA).continuous).integrable_of_hasCompactSupport
        (causalSourceTail_hasCompactSupport hA).deriv.mul_right
  have heq : (fun x ↦ normalizedTest explicitSecondDerivative A x * causalSourceTail A x) =
      fun x ↦ causalSourceTail A x ^ 2 / 2 -
        deriv (causalSourceTail A) x * causalSourceTail A x := by
    funext x
    rw [causalSourceTail_deriv hA x]
    ring
  rw [heq, integral_sub ((causalSourceTail_square_integrable hA).div_const 2) hm,
    compact_mixed_integral_zero (causalSourceTail_contDiff hA)
      (causalSourceTail_hasCompactSupport hA), integral_div]
  ring

/-- A raw pole polynomial is nonzero outside the true unit source interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EnergyV2Prebytes/Variant9dd94ba55152352cec1afa82895d5cdf46bcb131a49e473def83f27b4c10b1c4.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `142dc6f38a7ae6fd5c86a268d46774be6462971b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

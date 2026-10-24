# Complex.integral_exp_neg_mul_rpow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9efe7cfdd35b4469bd9cf2621563190c5a662337",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:74020fe4-4a00-a724-2f91-4a5529fa5f7a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7759a2e7-e4e0-32fd-89d5-8a1baab02b6e",
  "kind": "theorem",
  "lexical_name": "Complex.integral_exp_neg_mul_rpow",
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
  "slug": "complex-integral-exp-neg-mul-rpow--ab85ff9181ec6d12135656af",
  "source": {
    "blob": "9efe7cfdd35b4469bd9cf2621563190c5a662337",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 134,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab85ff9181ec6d12135656afa27ec649d844b507e444c390e7bcceb340c6e6d5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7759a2e7-e4e0-32fd-89d5-8a1baab02b6e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Complex.integral_exp_neg_mul_rpow {p b : ℝ} (hp : 1 ≤ p) (hb : 0 < b) :
    ∫ x : ℂ, rexp (- b * ‖x‖ ^ p) = π * b ^ (-2 / p) * Real.Gamma (2 / p + 1) := by
  convert (integral_rpow_mul_exp_neg_mul_rpow hp (by linarith : (-2 : ℝ) < 0)) hb using 1
  · simp_rw [rpow_zero, one_mul]
  · rw [zero_add, Real.Gamma_add_one (div_ne_zero two_ne_zero (by linarith))]
    ring

end complex
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Gamma/Variantcf47b38a2dcea1efeef9a69bfa0b5e98b80435bfdaa78a1d0e326c37bb9ceada.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9efe7cfdd35b4469bd9cf2621563190c5a662337` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

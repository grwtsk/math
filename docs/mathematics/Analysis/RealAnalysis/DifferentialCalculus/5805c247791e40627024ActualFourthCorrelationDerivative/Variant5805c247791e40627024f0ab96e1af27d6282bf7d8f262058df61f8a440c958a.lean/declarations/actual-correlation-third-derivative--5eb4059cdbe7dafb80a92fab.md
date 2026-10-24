# actual_correlation_third_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45277d23d54d7018eff4b47dabb52a01200b9305",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/58/5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4ea55000-2db5-936d-2aa0-8801a9f7fa89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28045b8b-73bc-0318-f27b-ef9e0a475c2c",
  "kind": "theorem",
  "lexical_name": "actual_correlation_third_derivative",
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
  "slug": "actual-correlation-third-derivative--5eb4059cdbe7dafb80a92fab",
  "source": {
    "blob": "45277d23d54d7018eff4b47dabb52a01200b9305",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eb4059cdbe7dafb80a92fabceda541ab13b772edd646ba257a4f6029d8fbff1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28045b8b-73bc-0318-f27b-ef9e0a475c2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_correlation_third_derivative (A : ℝ) (hA : 0 < A) (t : ℝ) :
    HasDerivAt (deriv (deriv (sourceCorrelation explicitSecondDerivative A)))
      (∫ x : ℝ, actualSecondProfile A x *
        deriv (normalizedTest explicitSecondDerivative A) (x + t)) t := by
  let f := deriv (normalizedTest explicitSecondDerivative A)
  have hd := (actual_translate_product_hasDerivAt A hA f
    (normalizedTest_deriv_integrable hA) t).neg
  have he : (∫ x : ℝ, f x * actualSecondProfile A (x - t)) =
      ∫ x : ℝ, actualSecondProfile A x * f (x + t) := by
    have hs := integral_sub_right_eq_self (μ := volume)
      (fun x : ℝ => actualSecondProfile A x * f (x + t)) t
    simpa only [sub_add_cancel, mul_comm] using hs
  have hf : deriv (deriv (sourceCorrelation explicitSecondDerivative A)) =
      fun s => -(∫ x : ℝ, f x * f (x - s)) :=
    funext fun s => sourceCorrelation_second_deriv_eq_integral hA s
  rw [hf]
  simpa only [Pi.neg_apply, neg_neg, he, f] using! hd

/-- Two differentiated factors identify the fourth derivative with the actual L2 profile. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/5805c247791e40627024ActualFourthCorrelationDerivative/Variant5805c247791e40627024f0ab96e1af27d6282bf7d8f262058df61f8a440c958a.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45277d23d54d7018eff4b47dabb52a01200b9305` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

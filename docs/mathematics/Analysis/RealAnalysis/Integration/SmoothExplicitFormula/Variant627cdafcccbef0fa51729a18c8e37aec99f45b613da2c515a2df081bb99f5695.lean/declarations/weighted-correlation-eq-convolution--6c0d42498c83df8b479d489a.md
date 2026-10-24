# weighted_correlation_eq_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f092d2a08e049e55de14dc1053b4bccde602832b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1c4d156-dfe7-75d3-d771-dfb7e881dd86",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:601138b1-79b5-28b5-3d68-f21cee02c41f",
  "kind": "theorem",
  "lexical_name": "weighted_correlation_eq_convolution",
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
  "slug": "weighted-correlation-eq-convolution--6c0d42498c83df8b479d489a",
  "source": {
    "blob": "f092d2a08e049e55de14dc1053b4bccde602832b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 237,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c0d42498c83df8b479d489aa8b310f0a7a2779be65a03397172be48828e52aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:601138b1-79b5-28b5-3d68-f21cee02c41f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_correlation_eq_convolution (f : ℝ → ℝ) (he : Function.Even f)
    (z : ℂ) (t : ℝ) :
    (correlation f t : ℂ) * Complex.exp (z * (t : ℂ)) =
      ((fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ))) ⋆[
        ContinuousLinearMap.mul ℂ ℂ, volume]
        (fun x : ℝ ↦ (f x : ℂ) * Complex.exp (z * (x : ℂ)))) t := by
  rw [correlation, ← integral_complex_ofReal, ← integral_mul_const, convolution_mul]
  apply integral_congr_ae
  exact Filter.Eventually.of_forall fun x ↦ by
    dsimp only
    rw [← neg_sub t x, he]
    push_cast
    have hexp : Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ))) =
        Complex.exp (z * (t : ℂ)) := by
      rw [← Complex.exp_add]
      congr 1
      ring
    calc
      _ = (f x : ℂ) * (f (t - x) : ℂ) *
          (Complex.exp (z * (x : ℂ)) * Complex.exp (z * ((t : ℂ) - (x : ℂ)))) := by
        rw [hexp]
      _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothExplicitFormula/Variant627cdafcccbef0fa51729a18c8e37aec99f45b613da2c515a2df081bb99f5695.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f092d2a08e049e55de14dc1053b4bccde602832b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

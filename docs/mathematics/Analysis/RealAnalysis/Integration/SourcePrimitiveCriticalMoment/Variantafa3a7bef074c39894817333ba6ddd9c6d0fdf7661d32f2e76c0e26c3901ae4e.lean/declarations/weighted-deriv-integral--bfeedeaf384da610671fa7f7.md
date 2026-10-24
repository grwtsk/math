# weighted_deriv_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d763d17f5e3f8c6f2fd0993130c15173ec3b55a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 31,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/afa3a7bef074c39894817333ba6ddd9c6d0fdf7661d32f2e76c0e26c3901ae4e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d73c01c-fd51-a751-5f82-e8154fea5314",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce63e673-cc67-6c8b-21c7-d4b77069d8d2",
  "kind": "theorem",
  "lexical_name": "weighted_deriv_integral",
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
  "slug": "weighted-deriv-integral--bfeedeaf384da610671fa7f7",
  "source": {
    "blob": "2d763d17f5e3f8c6f2fd0993130c15173ec3b55a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variantafa3a7bef074c39894817333ba6ddd9c6d0fdf7661d32f2e76c0e26c3901ae4e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bfeedeaf384da610671fa7f7095673d24799c3b012441654b78be8433bd98e19",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variantafa3a7bef074c39894817333ba6ddd9c6d0fdf7661d32f2e76c0e26c3901ae4e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce63e673-cc67-6c8b-21c7-d4b77069d8d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_deriv_integral {b : ℝ → ℝ} (hb : ContDiff ℝ 1 b)
    (hs : HasCompactSupport b) (σ : ℝ) :
    (∫ x : ℝ, Real.exp (σ * x) * deriv b x) =
      -σ * ∫ x : ℝ, Real.exp (σ * x) * b x := by
  have h0 := weighted_compact_integrable hb.continuous hs σ
  have h1 := weighted_compact_integrable hb.continuous_deriv_one hs.deriv σ
  have h := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := fun x : ℝ => Real.exp (σ * x)) (u' := fun x => σ * Real.exp (σ * x))
    (v := b) (v' := deriv b)
    (fun x _ => by
      simpa only [mul_comm] using ((hasDerivAt_id x).const_mul σ).exp)
    (fun x _ => (hb.differentiable (by norm_num) x).hasDerivAt)
    h1 (by simpa only [Pi.mul_apply, mul_assoc] using h0.const_mul σ) h0
  simpa only [← mul_assoc, integral_const_mul, neg_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variantafa3a7bef074c39894817333ba6ddd9c6d0fdf7661d32f2e76c0e26c3901ae4e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourcePrimitiveCriticalMoment/Variantafa3a7bef074c39894817333ba6ddd9c6d0fdf7661d32f2e76c0e26c3901ae4e.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d763d17f5e3f8c6f2fd0993130c15173ec3b55a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

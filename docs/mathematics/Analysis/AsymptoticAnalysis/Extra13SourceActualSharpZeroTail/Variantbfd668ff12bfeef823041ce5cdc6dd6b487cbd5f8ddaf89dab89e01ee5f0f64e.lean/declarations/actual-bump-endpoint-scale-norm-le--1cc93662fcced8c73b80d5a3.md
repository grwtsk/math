# actual_bump_endpoint_scale_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53c2e205-0a19-d2a8-1f86-3af2faedf7ff",
  "kind": "theorem",
  "lexical_name": "actual_bump_endpoint_scale_norm_le",
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
  "slug": "actual-bump-endpoint-scale-norm-le--1cc93662fcced8c73b80d5a3",
  "source": {
    "blob": "882b46fb9ca6a2abfb7f3762d63a5c0c1ebee114",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cc93662fcced8c73b80d5a3defbab25e868017df942640cfb895f300d6d64cf",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53c2e205-0a19-d2a8-1f86-3af2faedf7ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_bump_endpoint_scale_norm_le (z : ℂ) {v : ℝ}
    (hv : 0 < v) (hz : v ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤
      (Real.exp z.re + Real.exp (-z.re)) * endpointScale v / ‖z‖ ^ 5 := by
  have hn : 0 < ‖z‖ := hv.trans_le hz
  have h := actual_bump_complete_endpoint_norm_le z (norm_pos_iff.mp hn)
  have he :
      384 * (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) / ‖z‖ ^ 9 =
      (Real.exp z.re + Real.exp (-z.re)) * endpointScale ‖z‖ / ‖z‖ ^ 5 := by
    unfold endpointScale
    field_simp
  rw [he] at h
  apply h.trans
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact mul_le_mul_of_nonneg_left (endpointScale_antitone hv hz) (by positivity)

/-- Reflection keeps the complete exponential pair, rather than two upper endpoints. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Extra13SourceActualSharpZeroTail/Variantbfd668ff12bfeef823041ce5cdc6dd6b487cbd5f8ddaf89dab89e01ee5f0f64e.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `882b46fb9ca6a2abfb7f3762d63a5c0c1ebee114` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# unweighted_fourier_majorant

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7584f5cba5db593e20780293320c9c3bf685dbd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9017be5-4dfc-1f70-903c-47f10739f18b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b374d2cb-3d7c-70e9-5f94-845831476f6d",
  "kind": "theorem",
  "lexical_name": "unweighted_fourier_majorant",
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
  "slug": "unweighted-fourier-majorant--6adf8ecfe33b4d8c5a8f835a",
  "source": {
    "blob": "7584f5cba5db593e20780293320c9c3bf685dbd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6adf8ecfe33b4d8c5a8f835aacf0b76b1824cc4040675a62ce65a5df1e09076b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b374d2cb-3d7c-70e9-5f94-845831476f6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unweighted_fourier_majorant (ξ n b d : ℝ) (hn : 0 ≤ n) (hnb : n ≤ b)
    (hnd : |ξ| * n ≤ d) :
    n ^ 2 ≤ (b ^ 2 + d ^ 2) * (1 + ξ ^ 2)⁻¹ := by
  rw [← div_eq_mul_inv]
  apply (le_div_iff₀ (by positivity : 0 < 1 + ξ ^ 2)).2
  have hb : 0 ≤ b := hn.trans hnb
  have hd : 0 ≤ d := (mul_nonneg (abs_nonneg ξ) hn).trans hnd
  have hb2 := (sq_le_sq₀ hn hb).2 hnb
  have hd2 := (sq_le_sq₀ (mul_nonneg (abs_nonneg ξ) hn) hd).2 hnd
  simp only [mul_pow, sq_abs] at hd2
  nlinarith

/-- Combine the source logarithmic majorant with the required unweighted part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroLogarithmicCoreProbe/Variant2e2403db0a2a4a6af65bb190e4c3ef51120803962af4cc36def1739f4d060d7b.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7584f5cba5db593e20780293320c9c3bf685dbd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

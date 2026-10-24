# norm_HwC_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d09d8c21-4b73-0629-43c7-c07209b7f9e5",
  "kind": "theorem",
  "lexical_name": "norm_HwC_le",
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
  "slug": "norm-hwc-le--b4af38c60570844d7ca6ef34",
  "source": {
    "blob": "5994379f36207f5dde75c32a242c74443f519d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 144,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4af38c60570844d7ca6ef3470d45529cb8d50eac21f6c471688eb06603ac1da",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d09d8c21-4b73-0629-43c7-c07209b7f9e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_HwC_le {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) : ∃ C : ℝ, 0 ≤ C ∧ ∀ t : ℝ, ‖HwC c k t‖ ≤ C / (1 + t ^ 2) := by
  obtain ⟨C, hC0, hC⟩ := norm_Hfn_le hk hkc
  refine ⟨2 * C, by positivity, fun t => ?_⟩
  have h1 := hC c t (by linarith) (by linarith)
  have h2 := hC (1 - c) (-t) (by linarith) (by linarith)
  have e2 : (((1 - c : ℝ) : ℂ) + ((-t:ℝ):ℂ) * I) = 1 - (c:ℂ) - t * I := by push_cast; ring
  rw [e2] at h2
  have e3 : (1:ℝ) + (-t) ^ 2 = 1 + t ^ 2 := by ring
  rw [e3] at h2
  calc ‖HwC c k t‖ ≤ ‖Hfn k ((c:ℂ) + t * I)‖ + ‖Hfn k (1 - c - t * I)‖ := norm_add_le _ _
    _ ≤ C / (1 + t ^ 2) + C / (1 + t ^ 2) := add_le_add h1 h2
    _ = 2 * C / (1 + t ^ 2) := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5994379f36207f5dde75c32a242c74443f519d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

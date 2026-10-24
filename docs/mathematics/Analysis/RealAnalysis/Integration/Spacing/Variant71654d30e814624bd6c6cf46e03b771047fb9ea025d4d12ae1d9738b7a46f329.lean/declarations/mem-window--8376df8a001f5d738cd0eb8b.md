# mem_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:29a9ef30-b99c-8dcc-2d39-fb3746148c01",
  "kind": "lemma",
  "lexical_name": "mem_window",
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
  "slug": "mem-window--8376df8a001f5d738cd0eb8b",
  "source": {
    "blob": "5a2dfb3fad088726b01abcb82c2ac6476be54467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 161,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8376df8a001f5d738cd0eb8b89e66c83d2ea19bd382edd39a1305aff5d1d730f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:29a9ef30-b99c-8dcc-2d39-fb3746148c01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma mem_window (h : Adm freq δ) {s t : ι} (hts : t ≠ s) {R : ℝ}
    (hR : 3 / 2 * |freq s - freq t| ≤ R) {u : ℝ}
    (hu : u ∈ Adm.itv (freq := freq) (δ := δ) t) : u ∈ window freq δ s R := by
  have hb := h.abs_le_of_mem_itv hts hu
  have h1 : |u - freq s| ≤ R := by
    rw [abs_sub_comm]; exact hb.1.trans hR
  rcases le_total u (freq s) with hle | hle
  · left
    rw [abs_of_nonpos (by linarith : u - freq s ≤ 0)] at h1
    rw [abs_of_nonpos (by linarith : u - freq s ≤ 0)] at hb
    exact ⟨by linarith, by linarith [hb.2]⟩
  · right
    rw [abs_of_nonneg (by linarith : 0 ≤ u - freq s)] at h1
    rw [abs_of_nonneg (by linarith : 0 ≤ u - freq s)] at hb
    exact ⟨by linarith [hb.2], by linarith⟩

omit [Fintype ι] [DecidableEq ι] in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2dfb3fad088726b01abcb82c2ac6476be54467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mem_window

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1dc640c83577c69f29c1e55e9581e5e13a2c40a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 153,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ea45340f-2a3c-6b60-2fb3-84fea14934e5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2902632e-a4bf-c5ae-6107-ef3a57fce1b9",
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
  "slug": "mem-window--edb023957c6b26a31a9b0bd7",
  "source": {
    "blob": "d1dc640c83577c69f29c1e55e9581e5e13a2c40a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 153,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edb023957c6b26a31a9b0bd7557c5424ba68862170c4b15e72eab707f8d5bf6b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2902632e-a4bf-c5ae-6107-ef3a57fce1b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–169.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant2a5ef294bdf97c606bdb01d60d90425b0580dbca8d0a7b6cf4f5c5bfb9858626.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1dc640c83577c69f29c1e55e9581e5e13a2c40a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

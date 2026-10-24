# fderivWithin_fderivWithin_eq_of_mem_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8efcc2b74466cfd3603f72cf3d5216b86825713e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 103,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f9db2cd-d985-1823-5cfa-368c945488a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:be69b174-5c48-c4f2-40fc-2360a8f4e456",
  "kind": "lemma",
  "lexical_name": "fderivWithin_fderivWithin_eq_of_mem_nhdsWithin",
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
  "slug": "fderivwithin-fderivwithin-eq-of-mem-nhdswithin--858261eed49c82c714a9f158",
  "source": {
    "blob": "8efcc2b74466cfd3603f72cf3d5216b86825713e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:858261eed49c82c714a9f158ae67e7b00bb917ceb8ce39994cb1f9857217ea5c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:be69b174-5c48-c4f2-40fc-2360a8f4e456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fderivWithin_fderivWithin_eq_of_mem_nhdsWithin (h : t ∈ 𝓝[s] x)
    (hf : ContDiffWithinAt 𝕜 2 f t x) (hs : UniqueDiffOn 𝕜 s) (ht : UniqueDiffOn 𝕜 t) (hx : x ∈ s) :
    fderivWithin 𝕜 (fderivWithin 𝕜 f s) s x = fderivWithin 𝕜 (fderivWithin 𝕜 f t) t x := by
  have A : ∀ᶠ y in 𝓝[s] x, fderivWithin 𝕜 f s y = fderivWithin 𝕜 f t y := by
    have : ∀ᶠ y in 𝓝[s] x, ContDiffWithinAt 𝕜 2 f t y :=
      nhdsWithin_le_iff.2 h (nhdsWithin_mono _ (subset_insert x t) (hf.eventually (by simp)))
    filter_upwards [self_mem_nhdsWithin, this, eventually_eventually_nhdsWithin.2 h]
      with y hy h'y h''y
    exact fderivWithin_of_mem_nhdsWithin h''y (hs y hy) (h'y.differentiableWithinAt two_ne_zero)
  have : fderivWithin 𝕜 (fderivWithin 𝕜 f s) s x = fderivWithin 𝕜 (fderivWithin 𝕜 f t) s x := by
    apply Filter.EventuallyEq.fderivWithin_eq A
    exact fderivWithin_of_mem_nhdsWithin h (hs x hx) (hf.differentiableWithinAt two_ne_zero)
  rw [this]
  apply fderivWithin_of_mem_nhdsWithin h (hs x hx)
  exact (hf.fderivWithin_right (m := 1) ht le_rfl
    (mem_of_mem_nhdsWithin hx h)).differentiableWithinAt one_ne_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efcc2b74466cfd3603f72cf3d5216b86825713e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

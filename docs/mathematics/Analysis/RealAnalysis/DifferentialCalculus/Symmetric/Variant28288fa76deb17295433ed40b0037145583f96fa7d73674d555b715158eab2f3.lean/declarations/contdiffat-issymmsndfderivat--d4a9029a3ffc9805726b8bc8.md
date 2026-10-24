# ContDiffAt.isSymmSndFDerivAt

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
      "line": 534,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7edc807d-abcc-79a7-9cac-902329490eec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53f78823-b973-e8b2-daf8-01cdd0aab23e",
  "kind": "theorem",
  "lexical_name": "ContDiffAt.isSymmSndFDerivAt",
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
  "slug": "contdiffat-issymmsndfderivat--d4a9029a3ffc9805726b8bc8",
  "source": {
    "blob": "8efcc2b74466cfd3603f72cf3d5216b86825713e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 534,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d4a9029a3ffc9805726b8bc84d02ebe86a8c36768bf79a8398c4baa2887de601",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53f78823-b973-e8b2-daf8-01cdd0aab23e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContDiffAt.isSymmSndFDerivAt {n : ℕ∞ω}
    (hf : ContDiffAt 𝕜 n f x) (hn : minSmoothness 𝕜 2 ≤ n) : IsSymmSndFDerivAt 𝕜 f x := by
  by_cases h : IsRCLikeNormedField 𝕜
  -- First deal with the `ℝ` or `ℂ` case, where `C^2` is enough.
  · intro v w
    apply second_derivative_symmetric_of_eventually (f := f) (f' := fderiv 𝕜 f) (x := x)
    · obtain ⟨u, hu, h'u⟩ : ∃ u ∈ 𝓝 x, ContDiffOn 𝕜 2 f u :=
        (hf.of_le hn).contDiffOn (m := 2) le_minSmoothness (by simp)
      rcases mem_nhds_iff.1 hu with ⟨v, vu, v_open, xv⟩
      filter_upwards [v_open.mem_nhds xv] with y hy
      have : DifferentiableAt 𝕜 f y := by
        have := (h'u.mono vu y hy).contDiffAt (v_open.mem_nhds hy)
        exact this.differentiableAt two_ne_zero
      exact DifferentiableAt.hasFDerivAt this
    · have : DifferentiableAt 𝕜 (fderiv 𝕜 f) x := by
        apply ContDiffAt.differentiableAt _ one_ne_zero
        exact hf.fderiv_right (le_minSmoothness.trans hn)
      exact DifferentiableAt.hasFDerivAt this
  -- then deal with the case of an arbitrary field, with analytic functions.
  · simp only [minSmoothness, h, ↓reduceIte, top_le_iff] at hn
    apply ContDiffAt.isSymmSndFDerivAt_of_omega
    simpa [hn] using hf

/-- If a function is `C^2` within a set at a point, and accumulated by points in the interior
of the set, then its second derivative there is symmetric. Over a field
different from `ℝ` or `ℂ`, we should require that the function is analytic. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Symmetric/Variant28288fa76deb17295433ed40b0037145583f96fa7d73674d555b715158eab2f3.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8efcc2b74466cfd3603f72cf3d5216b86825713e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

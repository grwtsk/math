# no_vanishing_relative_defect_for_sections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6e295b838731e28904f58a8f0ab73ff09b87b8b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 37,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0743bef-1627-3bd8-6d73-e4f56e5962f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:04c23502-dc7d-4f4f-d55a-a95f911c455e",
  "kind": "theorem",
  "lexical_name": "no_vanishing_relative_defect_for_sections",
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
  "slug": "no-vanishing-relative-defect-for-sections--651b5bd7b270f285a784326f",
  "source": {
    "blob": "b6e295b838731e28904f58a8f0ab73ff09b87b8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 37,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:651b5bd7b270f285a784326f65e0a2fd98dfd7ae51a25a80f0e0362a2cbb5d4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04c23502-dc7d-4f4f-d55a-a95f911c455e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_vanishing_relative_defect_for_sections
    (d : ℕ → ℕ) (L G : ∀ n, Matrix (Fin (d n)) (Fin (d n)) ℂ)
    (hG : ∀ n, (G n).PosDef)
    (hcover : ∀ n, 4 ≤ n → ∀ z : ℂ, XiReconstruction.spectralSection n z = 0 →
      ∃ v : Fin (d n) → ℂ, v ≠ 0 ∧ L n *ᵥ v = z • v)
    (ε : ℕ → ℝ) (hε : Tendsto ε atTop (𝓝 0)) :
    ¬ ∀ᶠ n in atTop, ∀ v : Fin (d n) → ℂ,
      ‖star v ⬝ᵥ ((G n * L n - (L n)ᴴ * G n) *ᵥ v)‖ ≤
        2 * ε n * (star v ⬝ᵥ (G n *ᵥ v)).re := by
  intro h
  have hsq : Tendsto (fun n => ε n ^ 2) atTop (𝓝 0) := by
    simpa using hε.pow 2
  apply XiSectionObstruction.spectralSection_no_vanishing_strip (fun n => ε n ^ 2) hsq
  filter_upwards [h, eventually_ge_atTop 4] with n hn hn4
  intro z hz
  obtain ⟨v, hv, heig⟩ := hcover n hn4 z hz
  have hb := eigenvalue_im_le_of_relative_defect (L n) (G n) (hG n)
    v hv z heig (ε n) (hn v)
  have heps : 0 ≤ ε n := (abs_nonneg _).trans hb
  simpa only [sq_abs] using (sq_le_sq₀ (abs_nonneg z.im) heps).mpr hb

end
end FormalResearch.RiemannHypothesis.XiMetricDefect
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6MetricDefect/Variant5f3ce16676e6af50de02bca696994ed9ab992cdb32b3157ead0276e61eaaf0c6.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e295b838731e28904f58a8f0ab73ff09b87b8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

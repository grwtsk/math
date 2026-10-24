# no_vanishing_relative_defect_for_sections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:51b7ba61-d751-e503-0aab-e3a3f31787cd",
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
  "slug": "no-vanishing-relative-defect-for-sections--ba2e61ec26913a33db379969",
  "source": {
    "blob": "a939af2707cdd879f4660e08ba5ff26d83fc970c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 61,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba2e61ec26913a33db37996987923c39e6ff65b720346a89b4153ecba76b5c23",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51b7ba61-d751-e503-0aab-e3a3f31787cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–83.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/XiMetricDefect/Variant4077dc3371bef65da9a8b703ce1aaa82ba57a801be765609fcd56b8e36893cdd.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a939af2707cdd879f4660e08ba5ff26d83fc970c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

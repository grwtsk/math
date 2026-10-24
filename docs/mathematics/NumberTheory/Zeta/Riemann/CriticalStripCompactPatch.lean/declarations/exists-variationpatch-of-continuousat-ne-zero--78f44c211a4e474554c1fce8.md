# exists_variationPatch_of_continuousAt_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8bbd3e2f-8b47-e78f-4f27-4ce1877ec687",
  "kind": "theorem",
  "lexical_name": "exists_variationPatch_of_continuousAt_ne_zero",
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
  "slug": "exists-variationpatch-of-continuousat-ne-zero--78f44c211a4e474554c1fce8",
  "source": {
    "blob": "c83a5a5fb282e3ee21a498b7b43153cc618e2432",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78f44c211a4e474554c1fce865f3f5b398cf9cd8febe80ff86f5ec8b4f54b60d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8bbd3e2f-8b47-e78f-4f27-4ce1877ec687`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_variationPatch_of_continuousAt_ne_zero {F : ℂ → ℂ} {c : ℂ}
    (hcont : ContinuousAt F c) (hne : F c ≠ 0) :
    ∃ r : ℝ, 0 < r ∧ Nonempty (SampleVariationPatch F (Metric.ball c r)) := by
  have hnorm : 0 < ‖F c‖ := norm_pos_iff.mpr hne
  obtain ⟨r, hr, hvar⟩ :=
    Metric.continuousAt_iff.mp hcont (‖F c‖ / 2) (by positivity)
  refine ⟨r, hr, ⟨?_⟩⟩
  refine { center := c, lower := ‖F c‖, error := ‖F c‖ / 2,
    error_nonneg := by positivity, sample_lower := le_rfl,
    variation := ?_, strict_margin := by linarith }
  intro z hz
  have hv := hvar (show dist z c < r from hz)
  simpa only [dist_eq_norm] using hv.le

/-- A compact target with independently established nonvanishing has a finite patch
cover. Classical choice here is not a computable or certified enumeration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCompactPatch.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c83a5a5fb282e3ee21a498b7b43153cc618e2432` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

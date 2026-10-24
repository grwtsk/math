# region_coverage_of_limits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8292d6c-f56e-7d9b-2cd3-f5d254ae07f4",
  "kind": "theorem",
  "lexical_name": "region_coverage_of_limits",
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
  "slug": "region-coverage-of-limits--46a2036d60e745ba11065073",
  "source": {
    "blob": "db09836ce6a072dbda91a379961acd0b6eb8f6ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 162,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a2036d60e745ba11065073cec434b244ba5771fd0926caf8ee3338f22149c8",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8292d6c-f56e-7d9b-2cd3-f5d254ae07f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem region_coverage_of_limits (H epsilon : ℕ → ℝ)
    (hheight : Tendsto H atTop atTop) (hwidth : Tendsto epsilon atTop (𝓝 0))
    (delta gamma : ℝ) (hdelta : delta ≠ 0) :
    ∃ j, |gamma| ≤ H j ∧ epsilon j ≤ |delta| := by
  have hpos : 0 < |delta| := abs_pos.mpr hdelta
  have hH : ∀ᶠ j in atTop, |gamma| ≤ H j :=
    (tendsto_atTop.1 hheight) |gamma|
  have he : ∀ᶠ j in atTop, epsilon j < |delta| :=
    hwidth.eventually (eventually_lt_nhds hpos)
  obtain ⟨j, hjH, hje⟩ := (hH.and he).exists
  exact ⟨j, hjH, hje.le⟩

/-- An actual certificate at every exhausting region excludes every nonzero
displacement. The certificates and summability remain explicit premises. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variante68270d7c4ceebcf218e9c1b43e1ac543515492451c694641cf138996eb20b52.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db09836ce6a072dbda91a379961acd0b6eb8f6ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

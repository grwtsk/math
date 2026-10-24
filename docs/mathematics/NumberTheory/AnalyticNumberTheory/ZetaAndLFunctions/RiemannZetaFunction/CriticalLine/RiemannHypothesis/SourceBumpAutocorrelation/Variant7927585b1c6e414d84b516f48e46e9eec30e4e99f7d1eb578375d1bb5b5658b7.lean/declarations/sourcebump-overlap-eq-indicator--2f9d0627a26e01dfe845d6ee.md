# sourceBump_overlap_eq_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf82bec5-38b0-cd26-570f-1e74029fad6f",
  "kind": "theorem",
  "lexical_name": "sourceBump_overlap_eq_indicator",
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
  "slug": "sourcebump-overlap-eq-indicator--2f9d0627a26e01dfe845d6ee",
  "source": {
    "blob": "faad474718c8fef8dbffa53ef3bd196f12b71022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f9d0627a26e01dfe845d6eee7e704cf630f7c6cf24a46d4c45383074125375c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf82bec5-38b0-cd26-570f-1e74029fad6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceBump_overlap_eq_indicator {u : ℝ} (hu0 : 0 ≤ u) :
    (fun x : ℝ => SourcePairing.sourceBump x * SourcePairing.sourceBump (x-u)) =
      (Icc (u-1) 1).indicator (fun x => unitBump x * unitBump (x-u)) := by
  funext x
  have hs : x ∈ Icc (-1 : ℝ) 1 ∧ x-u ∈ Icc (-1 : ℝ) 1 ↔
      x ∈ Icc (u-1) 1 := by
    simp only [mem_Icc]
    constructor
    · rintro ⟨⟨hx0, hx1⟩, ⟨hy0, hy1⟩⟩
      exact ⟨by linarith, hx1⟩
    · rintro ⟨hx0, hx1⟩
      exact ⟨⟨by linarith, hx1⟩, ⟨by linarith, by linarith⟩⟩
  by_cases hx : x ∈ Icc (-1 : ℝ) 1
  · by_cases hy : x-u ∈ Icc (-1 : ℝ) 1
    · have h := hs.mp ⟨hx, hy⟩
      simp [SourcePairing.sourceBump, hx, hy, h, unitBump]
    · have h : x ∉ Icc (u-1) 1 := fun h => hy (hs.mpr h).2
      simp [SourcePairing.sourceBump, hx, hy, h]
  · have h : x ∉ Icc (u-1) 1 := fun h => hx (hs.mpr h).1
    simp [SourcePairing.sourceBump, hx, h]

/-- The half-support formula is the actual bilateral source-bump autocorrelation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBumpAutocorrelation/Variant7927585b1c6e414d84b516f48e46e9eec30e4e99f7d1eb578375d1bb5b5658b7.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faad474718c8fef8dbffa53ef3bd196f12b71022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

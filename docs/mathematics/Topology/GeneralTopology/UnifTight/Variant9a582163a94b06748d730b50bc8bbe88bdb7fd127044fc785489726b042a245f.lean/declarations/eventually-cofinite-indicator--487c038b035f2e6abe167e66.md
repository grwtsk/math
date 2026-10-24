# eventually_cofinite_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddae4799-2b83-2834-1820-f6351a658cde",
  "kind": "theorem",
  "lexical_name": "eventually_cofinite_indicator",
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
  "slug": "eventually-cofinite-indicator--487c038b035f2e6abe167e66",
  "source": {
    "blob": "63f5460d75b2a4e2baeac46be448669d0152e91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 97,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487c038b035f2e6abe167e6625db47f0f7d07c0f74b981f4eb057c984262c826",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddae4799-2b83-2834-1820-f6351a658cde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_cofinite_indicator (hf : UnifTight f p μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∀ᶠ s in μ.cofinite.smallSets,
      MeasurableSet s → ∀ i, eLpNorm (s.indicator (f i)) p μ ≤ ε := by
  rcases eq_top_or_lt_top ε with rfl | h'ε
  · simp
  rcases hf ε hε.bot_lt with ⟨s, hμs, hfs⟩
  refine eventually_smallSets.2 ⟨sᶜ, ?_, fun t hts htm i ↦ ?_⟩
  · rwa [Measure.compl_mem_cofinite, lt_top_iff_ne_top]
  · have : t.indicator (f i) = t.indicator (sᶜ.indicator (f i)) := by
      rw [indicator_indicator, inter_eq_left.2 hts]
    rw [this]
    have A i : MemLp (sᶜ.indicator (f i)) p μ := (hfs i).trans_lt h'ε
    apply (eLpNorm_mono ((A i).aestronglyMeasurable.indicator htm) <|
      norm_indicator_le_of_subset hts _).trans ?_
    rw [indicator_indicator, inter_self]
    exact hfs i

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variant9a582163a94b06748d730b50bc8bbe88bdb7fd127044fc785489726b042a245f.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63f5460d75b2a4e2baeac46be448669d0152e91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

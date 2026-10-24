# eventually_cofinite_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2e12cb08-d86c-6c97-fd3c-6e1e30425f02",
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
  "slug": "eventually-cofinite-indicator--fbe0c73c9c2695789acb3f38",
  "source": {
    "blob": "fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 84,
    "path": "GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe0c73c9c2695789acb3f38d95c6d2dd0e46e007fa62308cc452656ab2075c3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2e12cb08-d86c-6c97-fd3c-6e1e30425f02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eventually_cofinite_indicator (hf : UnifTight f p μ) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∀ᶠ s in μ.cofinite.smallSets, ∀ i, eLpNorm (s.indicator (f i)) p μ ≤ ε := by
  by_cases hε_top : ε = ∞
  · subst hε_top; simp
  rcases hf (pos_iff_ne_zero.2 (toNNReal_ne_zero.mpr ⟨hε,hε_top⟩)) with ⟨s, hμs, hfs⟩
  refine (eventually_smallSets' ?_).2 ⟨sᶜ, ?_, fun i ↦ (coe_toNNReal hε_top) ▸ hfs i⟩
  · intro s t hst ht i
    exact (eLpNorm_mono <| norm_indicator_le_of_subset hst _).trans (ht i)
  · rwa [Measure.compl_mem_cofinite, lt_top_iff_ne_top]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UnifTight/Variantabc24083152e9e5d72244f3d73726b9cb52fe4e70df735ff03080cb2fd0a1494.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd1a0d9fca4fadf47abf2fe514a1d90c69cfcd84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

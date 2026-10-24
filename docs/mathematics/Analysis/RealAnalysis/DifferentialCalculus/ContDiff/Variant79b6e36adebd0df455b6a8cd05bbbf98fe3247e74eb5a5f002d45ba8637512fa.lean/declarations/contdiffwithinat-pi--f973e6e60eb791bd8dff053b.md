# contDiffWithinAt_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a5cd275-af41-87ff-5a40-05096dab7cad",
  "kind": "theorem",
  "lexical_name": "contDiffWithinAt_pi",
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
  "slug": "contdiffwithinat-pi--f973e6e60eb791bd8dff053b",
  "source": {
    "blob": "553658f7834248a1aec4dc8b24f9ab14e095928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1180,
    "line": 1172,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f973e6e60eb791bd8dff053b0677c1bf7ebd3735d2d5fb543831dd0b2760c5d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a5cd275-af41-87ff-5a40-05096dab7cad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1172–1180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem contDiffWithinAt_pi :
    ContDiffWithinAt 𝕜 n Φ s x ↔ ∀ i, ContDiffWithinAt 𝕜 n (fun x => Φ x i) s x := by
  set pr := @ContinuousLinearMap.proj 𝕜 _ ι F' _ _ _
  refine' ⟨fun h i => h.continuousLinearMap_comp (pr i), fun h m hm => _⟩
  choose u hux p hp using fun i => h i m hm
  exact ⟨⋂ i, u i, Filter.iInter_mem.2 hux, _,
    hasFTaylorSeriesUpToOn_pi.2 fun i => (hp i).mono <| iInter_subset _ _⟩
#align cont_diff_within_at_pi contDiffWithinAt_pi

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean#L1172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553658f7834248a1aec4dc8b24f9ab14e095928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

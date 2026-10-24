# primeCorrected_readout_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4589b6b4-23ff-0571-24fa-0041996149f1",
  "kind": "theorem",
  "lexical_name": "primeCorrected_readout_error",
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
  "slug": "primecorrected-readout-error--43d5040038e06a55dacd7761",
  "source": {
    "blob": "ddf8a6470ad34ed7aec34d8f054f38261675c661",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43d5040038e06a55dacd7761c406d7c9a4eebdbcb10eae97b3d6265b1633a30e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4589b6b4-23ff-0571-24fa-0041996149f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeCorrected_readout_error {A ε : ℝ} (hA : 1 ≤ A) (hε : 0 ≤ ε)
    (F : ℝ → ℝ) (hF : IntervalIntegrable F volume 0 (2*A))
    (herr : ∀ u∈Icc 0 (2*A), |F u-pairedTailTest A u|≤ε) :
    |densityReadout A (primeCorrected A F)-criticalRemovedPairedWork A| ≤
      ε*(2*A-1+criticalDecay (2*A)) := by
  rw [← densityReadout_actual hA]
  unfold densityReadout
  rw [primeCorrected_primeLogSum, primeCorrected_density_integral]
  have he : primeLogSum (2*A) (pairedTailTest A) -
      (∫ u in 0..2*A, criticalDensity u*F u) -
      (primeLogSum (2*A) (pairedTailTest A) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) =
      -((∫ u in 0..2*A, criticalDensity u*F u) -
        ∫ u in 0..2*A, criticalDensity u*pairedTailTest A u) := by ring
  rw [he, abs_neg]
  exact density_integral_error hA hε F hF herr

/-- The arithmetic point corrections retain their complete signed increment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt02/Variant05bde1b6ca8457729125963053a1404b73572dc1c43309d405b067c195b57fb8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddf8a6470ad34ed7aec34d8f054f38261675c661` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

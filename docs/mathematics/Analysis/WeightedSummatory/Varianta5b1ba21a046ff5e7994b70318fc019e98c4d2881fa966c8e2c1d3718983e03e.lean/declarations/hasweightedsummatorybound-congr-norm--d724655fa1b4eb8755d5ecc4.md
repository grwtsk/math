# hasWeightedSummatoryBound_congr_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99d76845-21e9-874f-3d68-5b3d36e21073",
  "kind": "theorem",
  "lexical_name": "hasWeightedSummatoryBound_congr_norm",
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
  "slug": "hasweightedsummatorybound-congr-norm--d724655fa1b4eb8755d5ecc4",
  "source": {
    "blob": "74a3cc59a18844df6e42b4ba453e14307e014442",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 43,
    "path": "GRWTSK/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d724655fa1b4eb8755d5ecc4994cedf846ea212d10842dcd62905fa115dd5ea7",
  "verification": {
    "reference": "docs/verification/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99d76845-21e9-874f-3d68-5b3d36e21073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasWeightedSummatoryBound_congr_norm
    {σ : ℝ} {F G : ℕ → ℂ}
    (hFG : ∀ x : ℕ, ‖F x‖ = ‖G x‖) :
    HasWeightedSummatoryBound σ F ↔
      HasWeightedSummatoryBound σ G := by
  constructor
  · rintro ⟨C, hC, hF⟩
    refine ⟨C, hC, ?_⟩
    intro x hx
    rw [← hFG x]
    exact hF x hx
  · rintro ⟨C, hC, hG⟩
    refine ⟨C, hC, ?_⟩
    intro x hx
    rw [hFG x]
    exact hG x hx

/-- Pointwise complex conjugation preserves every weighted summatory
bound. -/
@[surface_adapter]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/WeightedSummatory/Varianta5b1ba21a046ff5e7994b70318fc019e98c4d2881fa966c8e2c1d3718983e03e.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74a3cc59a18844df6e42b4ba453e14307e014442` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

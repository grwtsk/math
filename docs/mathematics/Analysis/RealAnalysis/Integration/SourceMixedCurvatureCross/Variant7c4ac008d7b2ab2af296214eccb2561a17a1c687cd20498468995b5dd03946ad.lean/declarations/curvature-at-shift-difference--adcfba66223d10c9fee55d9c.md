# curvature_at_shift_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "28c703637e96daa3d11fdc7438a506bf87dea703",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ef9e940-9a4c-db93-7cdc-e129a999421b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9b21fa4-2674-ec0e-ee69-2768363e4544",
  "kind": "theorem",
  "lexical_name": "curvature_at_shift_difference",
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
  "slug": "curvature-at-shift-difference--adcfba66223d10c9fee55d9c",
  "source": {
    "blob": "28c703637e96daa3d11fdc7438a506bf87dea703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:adcfba66223d10c9fee55d9c9e8bceb9c1d794c221068599d3908edb02092f22",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9b21fa4-2674-ec0e-ee69-2768363e4544`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem curvature_at_shift_difference {A : ℝ} (hA : 0 < A) (u w : ℝ) :
    deriv (deriv (sourceCorrelation explicitSecondDerivative A)) (u - w) =
      -(∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
        deriv (normalizedTest explicitSecondDerivative A) (v + w)) := by
  have ht : (∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
      deriv (normalizedTest explicitSecondDerivative A) (v + w)) =
      ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) v *
        deriv (normalizedTest explicitSecondDerivative A) (v - (u - w)) := by
    calc
      _ = ∫ v : ℝ, deriv (normalizedTest explicitSecondDerivative A) (v + u) *
          deriv (normalizedTest explicitSecondDerivative A) (v + u - (u - w)) := by
        apply integral_congr_ae
        filter_upwards [] with v
        rw [show v + u - (u - w) = v + w by ring]
      _ = _ := integral_add_right_eq_self
        (fun v : ℝ => deriv (normalizedTest explicitSecondDerivative A) v *
          deriv (normalizedTest explicitSecondDerivative A) (v - (u - w))) u
  rw [sourceCorrelation_second_deriv_eq_integral hA, ← ht]

/-- The actual finite mixed kernel is the negative two-sector cross pairing.
The independently chosen rows need not agree and no sign is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceMixedCurvatureCross/Variant7c4ac008d7b2ab2af296214eccb2561a17a1c687cd20498468995b5dd03946ad.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28c703637e96daa3d11fdc7438a506bf87dea703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

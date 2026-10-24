# smoothWiener_weightedTsum_sandwich

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fd3e013-2f71-9c58-9d16-3b5ddb147a76",
  "kind": "theorem",
  "lexical_name": "smoothWiener_weightedTsum_sandwich",
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
  "slug": "smoothwiener-weightedtsum-sandwich--784b346cf3e10f4c0bbca57c",
  "source": {
    "blob": "d9074062354b71faefd2782637089a753dd3d46f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 154,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:784b346cf3e10f4c0bbca57ce98971aeb7929811b96d72714c42804728c98874",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fd3e013-2f71-9c58-9d16-3b5ddb147a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothWiener_weightedTsum_sandwich
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    {a b T : ℝ} (hT : 0 < T)
    (lo hi : ℝ → ℝ)
    (hloCompact : HasCompactSupport lo)
    (hhiCompact : HasCompactSupport hi)
    (hlo : ∀ x : ℝ,
      lo x ≤ (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x)
    (hhi : ∀ x : ℝ,
      (Set.Ico a b).indicator (fun _ : ℝ => (1 : ℝ)) x ≤ hi x) :
    ((∑' n : ℕ, f n * lo ((n : ℝ) / T)) / T ≤
      (∑' n : ℕ,
        f n * (Set.Ico a b).indicator
          (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T) ∧
    ((∑' n : ℕ,
        f n * (Set.Ico a b).indicator
          (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) / T ≤
      (∑' n : ℕ, f n * hi ((n : ℝ) / T)) / T) := by
  have hsumLo := smoothWiener_weight_summable f hloCompact hT
  have hsumHi := smoothWiener_weight_summable f hhiCompact hT
  have hsumInd := smoothWiener_indicator_summable f hT
  constructor
  · apply div_le_div_of_nonneg_right _ hT.le
    exact Summable.tsum_le_tsum
      (fun n => mul_le_mul_of_nonneg_left
        (hlo ((n : ℝ) / T)) (hf n))
      hsumLo hsumInd
  · apply div_le_div_of_nonneg_right _ hT.le
    exact Summable.tsum_le_tsum
      (fun n => mul_le_mul_of_nonneg_left
        (hhi ((n : ℝ) / T)) (hf n))
      hsumInd hsumHi

/-- Genuine analytic squeeze: convergence against all smooth positive-
support test functions forces the half-open interval sum limit, using
actual pinned smooth Urysohn witness functions and their integrated
mass bounds. The premise is precisely the missing smoothed WI theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9074062354b71faefd2782637089a753dd3d46f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

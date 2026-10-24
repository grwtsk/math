# divisorPrefix_weighted_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c99e1d7a-92b9-2fd0-b2a8-f193f852d1c6",
  "kind": "theorem",
  "lexical_name": "divisorPrefix_weighted_abel",
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
  "slug": "divisorprefix-weighted-abel--84e0b3f2254812eb69a810dc",
  "source": {
    "blob": "8abef6cce1a468449c0acf71e247ac9dcd087f61",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 130,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e0b3f2254812eb69a810dc3e0e10ba6e57d1be38dfa3b8238930e3238ba770",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c99e1d7a-92b9-2fd0-b2a8-f193f852d1c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem divisorPrefix_weighted_abel (U d l h : ℕ) (w : ℕ → ℝ)
    (hd : 0 < d) (hlh : l ≤ h) :
    (∑ k ∈ Finset.Ico l h, divisorPrefix U d k * w k) =
      divisorMean U d * (∑ k ∈ Finset.Ico l h, w k) +
        divisorStorage d h * w h - divisorStorage d l * w l -
        ∑ k ∈ Finset.Ico l h, divisorStorage d (k + 1) * (w (k + 1) - w k) := by
  have hs : (∑ k ∈ Finset.Ico l h,
      (divisorStorage d (k + 1) - divisorStorage d k) * w k) =
      divisorStorage d h * w h - divisorStorage d l * w l -
        ∑ k ∈ Finset.Ico l h, divisorStorage d (k + 1) * (w (k + 1) - w k) := by
    calc
      _ = ∑ k ∈ Finset.Ico l h,
          ((divisorStorage d (k + 1) * w (k + 1) - divisorStorage d k * w k) -
            divisorStorage d (k + 1) * (w (k + 1) - w k)) := by
        apply Finset.sum_congr rfl
        intro k _
        ring
      _ = _ := by
        rw [Finset.sum_sub_distrib, Finset.sum_Ico_sub
          (fun k ↦ divisorStorage d k * w k) hlh]
  calc
    _ = ∑ k ∈ Finset.Ico l h,
        (divisorMean U d * w k +
          (divisorStorage d (k + 1) - divisorStorage d k) * w k) := by
      apply Finset.sum_congr rfl
      intro k _
      rw [divisorPrefix_eq_mean_add_storage U d k hd]
      ring
    _ = _ := by
      rw [Finset.sum_add_distrib, ← Finset.mul_sum, hs]
      ring

/-- The original centered-prefix adapter reuses its exact interval discrepancy theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceBetaPrefixStorage/Variant6545910e72f3e63063a211b015f09b0444a44cbddb917483b41b57ff9a74707a.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8abef6cce1a468449c0acf71e247ac9dcd087f61` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

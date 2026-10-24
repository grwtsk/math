# concrete_smooth_brackets_give_finite_sum_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8ea8f09b-e796-e821-1dc2-90bd72dcd742",
  "kind": "theorem",
  "lexical_name": "concrete_smooth_brackets_give_finite_sum_bounds",
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
  "slug": "concrete-smooth-brackets-give-finite-sum-bounds--89c8e63e0dd968629f0645be",
  "source": {
    "blob": "c653afb1aa5aef9a47a923f073cd8c65f882081c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:89c8e63e0dd968629f0645be1b818de99a5c3c58bcbbc680d6addee3d4071286",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea8f09b-e796-e821-1dc2-90bd72dcd742`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem concrete_smooth_brackets_give_finite_sum_bounds
    {a b η : ℝ}
    (ha : 0 < a) (hab : a < b)
    (hη : 0 < η) (hηleft : η < a)
    (hηwidth : η < b - a)
    (f : ℕ → ℝ) (hf : ∀ n, 0 ≤ f n)
    (s : Finset ℕ) (T : ℝ) :
    ∃ lower upper : ℝ → ℝ,
      ContDiff ℝ ∞ lower ∧ ContDiff ℝ ∞ upper ∧
      HasCompactSupport lower ∧ HasCompactSupport upper ∧
      closure (Function.support lower) ⊆ Set.Ioi (0 : ℝ) ∧
      closure (Function.support upper) ⊆ Set.Ioi (0 : ℝ) ∧
      b - a - η ≤ ∫ x in Set.Ioi (0 : ℝ), lower x ∧
      (∫ x in Set.Ioi (0 : ℝ), upper x) ≤ b - a + η ∧
      (∑ n ∈ s, f n * lower ((n : ℝ) / T)) ≤
        (∑ n ∈ s,
          f n * (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) ∧
      (∑ n ∈ s,
          f n * (Set.Ico a b).indicator
            (fun _ : ℝ => (1 : ℝ)) ((n : ℝ) / T)) ≤
        (∑ n ∈ s, f n * upper ((n : ℝ) / T)) := by
  obtain ⟨lo, hi, hls, hus, hlc, huc, hla, hua, hpoint, hlmass, humass⟩ :=
    pinnedSmoothIntervalBrackets_exists ha hab hη hηleft hηwidth
  have hfin :=
    positiveFiniteWeightedSum_sandwich lo hi
      (fun x => (hpoint x).2.1)
      (fun x => (hpoint x).2.2.1)
      f hf s T
  exact ⟨lo, hi, hls, hus, hlc, huc, hla, hua,
    hlmass, humass, hfin.1, hfin.2⟩

/-- A fixed cutoff cannot be substituted for an integral mass
approximation family with arbitrarily small positive η. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothIntervalBracketsControls.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c653afb1aa5aef9a47a923f073cd8c65f882081c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

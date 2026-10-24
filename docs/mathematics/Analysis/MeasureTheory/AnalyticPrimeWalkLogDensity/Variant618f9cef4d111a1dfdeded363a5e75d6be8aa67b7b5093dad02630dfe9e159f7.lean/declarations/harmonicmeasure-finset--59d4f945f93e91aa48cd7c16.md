# harmonicMeasure_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52c31b14-c734-a216-4075-64f7aaa283ed",
  "kind": "theorem",
  "lexical_name": "harmonicMeasure_finset",
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
  "slug": "harmonicmeasure-finset--59d4f945f93e91aa48cd7c16",
  "source": {
    "blob": "4b1c123bff2d7859c4ef6aef166df2bc28c7c475",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 104,
    "path": "GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59d4f945f93e91aa48cd7c164a44e9bc397508456f6d1d9798df7101b19a453a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52c31b14-c734-a216-4075-64f7aaa283ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicMeasure_finset (s : Finset ℕ) :
    harmonicMeasure (s : Set ℕ) =
      ENNReal.ofReal (∑ k ∈ s, harmonicWeight k) := by
  classical
  rw [← MeasureTheory.Measure.tsum_indicator_apply_singleton harmonicMeasure
    (s : Set ℕ) (by measurability)]
  simp only [Set.indicator_apply, harmonicMeasure_singleton]
  calc
    (∑' k : ℕ, if k ∈ (s : Set ℕ) then
        ENNReal.ofReal (harmonicWeight k) else 0) =
        ∑ k ∈ s, (if k ∈ (s : Set ℕ) then
          ENNReal.ofReal (harmonicWeight k) else 0) := by
      apply tsum_eq_sum
      intro k hk
      simp [hk]
    _ = ∑ k ∈ s, ENNReal.ofReal (harmonicWeight k) := by simp
    _ = ENNReal.ofReal (∑ k ∈ s, harmonicWeight k) := by
      symm
      exact ENNReal.ofReal_sum_of_nonneg fun k _ ↦ harmonicWeight_nonneg k

/-- Finite set of sampled indices in `S` between two and `N`. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant618f9cef4d111a1dfdeded363a5e75d6be8aa67b7b5093dad02630dfe9e159f7.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b1c123bff2d7859c4ef6aef166df2bc28c7c475` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

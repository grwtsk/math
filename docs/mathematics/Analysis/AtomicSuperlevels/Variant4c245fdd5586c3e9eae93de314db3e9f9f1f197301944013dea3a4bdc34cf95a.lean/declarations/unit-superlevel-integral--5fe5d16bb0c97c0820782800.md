# unit_superlevel_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7264a0b-1d58-0287-cebf-4c506a284050",
  "kind": "theorem",
  "lexical_name": "unit_superlevel_integral",
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
  "slug": "unit-superlevel-integral--5fe5d16bb0c97c0820782800",
  "source": {
    "blob": "836d73fecf283c4b177d320ae708960790b07d55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 77,
    "path": "GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fe5d16bb0c97c082078280082192821606d46296ba41658ed3d88038dde08f4",
  "verification": {
    "reference": "docs/verification/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7264a0b-1d58-0287-cebf-4c506a284050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unit_superlevel_integral {ι : Type*} (s : Finset ι) (w : ι → ℝ≥0∞) {f : ι → ℝ}
    (hf1 : ∀ i ∈ s, f i ≤ 1) (p : ℝ) :
    (∫⁻ t in Set.Ioi (0 : ℝ), superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1))) =
      ∫⁻ t in Set.Ioc (0 : ℝ) 1, superlevelMass s w f t * ENNReal.ofReal (t ^ (p - 1)) := by
  classical
  rw [← lintegral_indicator measurableSet_Ioi, ← lintegral_indicator measurableSet_Ioc]
  apply lintegral_congr
  intro t
  by_cases ht0 : 0 < t
  · by_cases ht1 : t ≤ 1
    · simp [Set.indicator, ht0, ht1]
    · have hz := superlevel_above_one_zero s w hf1 (lt_of_not_ge ht1)
      simp [Set.indicator, ht0, ht1, hz]
  · simp [Set.indicator, ht0]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AtomicSuperlevels/Variant4c245fdd5586c3e9eae93de314db3e9f9f1f197301944013dea3a4bdc34cf95a.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `836d73fecf283c4b177d320ae708960790b07d55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

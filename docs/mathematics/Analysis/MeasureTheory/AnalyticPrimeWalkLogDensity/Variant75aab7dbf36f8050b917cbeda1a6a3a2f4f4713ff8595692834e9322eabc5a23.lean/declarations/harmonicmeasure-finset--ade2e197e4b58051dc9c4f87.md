# harmonicMeasure_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88a9010e-e3bd-08e7-2b8b-9ee17d4a510f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88dd0918-6734-12fb-a61a-51526bcd7f80",
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
  "slug": "harmonicmeasure-finset--ade2e197e4b58051dc9c4f87",
  "source": {
    "blob": "bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ade2e197e4b58051dc9c4f871aedcba563b1480caeb4b304ac73cc95cfba0b6a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88dd0918-6734-12fb-a61a-51526bcd7f80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–117.

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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/AnalyticPrimeWalkLogDensity/Variant75aab7dbf36f8050b917cbeda1a6a3a2f4f4713ff8595692834e9322eabc5a23.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfa2cbd98f30b3729886d0cc257e41fd29ffd4c0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

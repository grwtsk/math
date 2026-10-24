# mutuallySingular_of_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ce5600af900cdda08a12be81586fd4f40770fd80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 206,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:043fe73f-ef64-8e3a-9227-c2d26b96b9a0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:aff12896-6aa0-0608-57ea-cdde88c58f5e",
  "kind": "lemma",
  "lexical_name": "mutuallySingular_of_disjoint",
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
  "slug": "mutuallysingular-of-disjoint--2063fa5dd44e4917dee98329",
  "source": {
    "blob": "ce5600af900cdda08a12be81586fd4f40770fd80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 206,
    "path": "GRWTSK/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2063fa5dd44e4917dee983295179bfba02b2ddc82a1111d36124f3b22c5f4285",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aff12896-6aa0-0608-57ea-cdde88c58f5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mutuallySingular_of_disjoint (h : Disjoint μ ν) : μ ⟂ₘ ν := by
  have h' (n : ℕ) : ∃ s, μ s = 0 ∧ ν sᶜ ≤ (1 / 2) ^ n := by
    convert!
      exists_null_set_measure_lt_of_disjoint h (ε := (1 / 2) ^ (n + 1)) <| pow_pos (by simp) (n + 1)
    conv =>
      -- this tweak is needed due to the known issue of `norm_cast` with numeric fractions
      enter [1, 1]
      equals ((1 : ℝ≥0) / (2 : ℝ≥0)) => rfl
    norm_cast
    ring
  choose s hs₂ hs₃ using h'
  refine Measure.MutuallySingular.mk (t := (⋃ n, s n)ᶜ) (measure_iUnion_null hs₂) ?_ ?_
  · rw [compl_iUnion]
    refine eq_zero_of_le_mul_pow (ε := 1) (by simp : (1 / 2 : ℝ≥0∞) < 1) <| fun n ↦ ?_
    rw [ENNReal.coe_one, one_mul]
    exact (measure_mono <| iInter_subset_of_subset n fun _ ht ↦ ht).trans (hs₃ n)
  · rw [union_compl_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MutuallySingular/Varianted91b401cab85c63936bb6cbfc9e5af4631a7923d417a36768687bb89c243571.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5600af900cdda08a12be81586fd4f40770fd80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

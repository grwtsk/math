# peano_five_nonnegative_with_negative_curvature

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35862ccae2e6a77d8cd3209ae1cafb9a140711b1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:385d43db-fc4b-106b-c35d-9a567604b477",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3f8753a-e585-6996-f1cb-fe46079b7bef",
  "kind": "theorem",
  "lexical_name": "peano_five_nonnegative_with_negative_curvature",
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
  "slug": "peano-five-nonnegative-with-negative-curvature--a51e213642f8a5940c8de345",
  "source": {
    "blob": "35862ccae2e6a77d8cd3209ae1cafb9a140711b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 13,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PeanoSignFixtures/Variantef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a51e213642f8a5940c8de3459ded16dd9b463dd84f550f242bcc72c02681efe2",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PeanoSignFixtures/Variantef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3f8753a-e585-6996-f1cb-fe46079b7bef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem peano_five_nonnegative_with_negative_curvature :
    (∀ t : ℝ, t ∈ Icc 0 10 → 0 ≤ sourcePeanoPrimitive 5 t) ∧
    ∃ t : ℝ, 0 < t ∧ t < 10 ∧
      deriv (deriv (sourcePeanoPrimitive 5)) t < 0 := by
  constructor
  · intro t ht
    exact sourcePeanoPrimitive_nonneg (by norm_num) (by norm_num) ht.1
      (by simpa only [show (2 : ℝ) * 5 = 10 by norm_num] using ht.2)
  · obtain ⟨t, ht0, ht10, htneg⟩ :=
      sourceCorrelation_exists_neg_in_half_support (A := 5) (by norm_num)
    refine ⟨t, ht0, by linarith, ?_⟩
    rw [sourcePeanoPrimitive_second_deriv (by norm_num)]
    exact mul_neg_of_pos_of_neg (Real.exp_pos _) htneg

/-- The same actual primitive has positive center curvature, so neither curvature sign is global. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PeanoSignFixtures/Variantef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PeanoSignFixtures/Variantef4d5ab93e9eefce521d0d8d07e65e23b1353e96349dbe8171d29a4f2ea95651.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35862ccae2e6a77d8cd3209ae1cafb9a140711b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

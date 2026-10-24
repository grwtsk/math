# trivialContribution_tail_distance_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6ddd061880c34b99f768973a4291f34c9f98ec51",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b65d250f-c22c-59c1-ac08-c5f79efb9e7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c5dfe02-9644-814f-53a5-d78f69ea7e3b",
  "kind": "theorem",
  "lexical_name": "trivialContribution_tail_distance_bounds",
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
  "slug": "trivialcontribution-tail-distance-bounds--e58d7d67958da2f82449f924",
  "source": {
    "blob": "6ddd061880c34b99f768973a4291f34c9f98ec51",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 185,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e58d7d67958da2f82449f92488372b0341d9342336ddf8bfc46294d34ab2dc62",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c5dfe02-9644-814f-53a5-d78f69ea7e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trivialContribution_tail_distance_bounds (xi : ℝ) (N : ℕ) :
    Real.log (1 + xi ^ 2 / (trivialDistance N) ^ 2) / 2 ≤
        (∑' n : ℕ, trivialContribution xi (n + N)) ∧
      (∑' n : ℕ, trivialContribution xi (n + N)) ≤
        Real.log (1 + xi ^ 2 / (trivialDistance N) ^ 2) / 2 +
          trivialContribution xi N := by
  have hd : 0 < 2 * (N : ℝ) + 5 / 2 := by positivity
  have ha : 0 < (N : ℝ) + 5 / 4 := by positivity
  have hr : (xi / 2) ^ 2 * (((N : ℝ) + 5 / 4)⁻¹) ^ 2 =
      xi ^ 2 / (trivialDistance N) ^ 2 := by
    rw [trivialDistance_eq]
    field_simp [ne_of_gt hd, ne_of_gt ha]
    ring
  have hk : kernel (xi / 2) ((N : ℝ) + 5 / 4) =
      trivialContribution xi N := by
    rw [trivialContribution_eq_kernel]
    congr 1
    push_cast
    ring
  have h := trivialContribution_tail_bounds xi N
  rw [hr, hk] at h
  constructor <;> linarith [h.1, h.2]

end

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.TrivialZeroDebt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/TrivialZeroDebt/Variantb08f02db58926e3085f5c190c9b463da0cba63f3e7e4c20182811bd0229db0a0.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ddd061880c34b99f768973a4291f34c9f98ec51` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

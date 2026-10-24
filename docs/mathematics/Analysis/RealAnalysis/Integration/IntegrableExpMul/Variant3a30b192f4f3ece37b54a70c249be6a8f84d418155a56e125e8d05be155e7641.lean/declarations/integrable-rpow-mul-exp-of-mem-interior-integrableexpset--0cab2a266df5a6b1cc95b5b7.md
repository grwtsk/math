# integrable_rpow_mul_exp_of_mem_interior_integrableExpSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a14dcecbdeb27d8e10310bf3449fa0ee64df60be",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 487,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26593f67-d516-6bce-1a4c-322a70d94ad6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8521690-f34c-f440-8dc3-68831439e4ac",
  "kind": "lemma",
  "lexical_name": "integrable_rpow_mul_exp_of_mem_interior_integrableExpSet",
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
  "slug": "integrable-rpow-mul-exp-of-mem-interior-integrableexpset--0cab2a266df5a6b1cc95b5b7",
  "source": {
    "blob": "a14dcecbdeb27d8e10310bf3449fa0ee64df60be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 500,
    "line": 487,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cab2a266df5a6b1cc95b5b7f145026b4aab2e3be93baa7a321898a68b421173",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8521690-f34c-f440-8dc3-68831439e4ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–500.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integrable_rpow_mul_exp_of_mem_interior_integrableExpSet
    (hv : v ∈ interior (integrableExpSet X μ)) {p : ℝ} (hp : 0 ≤ p) :
    Integrable (fun ω ↦ X ω ^ p * exp (v * X ω)) μ := by
  rw [mem_interior_iff_mem_nhds, mem_nhds_iff_exists_Ioo_subset] at hv
  obtain ⟨l, u, hvlu, h_subset⟩ := hv
  have h_pos : 0 < (v - l) ⊓ (u - v) := by simp [hvlu.1, hvlu.2]
  refine integrable_rpow_mul_exp_of_integrable_exp_mul
    (t := min (v - l) (u - v) / 2) ?_ ?_ ?_ hp
  · positivity
  · exact h_subset (add_half_inf_sub_mem_Ioo hvlu)
  · exact h_subset (sub_half_inf_sub_mem_Ioo hvlu)

/-- If `v` belongs to the interior of the interval `integrableExpSet X μ`,
then `X ^ n * exp (v * X)` is integrable for all `n : ℕ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/IntegrableExpMul/Variant3a30b192f4f3ece37b54a70c249be6a8f84d418155a56e125e8d05be155e7641.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a14dcecbdeb27d8e10310bf3449fa0ee64df60be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

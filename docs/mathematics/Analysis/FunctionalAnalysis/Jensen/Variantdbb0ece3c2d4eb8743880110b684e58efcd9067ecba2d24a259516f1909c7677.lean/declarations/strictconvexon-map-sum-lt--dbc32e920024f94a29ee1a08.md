# StrictConvexOn.map_sum_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fb5f5c192359128a63127e47d13e24b9105814c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/dbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:051992a8-eb46-c811-37e9-310619edf570",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02f0b8a4-8957-b90b-aa93-a00f4777d064",
  "kind": "lemma",
  "lexical_name": "StrictConvexOn.map_sum_lt",
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
  "slug": "strictconvexon-map-sum-lt--dbc32e920024f94a29ee1a08",
  "source": {
    "blob": "0fb5f5c192359128a63127e47d13e24b9105814c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 99,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dbc32e920024f94a29ee1a08fff0b9fc3a8f0c95544d84e862d225646f65b3c1",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02f0b8a4-8957-b90b-aa93-a00f4777d064`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StrictConvexOn.map_sum_lt (hf : StrictConvexOn 𝕜 s f) (h₀ : ∀ i ∈ t, 0 < w i)
    (h₁ : ∑ i ∈ t, w i = 1) (hmem : ∀ i ∈ t, p i ∈ s) (hp : ∃ j ∈ t, ∃ k ∈ t, p j ≠ p k) :
    f (∑ i ∈ t, w i • p i) < ∑ i ∈ t, w i • f (p i) := by
  classical
  obtain ⟨j, hj, k, hk, hjk⟩ := hp
  -- We replace `t` by `t \ {j, k}`
  have : k ∈ t.erase j := mem_erase.2 ⟨ne_of_apply_ne _ hjk.symm, hk⟩
  let u := (t.erase j).erase k
  have hj : j ∉ u := by simp [u]
  have hk : k ∉ u := by simp [u]
  have ht :
      t = (u.cons k hk).cons j (mem_cons.not.2 <| not_or_intro (ne_of_apply_ne _ hjk) hj) := by
    simp [u, insert_erase this, insert_erase ‹j ∈ t›, *]
  clear_value u
  subst ht
  simp only [sum_cons]
  have := h₀ j <| by simp
  have := h₀ k <| by simp
  let c := w j + w k
  have hc : w j / c + w k / c = 1 := by field_simp [c]
  calc f (w j • p j + (w k • p k + ∑ x ∈ u, w x • p x))
    _ = f (c • ((w j / c) • p j + (w k / c) • p k) + ∑ x ∈ u, w x • p x) := by
      congrm f ?_
      match_scalars <;> field_simp
    _ ≤ c • f ((w j / c) • p j + (w k / c) • p k) + ∑ x ∈ u, w x • f (p x) :=
      -- apply the usual Jensen's inequality wrt the weighted average of the two distinguished
      -- points and all the other points
        hf.convexOn.map_add_sum_le (fun i hi ↦ (h₀ _ <| by simp [hi]).le)
          (by simpa [-cons_eq_insert, ← add_assoc] using h₁)
          (forall_of_forall_cons <| forall_of_forall_cons hmem) (by positivity) <| by
           refine hf.1 (hmem _ <| by simp) (hmem _ <| by simp) ?_ ?_ hc <;> positivity
    _ < c • ((w j / c) • f (p j) + (w k / c) • f (p k)) + ∑ x ∈ u, w x • f (p x) := by
      -- then apply the definition of strict convexity for the two distinguished points
      gcongr; refine hf.2 (hmem _ <| by simp) (hmem _ <| by simp) hjk ?_ ?_ hc <;> positivity
    _ = (w j • f (p j) + w k • f (p k)) + ∑ x ∈ u, w x • f (p x) := by
      match_scalars <;> field_simp
    _ = w j • f (p j) + (w k • f (p k) + ∑ x ∈ u, w x • f (p x)) := by abel_nf

/-- Concave **strict Jensen inequality**.

If the function is strictly concave, the weights are strictly positive and the indexed family of
points is non-constant, then Jensen's inequality is strict.

See also `StrictConcaveOn.map_sum_eq_iff`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fb5f5c192359128a63127e47d13e24b9105814c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

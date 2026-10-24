# f_matrix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46f94bda08682495ae6c3f83a879fa5df3d9e82b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 295,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2f8db46-8b4f-ea8f-9a5b-d56ca2f62c01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:383096e5-68b1-5a51-9858-5d4bc073a354",
  "kind": "theorem",
  "lexical_name": "f_matrix",
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
  "slug": "f-matrix--615cf9ab7c8149fb9974c61a",
  "source": {
    "blob": "46f94bda08682495ae6c3f83a879fa5df3d9e82b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 295,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:615cf9ab7c8149fb9974c61ab5da5d3d9b6e28aac915376089c82ac5fd19fa3b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:383096e5-68b1-5a51-9858-5d4bc073a354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 295–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem f_matrix : ∀ p q : Q n, |ε q (f n (e p))| = if p ∈ q.adjacent then 1 else 0 := by
  induction' n with n IH
  · intro p q
    dsimp [f]
    simp [Q.not_adjacent_zero]
    rfl
  · intro p q
    have ite_nonneg : ite (π q = π p) (1 : ℝ) 0 ≥ 0 := by split_ifs <;> norm_num
    dsimp only [e, ε, f, V]; rw [LinearMap.prod_apply]; dsimp; cases hp : p 0 <;> cases hq : q 0
    all_goals
      repeat rw [Bool.cond_true]
      repeat rw [Bool.cond_false]
      simp [hp, hq, IH, duality, abs_of_nonneg ite_nonneg, Q.adj_iff_proj_eq,
        Q.adj_iff_proj_adj]

/-- The linear operator $g_m$ corresponding to Knuth's matrix $B_m$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantd338ad98796c7c961dedf5eab7bb7e9b967dcf0e12d13787293c546aba28b901.lean#L295).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46f94bda08682495ae6c3f83a879fa5df3d9e82b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

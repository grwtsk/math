# induction3

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa55cb792a8c141ee4bff880e3d529ac4d62e9a7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a1fbf69-7c59-d079-0dd6-29581e863576",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:239cc9a0-ae8c-29c0-dc06-85ab9e2f3356",
  "kind": "theorem",
  "lexical_name": "induction3",
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
  "slug": "induction3--165fab2e1da2047ef8c39b86",
  "source": {
    "blob": "fa55cb792a8c141ee4bff880e3d529ac4d62e9a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 314,
    "path": "GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:165fab2e1da2047ef8c39b86323869be8e4b5f08fa6662b57faf5ec23b38f749",
  "verification": {
    "reference": "docs/verification/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:239cc9a0-ae8c-29c0-dc06-85ab9e2f3356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem induction3 {α : solvableByRad F E} {n : ℕ} (hn : n ≠ 0) (hα : P (α ^ n)) : P α := by
  let p := minpoly F (α ^ n)
  have hp : p.comp (X ^ n) ≠ 0 := by
    intro h
    cases' comp_eq_zero_iff.mp h with h' h'
    · exact minpoly.ne_zero (isIntegral (α ^ n)) h'
    · exact hn (by rw [← @natDegree_C F, ← h'.2, natDegree_X_pow])
  apply gal_isSolvable_of_splits
  · exact ⟨splits_of_splits_of_dvd _ hp (SplittingField.splits (p.comp (X ^ n)))
      (minpoly.dvd F α (by rw [aeval_comp, aeval_X_pow, minpoly.aeval]))⟩
  · refine' gal_isSolvable_tower p (p.comp (X ^ n)) _ hα _
    · exact Gal.splits_in_splittingField_of_comp _ _ (by rwa [natDegree_X_pow])
    · obtain ⟨s, hs⟩ := (splits_iff_exists_multiset _).1 (SplittingField.splits p)
      rw [map_comp, Polynomial.map_pow, map_X, hs, mul_comp, C_comp]
      apply gal_mul_isSolvable (gal_C_isSolvable _)
      rw [multiset_prod_comp]
      apply gal_prod_isSolvable
      intro q hq
      rw [Multiset.mem_map] at hq
      obtain ⟨q, hq, rfl⟩ := hq
      rw [Multiset.mem_map] at hq
      obtain ⟨q, _, rfl⟩ := hq
      rw [sub_comp, X_comp, C_comp]
      exact gal_X_pow_sub_C_isSolvable n q
#align solvable_by_rad.induction3 solvableByRad.induction3

/-- An auxiliary induction lemma, which is generalized by `solvableByRad.isSolvable`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FieldTheory/AbelRuffini/Variant7ade9e7186ec3fd2391ff9c860dea816d6d37ba03165bb552fbae39c33bb87d6.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa55cb792a8c141ee4bff880e3d529ac4d62e9a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# negAt_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5094e5a04007f4baf640da0e6a490cb8d6bd750b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 953,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/79/79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b1d5e34c-75d9-75ad-9899-60328029053f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81f5e568-6dff-171c-2b5c-b158e22d946b",
  "kind": "theorem",
  "lexical_name": "negAt_symm",
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
  "slug": "negat-symm--8aaea245caec85cea1ecdcaa",
  "source": {
    "blob": "5094e5a04007f4baf640da0e6a490cb8d6bd750b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 965,
    "line": 953,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8aaea245caec85cea1ecdcaae08d6d3cd4470eca82333628f4d218a8926517a9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81f5e568-6dff-171c-2b5c-b158e22d946b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 953–965.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem negAt_symm :
    (negAt s).symm = negAt s := by
  ext x w
  · by_cases hw : w ∈ s
    · simp_rw [negAt_apply_isReal_and_mem _ hw, negAt, prodCongr_symm,
        prodCongr_apply, piCongrRight_symm_apply, ite_eq_left hw, symm_neg,
        ContinuousLinearEquiv.neg_apply]
    · simp_rw [negAt_apply_isReal_and_notMem _ hw, negAt, prodCongr_symm,
        prodCongr_apply, piCongrRight_symm_apply, ite_eq_right hw, refl_symm,
        refl_apply]
  · rfl

/-- For `x : mixedSpace K`, the set `signSet x` is the set of real places `w` s.t. `x w ≤ 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/Basic/Variant79467a7873a64a9cb6f47296f8ad6373559f0990c6d860a9384f93cf903f5109.lean#L953).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5094e5a04007f4baf640da0e6a490cb8d6bd750b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

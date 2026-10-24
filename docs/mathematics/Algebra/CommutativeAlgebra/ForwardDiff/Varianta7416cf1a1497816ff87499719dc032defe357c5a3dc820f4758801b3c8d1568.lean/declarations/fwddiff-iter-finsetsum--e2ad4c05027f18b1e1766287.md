# fwdDiff_iter_finsetSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d706ea64-a288-08cb-7da8-d69cb00851e1",
  "kind": "lemma",
  "lexical_name": "fwdDiff_iter_finsetSum",
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
  "slug": "fwddiff-iter-finsetsum--e2ad4c05027f18b1e1766287",
  "source": {
    "blob": "5e02e861f3b5ba46027afae778c0478d23201254",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2ad4c05027f18b1e1766287ecc5f50f1acaab283f9d6a9c85f9645651e4efd0",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d706ea64-a288-08cb-7da8-d69cb00851e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma fwdDiff_iter_finsetSum {α : Type*} (s : Finset α) (f : α → M → G) (n : ℕ) :
    Δ_[h]^[n] (∑ k ∈ s, f k) = ∑ k ∈ s, Δ_[h]^[n] (f k) := by
  simpa only [coe_fwdDiffₗ_pow] using map_sum (fwdDiffₗ M G h ^ n) f s

@[deprecated (since := "2026-04-08")] alias fwdDiff_iter_finset_sum := fwdDiff_iter_finsetSum

section newton_formulae

/--
Express the `n`-th forward difference of `f` at `y` in terms of the values `f (y + k)`, for
`0 ≤ k ≤ n`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/ForwardDiff/Varianta7416cf1a1497816ff87499719dc032defe357c5a3dc820f4758801b3c8d1568.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e02e861f3b5ba46027afae778c0478d23201254` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

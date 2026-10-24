# hurwitzZeta_neg_nat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/95/9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5658bbf0-7c1b-ef80-5c9a-eb2162b6f4c0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fa2e9055-1c13-52a9-98c9-3393bef6cd4d",
  "kind": "theorem",
  "lexical_name": "hurwitzZeta_neg_nat",
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
  "slug": "hurwitzzeta-neg-nat--189c849c54bd81a2c32820f4",
  "source": {
    "blob": "e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 186,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:189c849c54bd81a2c32820f429164f54136732fe3694f203a9f2eb7c21dde749",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa2e9055-1c13-52a9-98c9-3393bef6cd4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hurwitzZeta_neg_nat (hk : k ≠ 0) (hx : x ∈ Icc (0 : ℝ) 1) :
    hurwitzZeta x (-k) =
    -1 / (k + 1) * ((Polynomial.bernoulli (k + 1)).map (algebraMap ℚ ℂ)).eval (x : ℂ) := by
  rcases Nat.even_or_odd' k with ⟨n, (rfl | rfl)⟩
  · exact_mod_cast hurwitzZeta_neg_two_mul_nat (by omega : n ≠ 0) hx
  · exact_mod_cast hurwitzZeta_one_sub_two_mul_nat (by omega : n + 1 ≠ 0) hx

end HurwitzZeta

open HurwitzZeta

/-- Explicit formula for `ζ (2 * k)`, for `k ∈ ℕ` with `k ≠ 0`, in terms of the Bernoulli number
`bernoulli (2 * k)`.

Compare `hasSum_zeta_nat` for a version formulated in terms of a sum over `1 / n ^ (2 * k)`, and
`riemannZeta_neg_nat_eq_bernoulli` for values at negative integers (equivalent to the above via
the functional equation). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/HurwitzZetaValues/Variant9514f41bbabb4ee4d5bd16cdabea3df12a2ef5795c4eb1a68328c950c7b1f326.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8ae9318ae1ca2974f77ab58313d7a1ec50c68f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

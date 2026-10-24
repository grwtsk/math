# cardPowDegree_anti_archimedean

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e4425896951531ac05803c1cea702ad9f29a24aa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4a/4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b9d2616-5b4b-d37b-c7b2-426810264d01",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f966637e-5f2c-058a-9618-3cb4b1bb4d4b",
  "kind": "theorem",
  "lexical_name": "cardPowDegree_anti_archimedean",
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
  "slug": "cardpowdegree-anti-archimedean--19c018f1e78f953881e6d026",
  "source": {
    "blob": "e4425896951531ac05803c1cea702ad9f29a24aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 146,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19c018f1e78f953881e6d026a73fcaf2c20fd3ba53b9154981ab747f42d05e60",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f966637e-5f2c-058a-9618-3cb4b1bb4d4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardPowDegree_anti_archimedean {x y z : Fq[X]} {a : ℤ} (hxy : cardPowDegree (x - y) < a)
    (hyz : cardPowDegree (y - z) < a) : cardPowDegree (x - z) < a := by
  have ha : 0 < a := lt_of_le_of_lt (AbsoluteValue.nonneg _ _) hxy
  by_cases hxy' : x = y
  · rwa [hxy']
  by_cases hyz' : y = z
  · rwa [← hyz']
  by_cases hxz' : x = z
  · rwa [hxz', sub_self, map_zero]
  rw [← Ne, ← sub_ne_zero] at hxy' hyz' hxz'
  refine lt_of_le_of_lt ?_ (max_lt hxy hyz)
  rw [cardPowDegree_nonzero _ hxz', cardPowDegree_nonzero _ hxy',
    cardPowDegree_nonzero _ hyz']
  have : (1 : ℤ) ≤ Fintype.card Fq := mod_cast (@Fintype.one_lt_card Fq _ _).le
  simp only [Int.cast_pow, Int.cast_natCast, le_max_iff]
  refine Or.imp (pow_le_pow_right₀ this) (pow_le_pow_right₀ this) ?_
  rw [natDegree_le_iff_degree_le, natDegree_le_iff_degree_le, ← le_max_iff, ←
    degree_eq_natDegree hxy', ← degree_eq_natDegree hyz']
  convert degree_add_le (x - y) (y - z) using 2
  exact (sub_add_sub_cancel _ _ _).symm

/-- A slightly stronger version of `exists_partition` on which we perform induction on `n`:
for all `ε > 0`, we can partition the remainders of any family of polynomials `A`
into equivalence classes, where the equivalence(!) relation is "closer than `ε`". -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/AdmissibleCardPowDegree/Variant4abf2539b91f99834de8173fc2811f3809bfc7425778953936f8c25b307423cd.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4425896951531ac05803c1cea702ad9f29a24aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

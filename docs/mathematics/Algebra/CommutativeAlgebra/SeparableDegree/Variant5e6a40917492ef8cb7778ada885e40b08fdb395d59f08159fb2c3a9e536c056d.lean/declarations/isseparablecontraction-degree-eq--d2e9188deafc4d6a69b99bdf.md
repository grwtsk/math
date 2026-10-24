# IsSeparableContraction.degree_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16ea753c-7e95-4cb9-1026-b6748fe6b3ed",
  "kind": "theorem",
  "lexical_name": "IsSeparableContraction.degree_eq",
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
  "slug": "isseparablecontraction-degree-eq--d2e9188deafc4d6a69b99bdf",
  "source": {
    "blob": "c9f67fbf72c0f021151c0c5b0ddc504739ae6015",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 139,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2e9188deafc4d6a69b99bdf2c0e47b3d3795c2c67d2414430bcb48979a9e6b5",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16ea753c-7e95-4cb9-1026-b6748fe6b3ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsSeparableContraction.degree_eq [hF : ExpChar F q] (g : F[X])
    (hg : IsSeparableContraction q f g) : g.natDegree = hf.degree := by
  cases hF
  · rcases hg with ⟨_, m, hm⟩
    rw [one_pow, expand_one] at hm
    rw [hf.eq_degree, hm]
  · rcases hg with ⟨hg, m, hm⟩
    let g' := Classical.choose hf
    cases' (Classical.choose_spec hf).2 with m' hm'
    haveI : Fact q.Prime := ⟨by assumption⟩
    apply contraction_degree_eq_or_insep q g g' m m'
    rw [hm, hm']
    exact hg
    exact (Classical.choose_spec hf).1
#align polynomial.is_separable_contraction.degree_eq Polynomial.IsSeparableContraction.degree_eq

end Field

end Polynomial
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variant5e6a40917492ef8cb7778ada885e40b08fdb395d59f08159fb2c3a9e536c056d.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9f67fbf72c0f021151c0c5b0ddc504739ae6015` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

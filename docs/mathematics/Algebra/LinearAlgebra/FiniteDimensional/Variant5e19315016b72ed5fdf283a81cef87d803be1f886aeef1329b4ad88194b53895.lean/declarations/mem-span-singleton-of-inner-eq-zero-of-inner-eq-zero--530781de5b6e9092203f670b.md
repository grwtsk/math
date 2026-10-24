# mem_span_singleton_of_inner_eq_zero_of_inner_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03df40376462cddf15be1598c4e201a610830a31",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 135,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5e/5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e7ec22e0-97b1-18eb-8c83-26f519687db6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c68fe6c1-dfa3-b4db-a24c-2efa6ca45685",
  "kind": "theorem",
  "lexical_name": "mem_span_singleton_of_inner_eq_zero_of_inner_eq_zero",
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
  "slug": "mem-span-singleton-of-inner-eq-zero-of-inner-eq-zero--530781de5b6e9092203f670b",
  "source": {
    "blob": "03df40376462cddf15be1598c4e201a610830a31",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 135,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530781de5b6e9092203f670b4fada35d8f06e1d1e4fec95345d535856e6ba432",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c68fe6c1-dfa3-b4db-a24c-2efa6ca45685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 135–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_span_singleton_of_inner_eq_zero_of_inner_eq_zero
    [Fact (finrank 𝕜 E = 2)] {u v w : E} (hv : v ≠ 0) (hw : w ≠ 0)
    (huv : ⟪v, u⟫_𝕜 = 0) (hwv : ⟪v, w⟫_𝕜 = 0) :
    u ∈ 𝕜 ∙ w := by
  have : FiniteDimensional 𝕜 E := .of_fact_finrank_eq_succ 1
  suffices heq : (𝕜 ∙ v)ᗮ = 𝕜 ∙ w by rwa [← heq, mem_orthogonal_singleton_iff_inner_right]
  exact eq_span_singleton_of_mem_of_finrank_eq_one
    (finrank_orthogonal_span_singleton (n := 1) hv)
    (mem_orthogonal_singleton_iff_inner_right.mpr hwv) hw

end Submodule

open Module Submodule

/-- An element `φ` of the orthogonal group of `F` can be factored as a product of reflections, and
specifically at most as many reflections as the dimension of the complement of the fixed subspace
of `φ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteDimensional/Variant5e19315016b72ed5fdf283a81cef87d803be1f886aeef1329b4ad88194b53895.lean#L135).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03df40376462cddf15be1598c4e201a610830a31` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

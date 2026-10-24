# exists_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d07fb370da9edc99f72e875de13adac15b59147c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 462,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/07/07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:368912a0-c73f-4576-40ea-0b7f222d0eb6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:83b93216-75f8-41d5-9586-e30034f68f63",
  "kind": "lemma",
  "lexical_name": "exists_coeff",
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
  "slug": "exists-coeff--f3c8dd434260fb27303a03d0",
  "source": {
    "blob": "d07fb370da9edc99f72e875de13adac15b59147c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 474,
    "line": 462,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c8dd434260fb27303a03d01c295d3715846213c77f31b1d0a6a27befa0a089",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83b93216-75f8-41d5-9586-e30034f68f63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–474.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_coeff (n : ℕ) (x : X) :
    ∃ c : 𝕜, c • D.e n = (succSub D.P n) x := by
  let S := (succSub D.P n).toLinearMap
  have hrank : Module.finrank 𝕜 S.range = 1 :=
    finrank_range_succSub_eq_one D.finrank_range D.proj_comp n
  have : FiniteDimensional 𝕜 S.range := .of_finrank_pos (hrank.symm ▸ zero_lt_one)
  have hspan : Submodule.span 𝕜 {D.e n} = S.range := by
    apply Submodule.eq_of_le_of_finrank_eq
    · exact (Submodule.span_singleton_le_iff_mem _ _).mpr (D.e_mem_range n)
    · simp [hrank, finrank_span_singleton (D.e_ne_zero n)]
  exact Submodule.mem_span_singleton.mp (hspan.symm ▸ LinearMap.mem_range_self S x)

/-- The coefficient functional value for the basis construction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d07fb370da9edc99f72e875de13adac15b59147c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

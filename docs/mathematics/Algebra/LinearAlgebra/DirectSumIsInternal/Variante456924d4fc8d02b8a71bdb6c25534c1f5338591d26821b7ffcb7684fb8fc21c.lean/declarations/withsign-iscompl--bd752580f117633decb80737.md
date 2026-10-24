# withSign.isCompl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0c65641d433f0a6a0f5b6d513290c30c4d2548ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:11ee840f-42ec-5eda-0683-94c3d63f8471",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e7a07e13-80e5-eb7f-cc07-52fb72f6632b",
  "kind": "theorem",
  "lexical_name": "withSign.isCompl",
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
  "slug": "withsign-iscompl--bd752580f117633decb80737",
  "source": {
    "blob": "0c65641d433f0a6a0f5b6d513290c30c4d2548ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd752580f117633decb8073755c3189856f15428bdb71dfc6e49cc1333b7e198",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7a07e13-80e5-eb7f-cc07-52fb72f6632b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem withSign.isCompl : IsCompl ℤ≥0 ℤ≤0 := by
  constructor
  · apply Submodule.disjoint_def.2
    intro x hx hx'
    exact le_antisymm (mem_withSign_neg_one.mp hx') (mem_withSign_one.mp hx)
  · rw [codisjoint_iff_le_sup]
    intro x _hx
    obtain hp | hn := (le_refl (0 : ℤ)).le_or_le x
    · exact Submodule.mem_sup_left (mem_withSign_one.mpr hp)
    · exact Submodule.mem_sup_right (mem_withSign_neg_one.mpr hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c65641d433f0a6a0f5b6d513290c30c4d2548ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

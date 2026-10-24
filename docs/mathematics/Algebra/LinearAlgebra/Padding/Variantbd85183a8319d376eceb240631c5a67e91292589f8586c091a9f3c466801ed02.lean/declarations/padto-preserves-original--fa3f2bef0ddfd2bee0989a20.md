# padTo_preserves_original

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "053a7a39abafcf395a8e961744078be20a575c20",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfb7b2e0-72d3-b8ac-9ce5-31c2c9df3dee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0f365225-8bed-e7da-03d9-3712bca35e01",
  "kind": "theorem",
  "lexical_name": "padTo_preserves_original",
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
  "slug": "padto-preserves-original--fa3f2bef0ddfd2bee0989a20",
  "source": {
    "blob": "053a7a39abafcf395a8e961744078be20a575c20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 42,
    "path": "GRWTSK/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa3f2bef0ddfd2bee0989a203d65f946cec29d72185355042e587b7450e2cb88",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f365225-8bed-e7da-03d9-3712bca35e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem padTo_preserves_original (policy : PaddingPolicy)
    (M : BinaryLogicMatrix r c) (hr : r ≤ R) (hc : c ≤ C)
    (i : Fin r) (j : Fin c) :
    (padTo policy M R C hr hc).value.cell ⟨i.val, Nat.lt_of_lt_of_le i.isLt hr⟩
      ⟨j.val, Nat.lt_of_lt_of_le j.isLt hc⟩ = M.cell i j := by
  simp [padTo]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Padding/Variantbd85183a8319d376eceb240631c5a67e91292589f8586c091a9f3c466801ed02.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `053a7a39abafcf395a8e961744078be20a575c20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

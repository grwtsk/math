# aeval_mem_adjoin_singleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f4d8907dfa7144c89e133d4bb02768fe90a764f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:be604c3a-d190-b4b7-bd49-281933b7fdd7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbd41e47-a6f0-5d07-0402-7c26d14b7d80",
  "kind": "theorem",
  "lexical_name": "aeval_mem_adjoin_singleton",
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
  "slug": "aeval-mem-adjoin-singleton--b10bf2439353fc7f15f52c1c",
  "source": {
    "blob": "2f4d8907dfa7144c89e133d4bb02768fe90a764f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 48,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b10bf2439353fc7f15f52c1c44261f719cffa3c859acac0cc40c84c26042fce1",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd41e47-a6f0-5d07-0402-7c26d14b7d80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem aeval_mem_adjoin_singleton :
    aeval x p ∈ Algebra.adjoin R {x} := by
  simpa only [Algebra.adjoin_singleton_eq_range_aeval] using Set.mem_range_self p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variant32cac4ce96ccc6cfabacaceee51c216e81d6f4af5e64ec561c3643f9ef81132d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f4d8907dfa7144c89e133d4bb02768fe90a764f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

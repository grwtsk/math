# toGraph_compl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7aeb247706fd7f50349e37ed551a0ca14b39044d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aec99078-8230-d793-8d1e-e9943a24b6bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14e07258-c592-b940-2020-cc3fa55b5eeb",
  "kind": "theorem",
  "lexical_name": "toGraph_compl_eq",
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
  "slug": "tograph-compl-eq--3a7c3e88ac9a944f48f41f23",
  "source": {
    "blob": "7aeb247706fd7f50349e37ed551a0ca14b39044d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a7c3e88ac9a944f48f41f2328726cdcc65880f90363837fc1e6e73abc85037d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14e07258-c592-b940-2020-cc3fa55b5eeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toGraph_compl_eq [MulZeroOneClass α] [Nontrivial α] (h : IsAdjMatrix A) :
    h.compl.toGraph = h.toGraphᶜ := by
  ext v w
  rcases h.zero_or_one v w with h | h <;> by_cases hvw : v = w <;> simp [Matrix.compl, h, hvw]

end IsAdjMatrix

end Compl

end Matrix

open Matrix

namespace SimpleGraph

variable (G : SimpleGraph V) [DecidableRel G.Adj]

variable (α) in
/-- `adjMatrix G α` is the matrix `A` such that `A i j = (1 : α)` if `i` and `j` are
  adjacent in the simple graph `G`, and otherwise `A i j = 0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdjMatrix/Variant156d24b9355fefed74cb1074ca2d685678c42ceab917263aebb2222d8e5159f3.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7aeb247706fd7f50349e37ed551a0ca14b39044d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

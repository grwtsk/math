# Module.finrank_bot_le_finrank_of_isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1e612be22f5f7394aa07d0c3f388790d19d4ae00",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c515202e-60f9-6f97-e796-fe321add24b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ffdd790-8a3d-bc61-9de4-995d7824372b",
  "kind": "lemma",
  "lexical_name": "Module.finrank_bot_le_finrank_of_isScalarTower",
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
  "slug": "module-finrank-bot-le-finrank-of-isscalartower--ae7e49c92cf5dbf76c08b62e",
  "source": {
    "blob": "1e612be22f5f7394aa07d0c3f388790d19d4ae00",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 540,
    "line": 521,
    "path": "GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ae7e49c92cf5dbf76c08b62e48bf3e1e0fc30d317dab8adceb132db857a4d43e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ffdd790-8a3d-bc61-9de4-995d7824372b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–540.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.finrank_bot_le_finrank_of_isScalarTower (S T : Type*) [Semiring S] [Semiring T]
    [Module R T] [Module S T] [Module R S] [IsScalarTower R S T]
    [IsScalarTower S T T] [FaithfulSMul S T] [Module.Finite R T] :
    finrank R S ≤ finrank R T :=
  finrank_le_finrank_of_rank_le_rank (lift_rank_bot_le_lift_rank_of_isScalarTower R S T)
    (Module.rank_lt_aleph0 _ _)

@[deprecated (since := "2024-11-21")]
alias LinearMap.finrank_le_of_smul_regular := LinearMap.finrank_le_of_isSMulRegular

end StrongRankCondition

namespace Submodule

variable {K M : Type*} [DivisionRing K] [AddCommGroup M] [Module K M] {s : Set M} {x : M}
  [Module.Finite K (span K s)]

variable (K s) in
/-- This is a version of `exists_linearIndependent`
with an upper estimate on the size of the finite set we choose. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StrongRankCondition/Variant0ee15b1dff3125460654a659339dc03f5897504fd91f1cb8713476d85fe8e539.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e612be22f5f7394aa07d0c3f388790d19d4ae00` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

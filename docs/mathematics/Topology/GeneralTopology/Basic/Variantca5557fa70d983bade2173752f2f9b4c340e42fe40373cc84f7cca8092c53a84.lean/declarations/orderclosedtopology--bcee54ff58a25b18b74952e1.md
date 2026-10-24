# orderClosedTopology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7fccd5f40dbd697fbe6637e90bd1b12dd9eb2c29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 387,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c84ceb04-4770-e97a-32ed-7cd9091c67d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f0d6e91-8b95-75d4-6f7a-57328dba97cd",
  "kind": "lemma",
  "lexical_name": "orderClosedTopology",
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
  "slug": "orderclosedtopology--bcee54ff58a25b18b74952e1",
  "source": {
    "blob": "7fccd5f40dbd697fbe6637e90bd1b12dd9eb2c29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 407,
    "line": 387,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcee54ff58a25b18b74952e1ce9c2fa6e883c80f85d40d706d9945fc3fa20791",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f0d6e91-8b95-75d4-6f7a-57328dba97cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–407.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma orderClosedTopology : OrderClosedTopology ℂ where
  isClosed_le' := by
    simp_rw [le_def, Set.setOf_and]
    refine IsClosed.inter (isClosed_le ?_ ?_) (isClosed_eq ?_ ?_) <;> continuity

scoped[ComplexOrder] attribute [instance] Complex.orderClosedTopology

end ComplexOrder

end Complex

namespace RCLike

open ComplexConjugate

local notation "reC" => @RCLike.re ℂ _
local notation "imC" => @RCLike.im ℂ _
local notation "IC" => @RCLike.I ℂ _
local notation "norm_sqC" => @RCLike.normSq ℂ _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantca5557fa70d983bade2173752f2f9b4c340e42fe40373cc84f7cca8092c53a84.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fccd5f40dbd697fbe6637e90bd1b12dd9eb2c29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

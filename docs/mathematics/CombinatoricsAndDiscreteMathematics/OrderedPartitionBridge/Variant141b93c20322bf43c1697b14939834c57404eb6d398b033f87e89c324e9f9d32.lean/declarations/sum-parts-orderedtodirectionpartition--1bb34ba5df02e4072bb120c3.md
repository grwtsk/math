# sum_parts_orderedToDirectionPartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aba217ba360898a36d6e04087d1064f40d157e9d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:46f71e32-809f-e023-38db-fe3193104803",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:258e5792-d5e8-fdd3-5167-dace9f3172c7",
  "kind": "theorem",
  "lexical_name": "sum_parts_orderedToDirectionPartition",
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
  "slug": "sum-parts-orderedtodirectionpartition--1bb34ba5df02e4072bb120c3",
  "source": {
    "blob": "aba217ba360898a36d6e04087d1064f40d157e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb34ba5df02e4072bb120c339a8616aa5550dde052fe8d41cc7f94c7642eaa4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:258e5792-d5e8-fdd3-5167-dace9f3172c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_parts_orderedToDirectionPartition
    {n : ℕ}
    {M : Type v}
    [AddCommMonoid M]
    (c : OrderedFinpartition n)
    (f : Finset (Fin n) → M) :
    (∑ B : (orderedToDirectionPartition c).parts, f B.1) =
      ∑ m : Fin c.length, f (orderedBlock c m) := by
  exact
    (Fintype.sum_equiv
      (orderedBlockEquivParts c)
      (fun m : Fin c.length => f (orderedBlock c m))
      (fun B : (orderedToDirectionPartition c).parts => f B.1)
      (fun m => rfl)).symm

end MomentCumulant

end FormalResearch.PositiveAtlas
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderedPartitionBridge/Variant141b93c20322bf43c1697b14939834c57404eb6d398b033f87e89c324e9f9d32.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aba217ba360898a36d6e04087d1064f40d157e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

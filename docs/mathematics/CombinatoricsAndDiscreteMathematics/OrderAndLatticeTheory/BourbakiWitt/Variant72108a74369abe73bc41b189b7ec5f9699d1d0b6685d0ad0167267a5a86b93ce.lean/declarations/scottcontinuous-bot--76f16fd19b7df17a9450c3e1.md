# ωScottContinuous.bot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "067eaa41d028bc3ad6946d3fb78b09ab95292527",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 271,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c20affe-62dc-814b-ae97-ce3609abcf73",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:858ec7f5-188b-6be9-6cb2-93f9a1a91a43",
  "kind": "lemma",
  "lexical_name": "ωScottContinuous.bot",
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
  "slug": "scottcontinuous-bot--76f16fd19b7df17a9450c3e1",
  "source": {
    "blob": "067eaa41d028bc3ad6946d3fb78b09ab95292527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:76f16fd19b7df17a9450c3e1c1f6a1203b20008e93a5a0f83061904fe13dcbc6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:858ec7f5-188b-6be9-6cb2-93f9a1a91a43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ωScottContinuous.bot : ωScottContinuous (⊥ : α → β) := by
  rw [← sSup_empty]; exact ωScottContinuous.sSup (by simp)

end CompleteLattice

namespace CompleteLattice

variable [OmegaCompletePartialOrder α] [CompleteLinearOrder β] {f g : α → β}

-- TODO Prove this result for `ScottContinuousOn` and deduce this as a special case
-- Also consider if it holds in greater generality (e.g. finite sets)
-- N.B. The Scott Topology coincides with the Upper Topology on a Complete Linear Order
-- `Topology.IsScott.scott_eq_upper_of_completeLinearOrder`
-- We have that the product topology coincides with the upper topology
-- https://github.com/leanprover-community/mathlib4/pull/12133
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `067eaa41d028bc3ad6946d3fb78b09ab95292527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

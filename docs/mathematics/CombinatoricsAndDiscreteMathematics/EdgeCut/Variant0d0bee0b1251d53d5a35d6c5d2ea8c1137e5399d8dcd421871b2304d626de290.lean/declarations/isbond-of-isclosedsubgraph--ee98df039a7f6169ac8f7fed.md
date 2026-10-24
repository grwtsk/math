# IsBond.of_isClosedSubgraph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8d24369-538d-e585-92a3-e7e700d96036",
  "kind": "lemma",
  "lexical_name": "IsBond.of_isClosedSubgraph",
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
  "slug": "isbond-of-isclosedsubgraph--ee98df039a7f6169ac8f7fed",
  "source": {
    "blob": "379c34a49c2c39672466707c06ea40ec343fef2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 199,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee98df039a7f6169ac8f7fed104427c534e380d307b4cd0d7ae736fcb5e3c4aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8d24369-538d-e585-92a3-e7e700d96036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsBond.of_isClosedSubgraph (hGH : G ≤c H) (hB : G.IsBond B) : H.IsBond B := by
  refine ⟨⟨hB.isEdgeCut.of_isClosedSubgraph hGH, hB.nonempty⟩, fun C ⟨hC, e, heC⟩ hCB ↦ ?_⟩
  exact hB.2 ⟨hC.inter_edgeSet_of_le hGH.le, e, hB.subset (hCB heC), heC⟩ (inter_subset_right
    |>.trans hCB) |>.trans inter_subset_right
alias IsClosedSubgraph.isBond := IsBond.of_isClosedSubgraph

end IsBond

end Graph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EdgeCut/Variant0d0bee0b1251d53d5a35d6c5d2ea8c1137e5399d8dcd421871b2304d626de290.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `379c34a49c2c39672466707c06ea40ec343fef2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# mem_doublyStochastic_iff_mem_rowStochastic_and_mem_colStochastic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2bc67c7c-6b4d-0f5f-e6e6-8d8763d0c5a5",
  "kind": "lemma",
  "lexical_name": "mem_doublyStochastic_iff_mem_rowStochastic_and_mem_colStochastic",
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
  "slug": "mem-doublystochastic-iff-mem-rowstochastic-and-mem-colstochastic--901825386f4b1ea4948594ad",
  "source": {
    "blob": "f6ea9e9c90a47201c6050fa65e397cf6e7f866a2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 79,
    "path": "GRWTSK/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:901825386f4b1ea4948594ad350ad9a37b814b26763e8d89d0ea9499c08c978d",
  "verification": {
    "reference": "docs/verification/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bc67c7c-6b4d-0f5f-e6e6-8d8763d0c5a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_doublyStochastic_iff_mem_rowStochastic_and_mem_colStochastic {M : Matrix n n R} :
    M ∈ doublyStochastic R n ↔ M ∈ rowStochastic R n ∧ M ∈ colStochastic R n := by
  rw [doublyStochastic_eq_rowStochastic_inf_colStochastic, Submonoid.mem_inf]

/-- Every entry of a doubly stochastic matrix is nonnegative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/DoublyStochasticMatrix/Variant42725c8f9d82b2f7e13e370c5066fb7fda49126d15d28f65f2216491aa9c8b91.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ea9e9c90a47201c6050fa65e397cf6e7f866a2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# uniformOn_add_compl_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "875ff8e3f0ff90bf86a50909d5604b375de657a4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 182,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:df9535c1-c986-8e8b-5597-17d16ef2316c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcec4215-fe60-c2ad-fd9c-54ce82f44cf3",
  "kind": "theorem",
  "lexical_name": "uniformOn_add_compl_eq",
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
  "slug": "uniformon-add-compl-eq--2eb3100f6df82f8c49a8f935",
  "source": {
    "blob": "875ff8e3f0ff90bf86a50909d5604b375de657a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 182,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2eb3100f6df82f8c49a8f93506246078ce4e4612f146a85659aa4c970f663b87",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bcec4215-fe60-c2ad-fd9c-54ce82f44cf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformOn_add_compl_eq (u t : Set Ω) (hs : s.Finite) :
    uniformOn (s ∩ u) t * uniformOn s u + uniformOn (s ∩ uᶜ) t * uniformOn s uᶜ =
      uniformOn s t := by
  -- Porting note: The original proof used `conv_rhs`. However, that tactic timed out.
  have : uniformOn s t = (uniformOn (s ∩ u) t * uniformOn (s ∩ u ∪ s ∩ uᶜ) (s ∩ u) +
      uniformOn (s ∩ uᶜ) t * uniformOn (s ∩ u ∪ s ∩ uᶜ) (s ∩ uᶜ)) := by
    rw [uniformOn_disjoint_union (hs.inter_of_left _) (hs.inter_of_left _)
      (disjoint_compl_right.mono inf_le_right inf_le_right), Set.inter_union_compl]
  rw [this]
  simp [uniformOn_inter_self hs]

end ProbabilityTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/UniformOn/Variant0ed2a2a5abdf71e4c419f56fb94c5b81c81d45a836f1f27670f38008b04fab99.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `875ff8e3f0ff90bf86a50909d5604b375de657a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

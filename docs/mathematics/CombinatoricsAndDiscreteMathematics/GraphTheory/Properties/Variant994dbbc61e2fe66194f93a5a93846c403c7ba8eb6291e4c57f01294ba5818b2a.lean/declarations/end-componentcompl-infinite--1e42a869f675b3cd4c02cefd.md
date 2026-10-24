# end_componentCompl_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2befb42ed58d87578a8636461e197ff3f2491b7d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a05ddb1-f6c1-9786-c518-71ac2be6bcbd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:39a809c8-97de-2163-9fae-c37c053afd3e",
  "kind": "lemma",
  "lexical_name": "end_componentCompl_infinite",
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
  "slug": "end-componentcompl-infinite--1e42a869f675b3cd4c02cefd",
  "source": {
    "blob": "2befb42ed58d87578a8636461e197ff3f2491b7d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e42a869f675b3cd4c02cefd8643029d451b0a2dfe9c5a0e38285b9d34efeac1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a809c8-97de-2163-9fae-c37c053afd3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma end_componentCompl_infinite (e : G.end) (K : (Finset V)ᵒᵖ) :
    ((e : (j : (Finset V)ᵒᵖ) → G.componentComplFunctor.obj j) K).supp.Infinite := by
  refine (e.val K).infinite_iff_in_all_ranges.mpr (fun L h => ?_)
  change Opposite.unop K ⊆ Opposite.unop (Opposite.op L) at h
  exact ⟨e.val (Opposite.op L), (e.prop (CategoryTheory.opHomOfLE h))⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Properties/Variant994dbbc61e2fe66194f93a5a93846c403c7ba8eb6291e4c57f01294ba5818b2a.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2befb42ed58d87578a8636461e197ff3f2491b7d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

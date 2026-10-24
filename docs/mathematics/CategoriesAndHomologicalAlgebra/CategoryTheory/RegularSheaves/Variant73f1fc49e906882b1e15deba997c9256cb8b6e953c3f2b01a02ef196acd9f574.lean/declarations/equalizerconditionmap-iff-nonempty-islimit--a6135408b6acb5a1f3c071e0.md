# equalizerConditionMap_iff_nonempty_isLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "599e7f956e2fd53c62f9090241f48c83fdbea07f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 239,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/73/73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6fbc3f57-5430-1099-0a9a-6a58231a8a21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:73d0b276-a108-be70-77b1-cee55aff50a1",
  "kind": "lemma",
  "lexical_name": "equalizerConditionMap_iff_nonempty_isLimit",
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
  "slug": "equalizerconditionmap-iff-nonempty-islimit--a6135408b6acb5a1f3c071e0",
  "source": {
    "blob": "599e7f956e2fd53c62f9090241f48c83fdbea07f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 239,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6135408b6acb5a1f3c071e0a6ff8640efbc520e5e3e48ebf20e7d07e338f1e3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73d0b276-a108-be70-77b1-cee55aff50a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equalizerConditionMap_iff_nonempty_isLimit (P : Cᵒᵖ ⥤ D) ⦃X B : C⦄ (π : X ⟶ B)
    [HasPullback π π] : SingleEqualizerCondition P π ↔
      Nonempty (IsLimit (P.mapCone
        (Sieve.ofArrows (fun (_ : Unit) => X) (fun _ => π)).arrows.cocone.op)) := by
  constructor
  · intro h
    exact ⟨isLimit_forkOfι_equiv _ _ _ (pullbackIsPullback π π) (h _ (pullbackIsPullback π π)).some⟩
  · intro ⟨h⟩
    exact fun c hc ↦ ⟨(isLimit_forkOfι_equiv _ _ _ hc).symm h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RegularSheaves/Variant73f1fc49e906882b1e15deba997c9256cb8b6e953c3f2b01a02ef196acd9f574.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599e7f956e2fd53c62f9090241f48c83fdbea07f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

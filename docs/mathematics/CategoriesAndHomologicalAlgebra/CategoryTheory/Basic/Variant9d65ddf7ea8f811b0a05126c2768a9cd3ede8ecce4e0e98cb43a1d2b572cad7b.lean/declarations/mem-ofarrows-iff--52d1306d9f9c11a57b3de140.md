# mem_ofArrows_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6a51f45ce713bc7c13905af1b24c0c3eadb3ca06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 273,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9d/9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:26944f8b-44c0-447a-cfa0-fd6c96462cc2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dbd210a9-8542-f876-bae6-06f76236dc84",
  "kind": "lemma",
  "lexical_name": "mem_ofArrows_iff",
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
  "slug": "mem-ofarrows-iff--52d1306d9f9c11a57b3de140",
  "source": {
    "blob": "6a51f45ce713bc7c13905af1b24c0c3eadb3ca06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 273,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:52d1306d9f9c11a57b3de140de728e138f3cdb6cd0dd3e39249e2ba350edb7d0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbd210a9-8542-f876-bae6-06f76236dc84`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_ofArrows_iff {W : C} (g : W ⟶ X) :
    ofArrows Y f g ↔ ∃ (i : I) (a : W ⟶ Y i), g = a ≫ f i := by
  constructor
  · rintro ⟨T, a, b, ⟨i⟩, rfl⟩
    exact ⟨i, a, rfl⟩
  · rintro ⟨i, a, rfl⟩
    apply downward_closed _ (ofArrows_mk Y f i)

variable {Y f} {W : C} {g : W ⟶ X} (hg : ofArrows Y f g)

include hg in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant9d65ddf7ea8f811b0a05126c2768a9cd3ede8ecce4e0e98cb43a1d2b572cad7b.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a51f45ce713bc7c13905af1b24c0c3eadb3ca06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

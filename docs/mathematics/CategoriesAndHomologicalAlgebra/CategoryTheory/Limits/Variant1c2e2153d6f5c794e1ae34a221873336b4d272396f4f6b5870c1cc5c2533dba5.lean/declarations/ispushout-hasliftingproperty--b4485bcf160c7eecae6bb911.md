# IsPushout.hasLiftingProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "81d7efc96fac599fc608074237dc925d650678a9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 30,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eab4afe1-5d12-2e55-13d9-95c7d6f200bc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cce80ab9-65c4-e090-8f95-5f0d6f77539c",
  "kind": "lemma",
  "lexical_name": "IsPushout.hasLiftingProperty",
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
  "slug": "ispushout-hasliftingproperty--b4485bcf160c7eecae6bb911",
  "source": {
    "blob": "81d7efc96fac599fc608074237dc925d650678a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 30,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4485bcf160c7eecae6bb91166071d266b6cb85cfccbe1be04b6e08b890e6b7a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cce80ab9-65c4-e090-8f95-5f0d6f77539c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPushout.hasLiftingProperty (h : IsPushout s f g t)
    {Z' W' : C} (g' : Z' ⟶ W') [HasLiftingProperty f g'] : HasLiftingProperty g g' where
  sq_hasLift := fun {u v} sq ↦ by
    have w : (s ≫ u) ≫ g' = f ≫ (t ≫ v) := by
      rw [← Category.assoc, ← h.w, Category.assoc, Category.assoc, sq.w]
    exact ⟨h.desc u (CommSq.mk w).lift (by rw [CommSq.fac_left]), h.inl_desc ..,
      h.hom_ext (by rw [h.inl_desc_assoc, sq.w]) (by rw [h.inr_desc_assoc, CommSq.fac_right])⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant1c2e2153d6f5c794e1ae34a221873336b4d272396f4f6b5870c1cc5c2533dba5.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81d7efc96fac599fc608074237dc925d650678a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

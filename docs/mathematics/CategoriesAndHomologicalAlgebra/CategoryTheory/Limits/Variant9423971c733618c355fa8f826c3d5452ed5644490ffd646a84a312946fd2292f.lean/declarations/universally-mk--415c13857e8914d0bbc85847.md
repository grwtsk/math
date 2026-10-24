# universally_mk'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8e4d40af86544e766a8b110c273d57db4936d35",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 914,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/94/9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:611de79e-39b7-7afe-125d-30b55855bf69",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52e0584f-a7e4-de6b-49fd-fbc7ad0ab9e2",
  "kind": "lemma",
  "lexical_name": "universally_mk'",
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
  "slug": "universally-mk--415c13857e8914d0bbc85847",
  "source": {
    "blob": "d8e4d40af86544e766a8b110c273d57db4936d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 927,
    "line": 914,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415c13857e8914d0bbc85847011b4e8006d6695f22895eac5a7fb4e950f92df5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e0584f-a7e4-de6b-49fd-fbc7ad0ab9e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 914–927.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma universally_mk' (P : MorphismProperty C) [P.RespectsIso] {X Y : C} (g : X ⟶ Y)
    (H : ∀ {T : C} (f : T ⟶ Y) [HasPullback f g], P (pullback.fst f g)) :
    universally P g := by
  introv X' h
  have := h.hasPullback
  rw [← h.isoPullback_hom_fst, P.cancel_left_of_respectsIso]
  exact H ..

end Universally

variable (P : MorphismProperty C)

/-- `P` has pullbacks if for every `f` satisfying `P`, pullbacks of arbitrary morphisms along `f`
exist. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant9423971c733618c355fa8f826c3d5452ed5644490ffd646a84a312946fd2292f.lean#L914).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8e4d40af86544e766a8b110c273d57db4936d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

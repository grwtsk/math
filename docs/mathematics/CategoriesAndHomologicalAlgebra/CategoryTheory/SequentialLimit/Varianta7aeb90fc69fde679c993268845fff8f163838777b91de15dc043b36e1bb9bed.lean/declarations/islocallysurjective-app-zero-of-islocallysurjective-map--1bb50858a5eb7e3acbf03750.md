# isLocallySurjective_π_app_zero_of_isLocallySurjective_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "66cff42314b52594d657eb0db1dcfcf2035086f2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a7/a7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:204000b9-651d-4b37-422d-23a20feed320",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bf9724de-6e05-0c40-be9a-e407645ac545",
  "kind": "lemma",
  "lexical_name": "isLocallySurjective_π_app_zero_of_isLocallySurjective_map",
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
  "slug": "islocallysurjective-app-zero-of-islocallysurjective-map--1bb50858a5eb7e3acbf03750",
  "source": {
    "blob": "66cff42314b52594d657eb0db1dcfcf2035086f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bb50858a5eb7e3acbf037506d0888d4ddbf84c0444fc829c653216ddd9f8fca",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf9724de-6e05-0c40-be9a-e407645ac545`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallySurjective_π_app_zero_of_isLocallySurjective_map  :
    Sheaf.IsLocallySurjective (c.π.app ⟨0⟩) := by
  rw [coherentTopology.isLocallySurjective_iff, regularTopology.isLocallySurjective_iff]
  intro X y
  have hh : EffectiveEpi (limit.π (preimageDiagram hF X y) ⟨0⟩) :=
    h _ fun n ↦ by simpa [preimageDiagram] using (preimageStruct hF X y).effectiveEpi n
  refine ⟨limit (preimageDiagram hF X y), limit.π (preimageDiagram hF X y) ⟨0⟩, hh,
    (coherentTopology C).yonedaEquiv (hc.lift (cone hF X y )),
    (?_ : (c.π.app (op 0)).val.app _ _ = _)⟩
  simp only [← (coherentTopology C).yonedaEquiv_comp, Functor.const_obj_obj, cone,
    IsLimit.fac, NatTrans.ofOpSequence_app, (coherentTopology C).yonedaEquiv_comp,
    (coherentTopology C).yonedaEquiv_yoneda_map]
  rfl

include h in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SequentialLimit/Varianta7aeb90fc69fde679c993268845fff8f163838777b91de15dc043b36e1bb9bed.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66cff42314b52594d657eb0db1dcfcf2035086f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

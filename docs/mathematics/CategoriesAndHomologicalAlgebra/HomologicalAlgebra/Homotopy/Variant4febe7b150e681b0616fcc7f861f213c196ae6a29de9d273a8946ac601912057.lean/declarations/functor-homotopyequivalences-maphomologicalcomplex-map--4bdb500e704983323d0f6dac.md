# Functor.homotopyEquivalences_mapHomologicalComplex_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "250f50ab6117c9ef3c5cf5daf68c0b6a1f7e0328",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 883,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4f/4febe7b150e681b0616fcc7f861f213c196ae6a29de9d273a8946ac601912057.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8a639c39-fa6c-95fd-2f1f-4c3627621ac7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d00c093b-f613-7152-6c58-7ff13a1825a9",
  "kind": "lemma",
  "lexical_name": "Functor.homotopyEquivalences_mapHomologicalComplex_map",
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
  "slug": "functor-homotopyequivalences-maphomologicalcomplex-map--4bdb500e704983323d0f6dac",
  "source": {
    "blob": "250f50ab6117c9ef3c5cf5daf68c0b6a1f7e0328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 883,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant4febe7b150e681b0616fcc7f861f213c196ae6a29de9d273a8946ac601912057.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bdb500e704983323d0f6dac81cfcf24497b7031bc8682499ebc1bfadf339a12",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant4febe7b150e681b0616fcc7f861f213c196ae6a29de9d273a8946ac601912057.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d00c093b-f613-7152-6c58-7ff13a1825a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 883–901.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Functor.homotopyEquivalences_mapHomologicalComplex_map
    (F : V ⥤ W) [F.Additive] (f : C ⟶ D) (hf : homotopyEquivalences _ _ f) :
    homotopyEquivalences _ _ ((F.mapHomologicalComplex _).map f) := by
  obtain ⟨e, rfl⟩ := hf
  exact ⟨F.mapHomotopyEquiv e, rfl⟩

end CategoryTheory

section

open HomologicalComplex CategoryTheory

variable {C : Type*} [Category* C] [Preadditive C] {ι : Type _} {c : ComplexShape ι}
  [DecidableRel c.Rel] {K L : HomologicalComplex C c} {f g : K ⟶ L}

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- A homotopy between morphisms of homological complexes `K ⟶ L` induces a homotopy
between morphisms of short complexes `K.sc i ⟶ L.sc i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant4febe7b150e681b0616fcc7f861f213c196ae6a29de9d273a8946ac601912057.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Homotopy/Variant4febe7b150e681b0616fcc7f861f213c196ae6a29de9d273a8946ac601912057.lean#L883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `250f50ab6117c9ef3c5cf5daf68c0b6a1f7e0328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

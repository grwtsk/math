# compatibilityUnit_isoZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6649e4a5cd3a05dc44fff0034451d62549787f49",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47df05ae-f068-7fa3-570a-60b947727df6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:052bcf2b-b2de-023f-5b30-927c6758e828",
  "kind": "lemma",
  "lexical_name": "compatibilityUnit_isoZero",
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
  "slug": "compatibilityunit-isozero--9485c2565dc17c37bb10d3cf",
  "source": {
    "blob": "6649e4a5cd3a05dc44fff0034451d62549787f49",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 166,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9485c2565dc17c37bb10d3cf90de2db392681ff326be563b6f5b0e30ef9e8d0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:052bcf2b-b2de-023f-5b30-927c6758e828`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma compatibilityUnit_isoZero : CompatibilityUnit adj (Functor.CommShift.isoZero F A)
    (Functor.CommShift.isoZero G A) := by
  intro
  simp only [Functor.id_obj, Functor.comp_obj, Functor.CommShift.isoZero_hom_app,
    Functor.map_comp, assoc, unit_naturality_assoc,
    ← cancel_mono ((shiftFunctorZero C A).hom.app _), ← G.map_comp_assoc, Iso.inv_hom_id_app,
    Functor.id_obj, Functor.map_id, id_comp, NatTrans.naturality, Functor.id_map, assoc, comp_id]

set_option backward.defeqAttrib.useBackward true in
/-- Given an adjunction `adj : F ⊣ G`, `a, b` in `A` and commutation isomorphisms
between shifts by `a` (resp. `b`) and `F` and `G`, if these commutation isomorphisms are
compatible with the unit of `adj`, then so are the commutation isomorphisms between shifts
by `a + b` and `F` and `G` constructed by `Functor.CommShift.isoAdd`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantf208b6b7f35bf46d76e6ff5e286edc0ace90f1b70ec07a100b548df289f7b630.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6649e4a5cd3a05dc44fff0034451d62549787f49` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

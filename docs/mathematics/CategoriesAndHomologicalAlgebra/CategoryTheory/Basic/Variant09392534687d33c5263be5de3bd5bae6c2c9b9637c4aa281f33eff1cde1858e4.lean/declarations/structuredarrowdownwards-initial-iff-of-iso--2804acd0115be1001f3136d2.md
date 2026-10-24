# structuredArrowDownwards_initial_iff_of_iso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b8ae925-5bda-0f8e-e320-2994706dd947",
  "kind": "lemma",
  "lexical_name": "structuredArrowDownwards_initial_iff_of_iso",
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
  "slug": "structuredarrowdownwards-initial-iff-of-iso--2804acd0115be1001f3136d2",
  "source": {
    "blob": "12da845dc388be8af57a56585ad58975691c08bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 280,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2804acd0115be1001f3136d28af3f322b044be095bacab4dce4d108f247aeb61",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b8ae925-5bda-0f8e-e320-2994706dd947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 280–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma structuredArrowDownwards_initial_iff_of_iso {X₂ X₂' : C₂} (e : X₂ ≅ X₂') :
    (w.structuredArrowDownwards X₂).Initial ↔
      (w.structuredArrowDownwards X₂').Initial := by
  rw [Functor.initial_iff_comp_equivalence _ (StructuredArrow.mapIso (R.mapIso e)).functor,
    Functor.initial_iff_equivalence_comp (StructuredArrow.mapIso e).functor]
  exact Functor.initial_natIso_iff
    (NatIso.ofComponents (fun _ ↦ StructuredArrow.isoMk (Iso.refl _)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant09392534687d33c5263be5de3bd5bae6c2c9b9637c4aa281f33eff1cde1858e4.lean#L280).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12da845dc388be8af57a56585ad58975691c08bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

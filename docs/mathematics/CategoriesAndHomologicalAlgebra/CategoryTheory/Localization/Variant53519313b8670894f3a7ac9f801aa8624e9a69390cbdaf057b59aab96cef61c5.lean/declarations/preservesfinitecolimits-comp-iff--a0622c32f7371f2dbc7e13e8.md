# preservesFiniteColimits_comp_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1c7da0c5-2c00-87ee-0c0f-4b536eabe743",
  "kind": "lemma",
  "lexical_name": "preservesFiniteColimits_comp_iff",
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
  "slug": "preservesfinitecolimits-comp-iff--a0622c32f7371f2dbc7e13e8",
  "source": {
    "blob": "4130052f3d18974b68f21b9e01884c8691187023",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 505,
    "line": 484,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0622c32f7371f2dbc7e13e8e034ad846c87d39c01fc06dc6d36c17a2fd00d6c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c7da0c5-2c00-87ee-0c0f-4b536eabe743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–505.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preservesFiniteColimits_comp_iff :
    PreservesFiniteColimits (L ⋙ G) ↔ PreservesFiniteColimits G := by
  let := abelian L P
  have := preservesFiniteColimits L P
  refine ⟨fun _ ↦ ?_, fun _ ↦ comp_preservesFiniteColimits _ _⟩
  have := (Localization.functor_additive_iff L P.isoModSerre G).mpr (by
    have := preservesBinaryBiproducts_of_preservesBinaryCoproducts (L ⋙ G)
    exact Functor.additive_of_preservesBinaryBiproducts _)
  refine ((Functor.preservesFiniteColimits_tfae G).out 3 4).mp (fun _ _ f ↦ ?_)
  obtain ⟨f', ⟨iso⟩⟩ :=
    (Localization.essSurj_mapArrow L P.isoModSerre).mem_essImage (Arrow.mk f)
  have : PreservesColimit (parallelPair (L.map f'.hom) 0) G :=
    preservesColimit_of_preserves_colimit_cocone
      (CokernelCofork.isColimitMapCoconeEquiv _ _
        (isColimitOfPreserves L (cokernelIsCokernel f'.hom)))
          ((CokernelCofork.isColimitMapCoconeEquiv _ G).symm
            (CokernelCofork.isColimitMapCoconeEquiv _ (L ⋙ G)
              (isColimitOfPreserves (L ⋙ G) (cokernelIsCokernel f'.hom))))
  exact preservesColimit_of_iso_diagram G
    (show parallelPair (L.map f'.hom) 0 ≅ parallelPair f 0 from
      parallelPair.ext (Arrow.leftFunc.mapIso iso) (Arrow.rightFunc.mapIso iso))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variant53519313b8670894f3a7ac9f801aa8624e9a69390cbdaf057b59aab96cef61c5.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4130052f3d18974b68f21b9e01884c8691187023` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

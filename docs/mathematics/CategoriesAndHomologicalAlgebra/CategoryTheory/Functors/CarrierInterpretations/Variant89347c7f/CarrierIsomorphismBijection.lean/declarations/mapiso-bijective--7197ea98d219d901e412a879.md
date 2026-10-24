# mapIso_bijective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91197581-3ca2-adc5-0c30-ba0b877302ca",
  "kind": "theorem",
  "lexical_name": "mapIso_bijective",
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
  "slug": "mapiso-bijective--7197ea98d219d901e412a879",
  "source": {
    "blob": "d95f1ddc7d3bd682051b7fd2c83253c4a09dbcbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/CarrierInterpretations/Variant89347c7f/CarrierIsomorphismBijection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7197ea98d219d901e412a87987dfd2a6c0fba3b9e1c0f4fc598a1968f28b353d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/CarrierInterpretations/Variant89347c7f/CarrierIsomorphismBijection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91197581-3ca2-adc5-0c30-ba0b877302ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mapIso_bijective
    {R : RealizationTheory}
    (C : CarrierRealization R)
    {X Y : R.Target}
    (i : X ≅ Y) :
    Function.Bijective (C.mapCarrier i.hom) := by
  have hleft :
      Function.LeftInverse (C.mapCarrier i.inv) (C.mapCarrier i.hom) := by
    intro x
    have hcomp := congrFun (C.map_comp i.hom i.inv) x
    rw [i.hom_inv_id] at hcomp
    have hid := congrFun (C.map_id X) x
    exact hcomp.symm.trans hid
  have hright :
      Function.RightInverse (C.mapCarrier i.inv) (C.mapCarrier i.hom) := by
    intro y
    have hcomp := congrFun (C.map_comp i.inv i.hom) y
    rw [i.inv_hom_id] at hcomp
    have hid := congrFun (C.map_id Y) y
    exact hcomp.symm.trans hid
  exact ⟨hleft.injective, hright.surjective⟩

end CarrierRealization


end GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Functors.CarrierInterpretations.Variant89347c7f
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/CarrierInterpretations/Variant89347c7f/CarrierIsomorphismBijection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functors/CarrierInterpretations/Variant89347c7f/CarrierIsomorphismBijection.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d95f1ddc7d3bd682051b7fd2c83253c4a09dbcbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# shiftFunctorAdd_hom_app_obj_of_induced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d932b8d-f5a1-0c42-5d43-648f22de487d",
  "kind": "lemma",
  "lexical_name": "shiftFunctorAdd_hom_app_obj_of_induced",
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
  "slug": "shiftfunctoradd-hom-app-obj-of-induced--307b42c035ad2af8802ed654",
  "source": {
    "blob": "5f2ba1a91580fe738f211a36d57160ad7edc127f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:307b42c035ad2af8802ed6541b7f11b3a310555c5d3b371b27165c0f61557d5d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d932b8d-f5a1-0c42-5d43-648f22de487d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma shiftFunctorAdd_hom_app_obj_of_induced (a b : A) (X : C) :
    letI := HasShift.induced F A s i
    (shiftFunctorAdd D a b).hom.app (F.obj X) =
      (i (a + b)).hom.app X ≫
        F.map ((shiftFunctorAdd C a b).hom.app X) ≫
        (i b).inv.app ((shiftFunctor C a).obj X) ≫
        (s b).map ((i a).inv.app X) := by
  simp only [ShiftMkCore.shiftFunctorAdd_eq, HasShift.Induced.add_hom_app_obj]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Induced/Variantd879cccd4f7a450fd294c0cf8f612344e102938f81bb9249ba3cf83cfb95d5d3.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f2ba1a91580fe738f211a36d57160ad7edc127f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# jointlyReflectsColimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a11f1972291d3d7aeb199c8d01bed64242d4c7e5bc392f1ef571e99b3b5fd609",
  "kind": "def",
  "lexical_name": "jointlyReflectsColimit",
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
  "slug": "jointlyreflectscolimit--b2376b1d8058bafd722bee0a",
  "source": {
    "blob": "e0f865039a4e53b9bbf9cd5f1604b1b5849f53c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfa8a53d5bbb93ae435cd89bfec9113f1899a311d39c693b1876e6f6b6a0d9500.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2376b1d8058bafd722bee0ac7b5eb316c2384da25b587969aa7cc49f7228b2c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfa8a53d5bbb93ae435cd89bfec9113f1899a311d39c693b1876e6f6b6a0d9500.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a11f1972291d3d7aeb199c8d01bed64242d4c7e5bc392f1ef571e99b3b5fd609`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def jointlyReflectsColimit
    {c : Cocone G} (hc : ∀ i, IsColimit ((F i).mapCocone c))
    [HasColimit G] [∀ i, PreservesColimit G (F i)] :
    IsColimit c := by
  suffices IsIso (colimit.desc _ c) from
    IsColimit.ofIsoColimit (colimit.isColimit _)
      (Cocone.ext (asIso (colimit.desc _ c) :))
  rw [hF.isIso_iff]
  intro i
  let H := isColimitOfPreserves (F i) (colimit.isColimit G)
  let e := IsColimit.coconePointUniqueUpToIso H (hc i)
  have : e.hom = (F i).map (colimit.desc G c) :=
    H.hom_ext (fun j ↦ by
      simpa [← Functor.map_comp] using
        IsColimit.comp_coconePointUniqueUpToIso_hom H (hc i) j)
  rw [← this]
  infer_instance

end CategoryTheory.JointlyReflectIsomorphisms
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfa8a53d5bbb93ae435cd89bfec9113f1899a311d39c693b1876e6f6b6a0d9500.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantfa8a53d5bbb93ae435cd89bfec9113f1899a311d39c693b1876e6f6b6a0d9500.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0f865039a4e53b9bbf9cd5f1604b1b5849f53c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ranObjObjIsoLimit_inv_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1014198d-05dd-129e-fd1c-0e021a2d2eb7",
  "kind": "lemma",
  "lexical_name": "ranObjObjIsoLimit_inv_π",
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
  "slug": "ranobjobjisolimit-inv--58054485d86e8ea64f72e9de",
  "source": {
    "blob": "4f0ecd6766cd7e5b09a4b5b49317e247271f3502",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 344,
    "line": 335,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantceb13b97e6e3f1716942b1dda96ee337dd7c8a753a0aaf94348ec19639e35bd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58054485d86e8ea64f72e9de1fa1cd66abc65940bc9cd0b8a9b125053c4dab00",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantceb13b97e6e3f1716942b1dda96ee337dd7c8a753a0aaf94348ec19639e35bd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1014198d-05dd-129e-fd1c-0e021a2d2eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 335–344.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ranObjObjIsoLimit_inv_π
    (F : C ⥤ H) [HasPointwiseRightKanExtension L F] (X : D) (f : StructuredArrow X L) :
    (L.ranObjObjIsoLimit F X).inv ≫ (L.ran.obj F).map f.hom ≫ (L.ranCounit.app F).app f.right =
    limit.π _ f :=
  RightExtension.IsPointwiseRightKanExtensionAt.isoLimit_inv_π (F := F)
    (isPointwiseRightKanExtensionRanCounit L F X) f

variable (H) in
/-- The right Kan extension functor `L.ran` is right adjoint to the
precomposition by `L`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantceb13b97e6e3f1716942b1dda96ee337dd7c8a753a0aaf94348ec19639e35bd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variantceb13b97e6e3f1716942b1dda96ee337dd7c8a753a0aaf94348ec19639e35bd7.lean#L335).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f0ecd6766cd7e5b09a4b5b49317e247271f3502` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

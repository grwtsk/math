# isoColimitUncurryWhiskeringLeft₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad53db4d848e69c426663172dd6ec491b804d15770dc841e5c8ebc0bcdc03c6b",
  "kind": "def",
  "lexical_name": "isoColimitUncurryWhiskeringLeft₂",
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
  "slug": "isocolimituncurrywhiskeringleft--354f21f555b41402b110cdcb",
  "source": {
    "blob": "57ba882132a202a7541fc1e8d53df7366fb4de7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:354f21f555b41402b110cdcbee701dd72503e2edcdf7029c1e5e1f7ba53a7c58",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad53db4d848e69c426663172dd6ec491b804d15770dc841e5c8ebc0bcdc03c6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def isoColimitUncurryWhiskeringLeft₂ :
    colimit (uncurry.obj (whiskeringLeft₂ C |>.obj K₁ |>.obj K₂ |>.obj G)) ≅
    (G.obj <| colimit K₁).obj (colimit K₂) :=
  isoObjCoconePointsOfIsColimit G
    (colimit.isColimit _) (colimit.isColimit _) (colimit.isColimit _) |>.symm

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- Characterize the forward direction of the isomorphism
`PreservesColimit₂.isoColimitUncurryWhiskeringLeft₂` w.r.t. the canonical maps to the colimit. -/
@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bifunctor/Variant54780684a0eaf7ed40fe9a981709bf6fcbd7a00b39ae0b0c294e60eaaa7127aa.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57ba882132a202a7541fc1e8d53df7366fb4de7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# costructuredArrowDownwardsPrecomp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cf4057393aaf7ae8a364bf4b76a5145d0a1940690c14eb567e40cc1fbddc928",
  "kind": "def",
  "lexical_name": "costructuredArrowDownwardsPrecomp",
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
  "slug": "costructuredarrowdownwardsprecomp--63ec7d922f23d1809c05f40b",
  "source": {
    "blob": "dabc4d762b3a4cf5806e97013a0af8cbe587671b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 198,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63ec7d922f23d1809c05f40bd4a982325c693b8ed5bee056a65504bc5cf1d166",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cf4057393aaf7ae8a364bf4b76a5145d0a1940690c14eb567e40cc1fbddc928`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def costructuredArrowDownwardsPrecomp
    {X₂ X₂' : C₂} {X₃ : C₃} (g : R.obj X₂ ⟶ B.obj X₃) (g' : R.obj X₂' ⟶ B.obj X₃)
    (γ : X₂' ⟶ X₂) (hγ : R.map γ ≫ g = g') :
    w.CostructuredArrowDownwards g ⥤ w.CostructuredArrowDownwards g' where
  obj A := CostructuredArrowDownwards.mk _ _ A.left.right (γ ≫ A.left.hom) A.hom.right
    (by simpa [← hγ] using R.map γ ≫= StructuredArrow.w A.hom)
  map {A A'} φ := CostructuredArrow.homMk (StructuredArrow.homMk φ.left.right (by
      dsimp
      rw [assoc, StructuredArrow.w])) (by
    ext
    dsimp
    rw [← CostructuredArrow.w φ, structuredArrowDownwards_map]
    rfl)
  map_id _ := rfl
  map_comp _ _ := rfl

end

/-- Condition on `w : TwoSquare T L R B` expressing that it is a Guitart exact square.
It is equivalent to saying that for any `X₃ : C₃`, the induced functor
`CostructuredArrow L X₃ ⥤ CostructuredArrow R (B.obj X₃)` is final (see `guitartExact_iff_final`)
or equivalently that for any `X₂ : C₂`, the induced functor
`StructuredArrow X₂ T ⥤ StructuredArrow (R.obj X₂) B` is initial (see `guitartExact_iff_initial`).
See also  `guitartExact_iff_isConnected_rightwards`, `guitartExact_iff_isConnected_downwards`
for characterizations in terms of the connectedness of auxiliary categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant951b72a43de27eb039ff551948567d39da5253383302ec4189053d88d6a15053.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dabc4d762b3a4cf5806e97013a0af8cbe587671b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# yonedaJointlyReflectsLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dc04e2aca6a2d71ca4ad7333e676e883fea8ec44ed252dcbcfb042e836a8b2f",
  "kind": "def",
  "lexical_name": "yonedaJointlyReflectsLimits",
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
  "slug": "yonedajointlyreflectslimits--2e5a32ff3cefd83816f5bf2d",
  "source": {
    "blob": "74fb3e5e50c2ed66494af5566287043540abdea7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 98,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e5a32ff3cefd83816f5bf2d1fa50c86107e29a1cdfa2a7c79740a417b5ee25a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dc04e2aca6a2d71ca4ad7333e676e883fea8ec44ed252dcbcfb042e836a8b2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def yonedaJointlyReflectsLimits (F : J ⥤ Cᵒᵖ) (c : Cone F)
    (hc : ∀ X : C, IsLimit ((yoneda.obj X).mapCone c)) : IsLimit c where
  lift s := ((hc s.pt.unop).lift ((yoneda.obj s.pt.unop).mapCone s) (𝟙 _)).op
  fac s j := Quiver.Hom.unop_inj (by
    simpa using congr_fun ((hc s.pt.unop).fac ((yoneda.obj s.pt.unop).mapCone s) j) (𝟙 _))
  uniq s m hm := Quiver.Hom.unop_inj (by
    apply (Types.isLimitEquivSections (hc s.pt.unop)).injective
    ext j
    have eq := congr_fun ((hc s.pt.unop).fac ((yoneda.obj s.pt.unop).mapCone s) j) (𝟙 _)
    dsimp at eq
    dsimp [Types.isLimitEquivSections, Types.sectionOfCone]
    rw [eq, Category.comp_id, ← hm, unop_comp])

/-- A cocone is colimit iff it becomes limit after the
application of `yoneda.obj X` for all `X : C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant5271ab3f773745c87bc0d517be56df439e49725a1cd8dd2c889436e8f25426e3.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74fb3e5e50c2ed66494af5566287043540abdea7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

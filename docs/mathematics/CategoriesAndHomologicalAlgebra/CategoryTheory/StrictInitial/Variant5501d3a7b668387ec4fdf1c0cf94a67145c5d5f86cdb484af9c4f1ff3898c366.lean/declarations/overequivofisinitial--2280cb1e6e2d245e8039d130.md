# overEquivOfIsInitial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c79cb61de72634cdad431216cf5cbeaa98128ebec2992b65fc73b9624213e8d",
  "kind": "def",
  "lexical_name": "overEquivOfIsInitial",
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
  "slug": "overequivofisinitial--2280cb1e6e2d245e8039d130",
  "source": {
    "blob": "a7955a12945c17cb6031d6cefd884b704c2cf817",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 34,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variant5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2280cb1e6e2d245e8039d1305befb6e4a93378ff264d47208412c83c2119df8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variant5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c79cb61de72634cdad431216cf5cbeaa98128ebec2992b65fc73b9624213e8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def overEquivOfIsInitial [HasStrictInitialObjects C] (X : C) (h : IsInitial X) :
    Over X ≌ Discrete PUnit.{w + 1} where
  functor := Functor.star _
  inverse := Functor.fromPUnit (.mk (𝟙 X))
  unitIso := NatIso.ofComponents fun A ↦
    haveI := h.isIso_to A.hom
    Over.isoMk (asIso A.hom)
  counitIso := Iso.refl _

set_option backward.defeqAttrib.useBackward true in
/-- If `C` has strict terminal objects and `X` is a terminal object, the category
`Under X` is equivalent to a point. -/
@[simps, pp_with_univ]
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variant5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictInitial/Variant5501d3a7b668387ec4fdf1c0cf94a67145c5d5f86cdb484af9c4f1ff3898c366.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7955a12945c17cb6031d6cefd884b704c2cf817` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

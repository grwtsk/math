# shiftFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9a1c6097a934f19152fdac11b6a2051588c5211eed7619e187e9e565b5ae44a",
  "kind": "def",
  "lexical_name": "shiftFunctor",
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
  "slug": "shiftfunctor--09c89bc74701b7fd9feff356",
  "source": {
    "blob": "57256c784ccf8c724c698711922f996d362f9b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 280,
    "line": 260,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09c89bc74701b7fd9feff356c2ac28f4e081d215cec8ef9daed0228331267c1e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9a1c6097a934f19152fdac11b6a2051588c5211eed7619e187e9e565b5ae44a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–280.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shiftFunctor (n : S) : DifferentialObject S C ⥤ DifferentialObject S C where
  obj X :=
    { obj := X.obj⟦n⟧
      d := X.d⟦n⟧' ≫ (shiftComm _ _ _).hom
      d_squared := by
        rw [Functor.map_comp, Category.assoc, shiftComm_hom_comp_assoc, ← Functor.map_comp_assoc,
          X.d_squared, Functor.map_zero, zero_comp] }
  map f :=
    { f := f.f⟦n⟧'
      comm := by
        dsimp
        rw [Category.assoc]
        erw [shiftComm_hom_comp]
        rw [← Functor.map_comp_assoc, f.comm, Functor.map_comp_assoc]
        rfl }
  map_id X := by ext1; dsimp; rw [Functor.map_id]
  map_comp f g := by ext1; dsimp; rw [Functor.map_comp]

set_option backward.defeqAttrib.useBackward true in
/-- The shift functor on `DifferentialObject S C` is additive. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57256c784ccf8c724c698711922f996d362f9b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

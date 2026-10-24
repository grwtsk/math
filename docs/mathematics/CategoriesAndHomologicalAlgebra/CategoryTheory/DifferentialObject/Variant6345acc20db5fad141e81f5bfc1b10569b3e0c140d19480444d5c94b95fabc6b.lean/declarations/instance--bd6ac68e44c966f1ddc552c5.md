# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf5828679627b20af639d77da7d400155c25ea1c26b013505ff7c1840b4b7317",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bd6ac68e44c966f1ddc552c5",
  "source": {
    "blob": "57256c784ccf8c724c698711922f996d362f9b82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 333,
    "line": 310,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd6ac68e44c966f1ddc552c5bba334433d7ab15011a5a5f8b17ef82d1225ea9d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf5828679627b20af639d77da7d400155c25ea1c26b013505ff7c1840b4b7317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–333.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasShift (DifferentialObject S C) S :=
  hasShiftMk _ _
    { F := shiftFunctor C
      zero := shiftZero C
      add := shiftFunctorAdd C
      assoc_hom_app := fun m₁ m₂ m₃ X => by
        ext1
        convert! shiftFunctorAdd_assoc_hom_app m₁ m₂ m₃ X.obj
        dsimp [shiftFunctorAdd']
        simp
      zero_add_hom_app := fun n X => by
        ext1
        convert! shiftFunctorAdd_zero_add_hom_app n X.obj
        simp
      add_zero_hom_app := fun n X => by
        ext1
        convert! shiftFunctorAdd_add_zero_hom_app n X.obj
        simp }

end

end DifferentialObject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant6345acc20db5fad141e81f5bfc1b10569b3e0c140d19480444d5c94b95fabc6b.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57256c784ccf8c724c698711922f996d362f9b82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

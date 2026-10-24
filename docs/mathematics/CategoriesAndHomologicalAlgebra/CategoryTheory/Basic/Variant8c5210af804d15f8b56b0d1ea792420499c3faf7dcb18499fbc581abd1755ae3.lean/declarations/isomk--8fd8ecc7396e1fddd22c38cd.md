# isoMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34ae46dca58757f58ec15572f280e262d9d65b02c724a71a11d2288bb2c5372d",
  "kind": "def",
  "lexical_name": "isoMk",
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
  "slug": "isomk--8fd8ecc7396e1fddd22c38cd",
  "source": {
    "blob": "0c34896d405ce7e07a812836013d00b9044580d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 120,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8fd8ecc7396e1fddd22c38cd873711a741a8314cf663d7fdc7116f242d1abd48",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34ae46dca58757f58ec15572f280e262d9d65b02c724a71a11d2288bb2c5372d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simps] def isoMk {X Y : Dial C} (e₁ : X.src ≅ Y.src) (e₂ : X.tgt ≅ Y.tgt)
    (eq : X.rel = (Subobject.pullback (prod.map e₁.hom e₂.hom)).obj Y.rel) : X ≅ Y where
  hom := {
    f := e₁.hom
    F := π₂ ≫ e₂.inv
    le := by rw [eq, ← Subobject.pullback_comp]; apply le_of_eq; congr; ext <;> simp
  }
  inv := {
    f := e₁.inv
    F := π₂ ≫ e₂.hom
    le := by rw [eq, ← Subobject.pullback_comp]; apply le_of_eq; congr; ext <;> simp
  }

end Dial

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8c5210af804d15f8b56b0d1ea792420499c3faf7dcb18499fbc581abd1755ae3.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c34896d405ce7e07a812836013d00b9044580d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

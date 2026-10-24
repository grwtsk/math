# finiteClosedHomComparison

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e4e0beafb9f6cc35f059d1af7e415d4c5edcdb6a3dfbcace4bc8037ae23fb75",
  "kind": "def",
  "lexical_name": "finiteClosedHomComparison",
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
  "slug": "finiteclosedhomcomparison--22c0ae1c93a3996353dbd871",
  "source": {
    "blob": "aa8e90849782cf2e8cb000140a3946a0d0a52618",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:22c0ae1c93a3996353dbd871356e3c794f5304a3c5e176fb231bfc6af029f95b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e4e0beafb9f6cc35f059d1af7e415d4c5edcdb6a3dfbcace4bc8037ae23fb75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteClosedHomComparison (Z : Type) : (Fin 1 → Z) ≃ (Unit → Z) where
  toFun q := fun _ => q 0
  invFun q := fun _ => q ()
  left_inv q := by
    funext a
    have ha : a = 0 := Subsingleton.elim _ _
    simp [ha]
  right_inv q := by funext a; cases a; rfl

/-- A genuinely different finite boundary codomain, with explicit comparison
maps. The transported boundary is surjective by the proved Hom mechanism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categories/Morphisms/BoundaryComparison/Variant0865c8022a8e323b/FiniteSingletonWitness.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa8e90849782cf2e8cb000140a3946a0d0a52618` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

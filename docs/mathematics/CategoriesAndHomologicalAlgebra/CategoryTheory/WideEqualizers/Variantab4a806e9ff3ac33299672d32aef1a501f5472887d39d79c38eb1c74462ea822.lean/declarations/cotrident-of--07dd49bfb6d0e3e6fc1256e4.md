# Cotrident.ofπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa6c77f0c03639c2546f9e28d54bbf305c52772bafb1507d590186d2816486d3",
  "kind": "def",
  "lexical_name": "Cotrident.ofπ",
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
  "slug": "cotrident-of--07dd49bfb6d0e3e6fc1256e4",
  "source": {
    "blob": "96ce63dcdfed356fb82ea8b33575faf723386427",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 240,
    "line": 229,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variantab4a806e9ff3ac33299672d32aef1a501f5472887d39d79c38eb1c74462ea822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:07dd49bfb6d0e3e6fc1256e442f30de421aae3e1cf27dacc1446fa384044babb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variantab4a806e9ff3ac33299672d32aef1a501f5472887d39d79c38eb1c74462ea822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa6c77f0c03639c2546f9e28d54bbf305c52772bafb1507d590186d2816486d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–240.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cotrident.ofπ [Nonempty J] {P : C} (π : Y ⟶ P) (w : ∀ j₁ j₂, f j₁ ≫ π = f j₂ ≫ π) :
    Cotrident f where
  pt := P
  ι :=
    { app := fun X => WalkingParallelFamily.casesOn X (f (Classical.arbitrary J) ≫ π) π
      naturality := fun i j f => by
        dsimp
        obtain - | k := f
        · simp
        · simp [w (Classical.arbitrary J) k] }

-- See note [dsimp, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variantab4a806e9ff3ac33299672d32aef1a501f5472887d39d79c38eb1c74462ea822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/WideEqualizers/Variantab4a806e9ff3ac33299672d32aef1a501f5472887d39d79c38eb1c74462ea822.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96ce63dcdfed356fb82ea8b33575faf723386427` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

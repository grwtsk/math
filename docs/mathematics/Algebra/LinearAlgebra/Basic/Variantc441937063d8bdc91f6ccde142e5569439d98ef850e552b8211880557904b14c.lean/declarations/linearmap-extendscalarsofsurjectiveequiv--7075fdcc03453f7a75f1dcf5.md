# LinearMap.extendScalarsOfSurjectiveEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06225f488a879341fc97a63b21f559be8a94866bed534642e5a7a4cbd229fd53",
  "kind": "def",
  "lexical_name": "LinearMap.extendScalarsOfSurjectiveEquiv",
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
  "slug": "linearmap-extendscalarsofsurjectiveequiv--7075fdcc03453f7a75f1dcf5",
  "source": {
    "blob": "16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 537,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7075fdcc03453f7a75f1dcf5a2a474d4e05e8cad42f0c9f68ba8564c3dd0edc4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06225f488a879341fc97a63b21f559be8a94866bed534642e5a7a4cbd229fd53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 537–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearMap.extendScalarsOfSurjectiveEquiv (h : Surjective (algebraMap R S)) :
    (M →ₗ[R] N) ≃ₗ[R] (M →ₗ[S] N) where
  toFun f := { __ := f, map_smul' := fun r x ↦ by obtain ⟨r, rfl⟩ := h r; simp }
  map_add' _ _ := rfl
  map_smul' _ _ := rfl
  invFun f := f.restrictScalars S
  left_inv _ := rfl
  right_inv _ := rfl

/-- If `R →+* S` is surjective, then `R`-linear maps are also `S`-linear. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantc441937063d8bdc91f6ccde142e5569439d98ef850e552b8211880557904b14c.lean#L537).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `16e299bca327ba1e4eb5cedb20afb7ed7d78bcb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

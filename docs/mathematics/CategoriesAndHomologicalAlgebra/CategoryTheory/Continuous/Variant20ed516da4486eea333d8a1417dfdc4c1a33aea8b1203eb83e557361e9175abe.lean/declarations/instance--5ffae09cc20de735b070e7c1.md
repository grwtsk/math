# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32483bec9bfa1a99e6dcdeb6875eb220a84ffb2c7b99affd5087ff558e31ff13",
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
  "slug": "instance--5ffae09cc20de735b070e7c1",
  "source": {
    "blob": "337c5f31f5f9a4c3073b8e8c5f9ddc332f4d5d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 43,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ffae09cc20de735b070e7c1959e3eda3507f1d6fec7e93e8b49c2170a8f26fd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32483bec9bfa1a99e6dcdeb6875eb220a84ffb2c7b99affd5087ff558e31ff13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : Action V G) : MulAction G ((CategoryTheory.forget₂ _ TopCat).obj X) where
  smul g x := ((CategoryTheory.forget₂ _ TopCat).map (X.ρ g)) x
  one_smul x := by
    change ((CategoryTheory.forget₂ _ TopCat).map (X.ρ 1)) x = x
    simp
  mul_smul g h x := by
    change (CategoryTheory.forget₂ _ TopCat).map (X.ρ (g * h)) x =
      ((CategoryTheory.forget₂ _ TopCat).map (X.ρ h) ≫
        (CategoryTheory.forget₂ _ TopCat).map (X.ρ g)) x
    rw [← Functor.map_comp, map_mul]
    rfl

variable {V G}

/-- For `HasForget₂ V TopCat` a predicate on an `X : Action V G` saying that the induced action on
the underlying topological space is continuous. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant20ed516da4486eea333d8a1417dfdc4c1a33aea8b1203eb83e557361e9175abe.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337c5f31f5f9a4c3073b8e8c5f9ddc332f4d5d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

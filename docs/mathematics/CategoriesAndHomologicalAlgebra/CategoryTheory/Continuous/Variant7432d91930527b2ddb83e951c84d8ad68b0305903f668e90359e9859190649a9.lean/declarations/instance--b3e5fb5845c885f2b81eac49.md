# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4fff4d19b429ddd9d143a1dc1dff6cff6f85280e65534a7ffe1b7c454c43af2c",
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
  "slug": "instance--b3e5fb5845c885f2b81eac49",
  "source": {
    "blob": "6d29b125fd73ffbdca9005486679a7a662cbe24f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3e5fb5845c885f2b81eac4921244ba002afbf74fd268d27109ce05fffb20ea0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4fff4d19b429ddd9d143a1dc1dff6cff6f85280e65534a7ffe1b7c454c43af2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–66.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Continuous/Variant7432d91930527b2ddb83e951c84d8ad68b0305903f668e90359e9859190649a9.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d29b125fd73ffbdca9005486679a7a662cbe24f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

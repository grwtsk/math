# unop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3804430a1d2d5df8976c48d11b69fe851d68a5189c8b6546e479a2b32a8e3bdd",
  "kind": "def",
  "lexical_name": "unop",
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
  "slug": "unop--c8f95f1c2f5db216caf27b98",
  "source": {
    "blob": "0c75a4d1f6f27d2e0b151a8ef1c4ba3dce63e408",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 85,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8f95f1c2f5db216caf27b98b97f477c1d5f4be11bf1c537a701cc2e201a4618",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3804430a1d2d5df8976c48d11b69fe851d68a5189c8b6546e479a2b32a8e3bdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def unop {W₁ W₂ : MorphismProperty Cᵒᵖ} {X Y : Cᵒᵖ} {f : X ⟶ Y}
    (φ : MapFactorizationData W₁ W₂ f) :
    MapFactorizationData W₂.unop W₁.unop f.unop where
  Z := φ.Z.unop
  i := φ.p.unop
  p := φ.i.unop
  hi := φ.hp
  hp := φ.hi
  fac := by simp [← unop_comp]

/-- The bijection between factorizations in `C` and factorizations in `Cᵒᵖ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Factorization/Variant2cd4c7a626aa2a409a6d20c44b63ded08a9e242ba8d1da314e8834ed6f69bd16.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c75a4d1f6f27d2e0b151a8ef1c4ba3dce63e408` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

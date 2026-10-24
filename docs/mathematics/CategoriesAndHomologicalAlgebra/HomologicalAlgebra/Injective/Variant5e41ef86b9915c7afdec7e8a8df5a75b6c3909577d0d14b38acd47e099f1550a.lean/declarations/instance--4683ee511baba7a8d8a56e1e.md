# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1977c30be14c44b7b4c2054f9f4233f43c7a6f66f94f1531b7e96324af4fcec",
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
  "slug": "instance--4683ee511baba7a8d8a56e1e",
  "source": {
    "blob": "5ca675999c7526ded33d9dcba76e9eab8d3c0de0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 189,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variant5e41ef86b9915c7afdec7e8a8df5a75b6c3909577d0d14b38acd47e099f1550a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4683ee511baba7a8d8a56e1e24e3f1ba0e5866b49c03f28efcce306be32f3c87",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variant5e41ef86b9915c7afdec7e8a8df5a75b6c3909577d0d14b38acd47e099f1550a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1977c30be14c44b7b4c2054f9f4233f43c7a6f66f94f1531b7e96324af4fcec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : (cofibrations (Plus C)).HasFactorization (trivialFibrations (Plus C)) where
  nonempty_mapFactorizationData := by
    intro ⟨K, n, hn⟩ ⟨L, m, hm⟩ ⟨f⟩
    obtain ⟨d, _, _⟩ : ∃ (d : ℤ), K.IsStrictlyGE (d + 1) ∧ L.IsStrictlyGE d :=
      ⟨min (n - 1) m, K.isStrictlyGE_of_ge _ n (by grind),
        L.isStrictlyGE_of_ge _ m (by simp)⟩
    obtain ⟨K', _, i, p, _, hp, _, fac⟩ := cm5b f d
    exact ⟨{
      Z := ⟨K', d, inferInstance⟩
      i := ObjectProperty.homMk i
      p := ObjectProperty.homMk p
      hi := by rwa [← HomotopicalAlgebra.cofibration_iff, cofibration_iff, Plus.mono_iff]
      hp := ⟨hp, by assumption⟩ }⟩

/-- The Quillen model category structure on the category `CochainComplex.Plus C`
of bounded below cochain complexes in an abelian category `C` with enough injectives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variant5e41ef86b9915c7afdec7e8a8df5a75b6c3909577d0d14b38acd47e099f1550a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Injective/Variant5e41ef86b9915c7afdec7e8a8df5a75b6c3909577d0d14b38acd47e099f1550a.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ca675999c7526ded33d9dcba76e9eab8d3c0de0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

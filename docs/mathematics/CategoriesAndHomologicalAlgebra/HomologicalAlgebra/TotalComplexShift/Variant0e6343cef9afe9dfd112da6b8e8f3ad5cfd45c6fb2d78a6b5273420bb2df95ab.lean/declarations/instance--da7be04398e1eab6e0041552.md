# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84336d5c677e2510d13f912aa9f18808b929b2e038d2854b560d2a0e28c90c1d",
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
  "slug": "instance--da7be04398e1eab6e0041552",
  "source": {
    "blob": "abc0cb5af6602eac51cb55d552ec68ee39cf7c3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 90,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:da7be04398e1eab6e00415521c1c98bebd4e987f09e4fa2668084325129e6ed7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84336d5c677e2510d13f912aa9f18808b929b2e038d2854b560d2a0e28c90c1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ((shiftFunctor₁ C x).obj K).HasTotal (up ℤ) := fun n =>
  hasCoproduct_of_equiv_of_iso (K.toGradedObject.mapObjFun (π (up ℤ) (up ℤ) (up ℤ)) (n + x)) _
    { toFun := fun ⟨⟨a, b⟩, h⟩ => ⟨⟨a + x, b⟩, by
        simp only [Set.mem_preimage, π_def, Set.mem_singleton_iff] at h ⊢
        lia⟩
      invFun := fun ⟨⟨a, b⟩, h⟩ => ⟨(a - x, b), by
        simp only [Set.mem_preimage, π_def, Set.mem_singleton_iff] at h ⊢
        lia⟩
      left_inv := by
        rintro ⟨⟨a, b⟩, h⟩
        ext
        · dsimp
          lia
        · rfl
      right_inv := by
        intro ⟨⟨a, b⟩, h⟩
        ext
        · dsimp
          lia
        · rfl }
    (fun _ => Iso.refl _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variant0e6343cef9afe9dfd112da6b8e8f3ad5cfd45c6fb2d78a6b5273420bb2df95ab.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abc0cb5af6602eac51cb55d552ec68ee39cf7c3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

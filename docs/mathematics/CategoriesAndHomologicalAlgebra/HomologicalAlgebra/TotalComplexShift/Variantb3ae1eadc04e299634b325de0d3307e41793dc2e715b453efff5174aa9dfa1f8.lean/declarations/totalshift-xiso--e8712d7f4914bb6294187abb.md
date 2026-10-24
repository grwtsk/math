# totalShift₁XIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fff0c6441f4e37f04b1ddd39b259eb319c1022c8e53422a0ac4a24b12ebf6ba7",
  "kind": "def",
  "lexical_name": "totalShift₁XIso",
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
  "slug": "totalshift-xiso--e8712d7f4914bb6294187abb",
  "source": {
    "blob": "6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8712d7f4914bb6294187abb93b84bf3d5435c62a406042e11ba5f42e9790180",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fff0c6441f4e37f04b1ddd39b259eb319c1022c8e53422a0ac4a24b12ebf6ba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def totalShift₁XIso (n n' : ℤ) (h : n + x = n') :
    (((shiftFunctor₁ C x).obj K).total (up ℤ)).X n ≅ (K.total (up ℤ)).X n' where
  hom := totalDesc _ (fun p q hpq => K.ιTotal (up ℤ) (p + x) q n' (by dsimp at hpq ⊢; omega))
  inv := totalDesc _ (fun p q hpq =>
    (K.XXIsoOfEq _ _ _ (Int.sub_add_cancel p x) rfl).inv ≫
      ((shiftFunctor₁ C x).obj K).ιTotal (up ℤ) (p - x) q n
        (by dsimp at hpq ⊢; omega))
  hom_inv_id := by
    ext p q h
    dsimp
    simp only [ι_totalDesc_assoc, CochainComplex.shiftFunctor_obj_X', ι_totalDesc, comp_id]
    exact ((shiftFunctor₁ C x).obj K).XXIsoOfEq_inv_ιTotal _ (by omega) rfl _ _
  inv_hom_id := by
    ext
    dsimp
    simp only [ι_totalDesc_assoc, Category.assoc, ι_totalDesc, XXIsoOfEq_inv_ιTotal, comp_id]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexShift/Variantb3ae1eadc04e299634b325de0d3307e41793dc2e715b453efff5174aa9dfa1f8.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cb20a0d6e20d3e0d32d1a074bab30e1b1693cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# totalFlipIsoX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68fbf425c26f326d96a64f9fb44ce3bf15716c28b58d1d099c5d212a044db43e",
  "kind": "def",
  "lexical_name": "totalFlipIsoX",
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
  "slug": "totalflipisox--a0556775ee7ce6149c5741db",
  "source": {
    "blob": "72f1b15a32582de17fc20b7ab57ac5fa3f114865",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 60,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variant0d770cd98f0b0afa7f76a4744205fae94fc7939cc192a28e27ea59de5d7ac467.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a0556775ee7ce6149c5741db6055b77694025d72577197ccb36c7607f023d710",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variant0d770cd98f0b0afa7f76a4744205fae94fc7939cc192a28e27ea59de5d7ac467.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68fbf425c26f326d96a64f9fb44ce3bf15716c28b58d1d099c5d212a044db43e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def totalFlipIsoX (j : J) : (K.flip.total c).X j ≅ (K.total c).X j where
  hom := K.flip.totalDesc (fun i₂ i₁ h => ComplexShape.σ c₁ c₂ c i₁ i₂ • K.ιTotal c i₁ i₂ j (by
    rw [← ComplexShape.π_symm c₁ c₂ c i₁ i₂, h]))
  inv := K.totalDesc (fun i₁ i₂ h => ComplexShape.σ c₁ c₂ c i₁ i₂ • K.flip.ιTotal c i₂ i₁ j (by
    rw [ComplexShape.π_symm c₁ c₂ c i₁ i₂, h]))
  hom_inv_id := by ext; simp
  inv_hom_id := by ext; simp

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variant0d770cd98f0b0afa7f76a4744205fae94fc7939cc192a28e27ea59de5d7ac467.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Variant0d770cd98f0b0afa7f76a4744205fae94fc7939cc192a28e27ea59de5d7ac467.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72f1b15a32582de17fc20b7ab57ac5fa3f114865` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

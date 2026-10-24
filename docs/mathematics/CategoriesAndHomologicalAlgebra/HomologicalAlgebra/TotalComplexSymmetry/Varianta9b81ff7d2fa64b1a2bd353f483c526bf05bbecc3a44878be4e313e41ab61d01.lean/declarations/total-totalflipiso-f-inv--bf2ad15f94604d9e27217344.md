# ιTotal_totalFlipIso_f_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47bcf297-c1e1-ec2b-f8b8-d0aa4aae16bd",
  "kind": "lemma",
  "lexical_name": "ιTotal_totalFlipIso_f_inv",
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
  "slug": "total-totalflipiso-f-inv--bf2ad15f94604d9e27217344",
  "source": {
    "blob": "399f31e17348b855463e48e5d8e8b1771d9f473e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 156,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf2ad15f94604d9e27217344d49bdc609baa6d367d1bcaf358b7014a3aeb745e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47bcf297-c1e1-ec2b-f8b8-d0aa4aae16bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιTotal_totalFlipIso_f_inv
    (i₁ : I₁) (i₂ : I₂) (j : J) (h : ComplexShape.π c₁ c₂ c (i₁, i₂) = j) :
    K.ιTotal c i₁ i₂ j h ≫ (K.totalFlipIso c).inv.f j =
      ComplexShape.σ c₁ c₂ c i₁ i₂ • K.flip.ιTotal c i₂ i₁ j
        (by rw [ComplexShape.π_symm c₁ c₂ c i₁ i₂, h]) := by
  simp [totalFlipIso, totalFlipIsoX]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplexSymmetry/Varianta9b81ff7d2fa64b1a2bd353f483c526bf05bbecc3a44878be4e313e41ab61d01.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `399f31e17348b855463e48e5d8e8b1771d9f473e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

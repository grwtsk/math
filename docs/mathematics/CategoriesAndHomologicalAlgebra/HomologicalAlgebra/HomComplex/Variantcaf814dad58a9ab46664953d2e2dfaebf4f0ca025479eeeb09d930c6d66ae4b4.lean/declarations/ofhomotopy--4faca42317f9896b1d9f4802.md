# δ_ofHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:74c3c3a2-b3a8-0adf-006e-bd866762614a",
  "kind": "lemma",
  "lexical_name": "δ_ofHomotopy",
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
  "slug": "ofhomotopy--4faca42317f9896b1d9f4802",
  "source": {
    "blob": "d7e9361b612653516a97c345f76344d476ee5410",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 543,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variantcaf814dad58a9ab46664953d2e2dfaebf4f0ca025479eeeb09d930c6d66ae4b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4faca42317f9896b1d9f4802227bfc57aa2c0b953b809fe6c64fe371fdcc4aad",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variantcaf814dad58a9ab46664953d2e2dfaebf4f0ca025479eeeb09d930c6d66ae4b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74c3c3a2-b3a8-0adf-006e-bd866762614a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 543–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma δ_ofHomotopy {φ₁ φ₂ : F ⟶ G} (h : Homotopy φ₁ φ₂) :
    δ (-1) 0 (Cochain.ofHomotopy h) = Cochain.ofHom φ₁ - Cochain.ofHom φ₂ := by
  ext p
  have eq := h.comm p
  rw [dNext_eq h.hom (show (ComplexShape.up ℤ).Rel p (p + 1) by simp),
    prevD_eq h.hom (show (ComplexShape.up ℤ).Rel (p - 1) p by simp)] at eq
  rw [Cochain.ofHomotopy, δ_v (-1) 0 (neg_add_cancel 1) _ p p (add_zero p) (p - 1) (p + 1) rfl rfl]
  simp only [Cochain.mk_v, one_smul, Int.negOnePow_zero, Cochain.sub_v, Cochain.ofHom_v, eq]
  abel

set_option backward.defeqAttrib.useBackward true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variantcaf814dad58a9ab46664953d2e2dfaebf4f0ca025479eeeb09d930c6d66ae4b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variantcaf814dad58a9ab46664953d2e2dfaebf4f0ca025479eeeb09d930c6d66ae4b4.lean#L543).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e9361b612653516a97c345f76344d476ee5410` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

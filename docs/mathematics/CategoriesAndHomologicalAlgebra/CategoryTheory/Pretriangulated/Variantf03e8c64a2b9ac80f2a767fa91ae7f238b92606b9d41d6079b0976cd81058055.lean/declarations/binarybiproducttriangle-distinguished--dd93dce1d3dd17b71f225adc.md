# binaryBiproductTriangle_distinguished

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4baf0ad5-b952-ba31-432e-7081db2bb647",
  "kind": "lemma",
  "lexical_name": "binaryBiproductTriangle_distinguished",
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
  "slug": "binarybiproducttriangle-distinguished--dd93dce1d3dd17b71f225adc",
  "source": {
    "blob": "efe56e8b52c44287b1216f437286d31488e0f58d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 529,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd93dce1d3dd17b71f225adcfade90a24e58b1a24e62bda6086924faf4a0f452",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4baf0ad5-b952-ba31-432e-7081db2bb647`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 529–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma binaryBiproductTriangle_distinguished (X₁ X₂ : C) :
    binaryBiproductTriangle X₁ X₂ ∈ distTriang C := by
  obtain ⟨Y, g, h, mem⟩ := distinguished_cocone_triangle₂ (0 : X₂ ⟶ X₁⟦(1 : ℤ)⟧)
  obtain ⟨e, ⟨he₁, he₂⟩⟩ := exists_iso_binaryBiproduct_of_distTriang _ mem rfl
  dsimp at he₁ he₂
  refine isomorphic_distinguished _ mem _ (Iso.symm ?_)
  refine Triangle.isoMk _ _ (Iso.refl _) e (Iso.refl _)
    (by aesop_cat) (by aesop_cat) (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pretriangulated/Variantf03e8c64a2b9ac80f2a767fa91ae7f238b92606b9d41d6079b0976cd81058055.lean#L529).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efe56e8b52c44287b1216f437286d31488e0f58d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

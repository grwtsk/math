# N₂Γ₂ToKaroubiIso_hom_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 133,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dca42146-531f-a0b9-4e89-865f1111190f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:72eed546-dc45-a68f-f0e3-0dedf4867807",
  "kind": "lemma",
  "lexical_name": "N₂Γ₂ToKaroubiIso_hom_app",
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
  "slug": "n-tokaroubiiso-hom-app--b2fc9280ba86ed8c44711ab0",
  "source": {
    "blob": "fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 148,
    "line": 133,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2fc9280ba86ed8c44711ab097d6d46b8b770502c1ac966a7e0628c80d8be8b9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72eed546-dc45-a68f-f0e3-0dedf4867807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–148.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma N₂Γ₂ToKaroubiIso_hom_app (X : ChainComplex C ℕ) :
    (N₂Γ₂ToKaroubiIso.hom.app X).f = PInfty := by
  ext n
  dsimp [N₂Γ₂ToKaroubiIso]
  simp only [comp_id, assoc, PInfty_f_idem]
  conv_rhs =>
    rw [← PInfty_f_idem]
  congr 1
  apply (Γ₀.splitting X).hom_ext'
  intro A
  rw [Splitting.ι_desc_assoc, assoc]
  apply id_comp

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variantb9f8cb500ac3871490af2cfe4faf2ca3738519efb7a06b6ea27851e3881dbc6d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb3796c3c8ab9d430bab1ff2f1a7dc322eababf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

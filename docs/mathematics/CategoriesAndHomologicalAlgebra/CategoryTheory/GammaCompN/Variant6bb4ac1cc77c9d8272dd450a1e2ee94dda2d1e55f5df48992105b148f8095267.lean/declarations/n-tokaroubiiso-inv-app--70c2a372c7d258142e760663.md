# N₂Γ₂ToKaroubiIso_inv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:94864f07-45af-a308-101e-afa8d63a9952",
  "kind": "lemma",
  "lexical_name": "N₂Γ₂ToKaroubiIso_inv_app",
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
  "slug": "n-tokaroubiiso-inv-app--70c2a372c7d258142e760663",
  "source": {
    "blob": "b064cd58c10259d88d5c2caefb12698c2e657ba7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70c2a372c7d258142e760663260bfa191b3651f13a2bf1986f8bae5daa5a66c3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:94864f07-45af-a308-101e-afa8d63a9952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma N₂Γ₂ToKaroubiIso_inv_app (X : ChainComplex C ℕ) :
    (N₂Γ₂ToKaroubiIso.inv.app X).f = PInfty := by
  ext n
  dsimp [N₂Γ₂ToKaroubiIso]
  simp only [comp_id, PInfty_f_idem_assoc, AlternatingFaceMapComplex.obj_X, Γ₀_obj_obj]
  convert! comp_id _
  apply (Γ₀.splitting X).hom_ext'
  intro A
  rw [Splitting.ι_desc]
  erw [comp_id, id_comp]

/-- The counit isomorphism of the Dold-Kan equivalence for additive categories. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaCompN/Variant6bb4ac1cc77c9d8272dd450a1e2ee94dda2d1e55f5df48992105b148f8095267.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b064cd58c10259d88d5c2caefb12698c2e657ba7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

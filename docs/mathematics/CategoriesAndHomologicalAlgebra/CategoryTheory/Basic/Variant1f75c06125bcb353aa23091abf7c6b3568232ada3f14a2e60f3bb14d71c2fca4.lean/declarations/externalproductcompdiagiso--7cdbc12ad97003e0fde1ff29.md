# externalProductCompDiagIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:53afe059218d5b85e361e13e218c336f6eeaad49034a8ebbfa60ca91d85a98f5",
  "kind": "def",
  "lexical_name": "externalProductCompDiagIso",
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
  "slug": "externalproductcompdiagiso--7cdbc12ad97003e0fde1ff29",
  "source": {
    "blob": "02f5e3c72b25a8e4efec520a33e89330499a8c01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 74,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cdbc12ad97003e0fde1ff29046a1562910396ddcbb435aad72a042e5f8a3847",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:53afe059218d5b85e361e13e218c336f6eeaad49034a8ebbfa60ca91d85a98f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def externalProductCompDiagIso :
    externalProductBifunctor J₁ J₁ C ⋙ (whiskeringLeft _ _ _ |>.obj <| Functor.diag J₁) ≅
    tensor (J₁ ⥤ C) :=
  NatIso.ofComponents
    (fun _ ↦ NatIso.ofComponents (fun _ ↦ Iso.refl _) (by simp [tensorHom_def]))
    (fun _ ↦ by ext; simp [tensorHom_def])

set_option backward.defeqAttrib.useBackward true in
/-- When `C` is braided, there is an isomorphism `Prod.swap _ _ ⋙ F₁ ⊠ F₂ ≅ F₂ ⊠ F₁`, natural
in both `F₁` and `F₂`.
Note that `(externalProductSwap _ _ _).app (F₁, F₂) : Prod.swap _ _ ⋙ F₁ ⊠ F₂ ≅ F₂ ⊠ F₁`
type checks. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1f75c06125bcb353aa23091abf7c6b3568232ada3f14a2e60f3bb14d71c2fca4.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02f5e3c72b25a8e4efec520a33e89330499a8c01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

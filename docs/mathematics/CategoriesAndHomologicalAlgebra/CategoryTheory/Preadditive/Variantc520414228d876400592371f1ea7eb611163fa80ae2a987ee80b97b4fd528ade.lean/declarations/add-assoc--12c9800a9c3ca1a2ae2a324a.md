# add'_assoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e71ab77a-aa7f-285a-7f7c-9a122c4062f7",
  "kind": "lemma",
  "lexical_name": "add'_assoc",
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
  "slug": "add-assoc--12c9800a9c3ca1a2ae2a324a",
  "source": {
    "blob": "5431a9a57ef29f89eb1a332e2ad01e63224093c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 177,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:12c9800a9c3ca1a2ae2a324aad5da275c70055de7dd3eca3040cbd0d12107b84",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e71ab77a-aa7f-285a-7f7c-9a122c4062f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add'_assoc (f₁ f₂ f₃ : L.obj X ⟶ L.obj Y) :
    add' W (add' W f₁ f₂) f₃ = add' W f₁ (add' W f₂ f₃) := by
  obtain ⟨α, h₁, h₂, h₃⟩ := exists_leftFraction₃ L W f₁ f₂ f₃
  rw [add'_eq W f₁ f₂ α.forgetThd h₁ h₂, add'_eq W f₂ f₃ α.forgetFst h₂ h₃,
    add'_eq W _ _ (LeftFraction₂.mk (α.f + α.f') α.f'' α.s α.hs) rfl h₃,
    add'_eq W _ _ (LeftFraction₂.mk α.f (α.f' + α.f'') α.s α.hs) h₁ rfl]
  dsimp [LeftFraction₂.add]
  rw [add_assoc]

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variantc520414228d876400592371f1ea7eb611163fa80ae2a987ee80b97b4fd528ade.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5431a9a57ef29f89eb1a332e2ad01e63224093c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

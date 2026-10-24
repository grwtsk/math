# pullbackAssoc_hom_snd_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00027c4a-cd8d-37d7-8c23-46bbe797a11d",
  "kind": "theorem",
  "lexical_name": "pullbackAssoc_hom_snd_snd",
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
  "slug": "pullbackassoc-hom-snd-snd--bb536ef53dc4735a2dcd3ef4",
  "source": {
    "blob": "268f16e6030ae4861e42f16292066ad39902d84f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb536ef53dc4735a2dcd3ef421d6d0a425fb3625e29f3c63475c204ff44a4a49",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00027c4a-cd8d-37d7-8c23-46bbe797a11d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pullbackAssoc_hom_snd_snd [HasPullback ((pullback.snd _ _ : Z₁ ⟶ X₂) ≫ f₃) f₄]
    [HasPullback f₁ ((pullback.fst _ _ : Z₂ ⟶ X₂) ≫ f₂)] :
    (pullbackAssoc f₁ f₂ f₃ f₄).hom ≫ pullback.snd _ _ ≫ pullback.snd _ _ = pullback.snd _ _ := by
  trans l₂ ≫ pullback.snd _ _
  · rw [← Category.assoc]
    congr 1
    exact IsLimit.conePointUniqueUpToIso_hom_comp _ _ WalkingCospan.right
  · exact pullback.lift_snd _ _ _

@[reassoc (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Assoc/Variant8635cf3c360aed2f19fe2abf578276cf0040768ed3cd84bc69230a2da773d8bc.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `268f16e6030ae4861e42f16292066ad39902d84f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

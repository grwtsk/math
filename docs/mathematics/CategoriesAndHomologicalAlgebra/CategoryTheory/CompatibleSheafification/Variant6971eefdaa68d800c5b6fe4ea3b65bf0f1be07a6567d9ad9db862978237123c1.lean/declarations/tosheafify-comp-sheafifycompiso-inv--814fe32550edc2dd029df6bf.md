# toSheafify_comp_sheafifyCompIso_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9be1a2a92a20155bb6ecb79425e1c620ac321f15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1aa57c82-f686-ff54-8c08-d95b42fcff35",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:284397da-221f-d0ce-ef6d-545a9dafa77a",
  "kind": "theorem",
  "lexical_name": "toSheafify_comp_sheafifyCompIso_inv",
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
  "slug": "tosheafify-comp-sheafifycompiso-inv--814fe32550edc2dd029df6bf",
  "source": {
    "blob": "9be1a2a92a20155bb6ecb79425e1c620ac321f15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 128,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:814fe32550edc2dd029df6bf80326bad2041100951f6815c27a0337cc24fdbd6",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:284397da-221f-d0ce-ef6d-545a9dafa77a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toSheafify_comp_sheafifyCompIso_inv :
    J.toSheafify _ ≫ (J.sheafifyCompIso F P).inv = whiskerRight (J.toSheafify _) _ := by
  rw [Iso.comp_inv_eq]; simp

section

-- We will sheafify `D`-valued presheaves in this section.
variable {FD : D → D → Type*} {CD : D → Type*} [∀ X Y, FunLike (FD X Y) (CD X) (CD Y)]
variable [ConcreteCategory D FD] [PreservesLimitsOfSize.{max v u, max v u} (forget D)]
  [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ (forget D)] [(forget D).ReflectsIsomorphisms]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CompatibleSheafification/Variant6971eefdaa68d800c5b6fe4ea3b65bf0f1be07a6567d9ad9db862978237123c1.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9be1a2a92a20155bb6ecb79425e1c620ac321f15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

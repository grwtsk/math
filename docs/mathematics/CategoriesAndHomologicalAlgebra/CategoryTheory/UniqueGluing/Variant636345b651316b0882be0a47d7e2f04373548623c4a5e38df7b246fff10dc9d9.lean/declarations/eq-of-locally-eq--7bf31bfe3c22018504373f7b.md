# eq_of_locally_eq₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2e83aa53504d92a9a19edee4fa2edde64b8a2a6e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f94d0be2-549c-b81e-e256-1534970c68b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a2d8705-004c-d57c-5e42-5ef96326daeb",
  "kind": "theorem",
  "lexical_name": "eq_of_locally_eq₂",
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
  "slug": "eq-of-locally-eq--7bf31bfe3c22018504373f7b",
  "source": {
    "blob": "2e83aa53504d92a9a19edee4fa2edde64b8a2a6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 334,
    "line": 313,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bf31bfe3c22018504373f7b773b023392b53ac3ed6700f6791f114808d75cd4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a2d8705-004c-d57c-5e42-5ef96326daeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–334.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_locally_eq₂ {U₁ U₂ V : Opens X} (i₁ : U₁ ⟶ V) (i₂ : U₂ ⟶ V) (hcover : V ≤ U₁ ⊔ U₂)
    (s t : F.1.obj (op V)) (h₁ : F.1.map i₁.op s = F.1.map i₁.op t)
    (h₂ : F.1.map i₂.op s = F.1.map i₂.op t) : s = t := by
  classical
    fapply F.eq_of_locally_eq' fun t : ULift Bool => if t.1 then U₁ else U₂
    · exact fun i => if h : i.1 then eqToHom (if_pos h) ≫ i₁ else eqToHom (if_neg h) ≫ i₂
    · refine' le_trans hcover _
      rw [sup_le_iff]
      constructor
      · convert le_iSup (fun t : ULift Bool => if t.1 then U₁ else U₂) (ULift.up True)
      · convert le_iSup (fun t : ULift Bool => if t.1 then U₁ else U₂) (ULift.up False)
    · rintro ⟨_ | _⟩
      any_goals exact h₁
      any_goals exact h₂
set_option linter.uppercaseLean3 false in
#align Top.sheaf.eq_of_locally_eq₂ TopCat.Sheaf.eq_of_locally_eq₂

end

end Sheaf

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UniqueGluing/Variant636345b651316b0882be0a47d7e2f04373548623c4a5e38df7b246fff10dc9d9.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e83aa53504d92a9a19edee4fa2edde64b8a2a6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

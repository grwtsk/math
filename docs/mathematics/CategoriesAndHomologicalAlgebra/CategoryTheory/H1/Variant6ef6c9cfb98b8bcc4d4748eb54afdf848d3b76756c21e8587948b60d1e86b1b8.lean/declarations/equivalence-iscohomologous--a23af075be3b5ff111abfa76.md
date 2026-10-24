# equivalence_isCohomologous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aab9012ee13603c3ff048981ce692ed8379d43e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 178,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67ab6774-d262-dc1d-9e09-d3ab4c13658f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2505b78-80ba-b1af-455b-25819f550bee",
  "kind": "lemma",
  "lexical_name": "equivalence_isCohomologous",
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
  "slug": "equivalence-iscohomologous--a23af075be3b5ff111abfa76",
  "source": {
    "blob": "aab9012ee13603c3ff048981ce692ed8379d43e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 178,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a23af075be3b5ff111abfa76c07b2f3d312b723ce75b03f2338e4845f48a3ba1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2505b78-80ba-b1af-455b-25819f550bee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma equivalence_isCohomologous :
    _root_.Equivalence (IsCohomologous (G := G) (U := U)) where
  refl γ := ⟨_, OneCohomologyRelation.refl γ.toOneCochain⟩
  symm := by
    rintro γ₁ γ₂ ⟨α, h⟩
    exact ⟨_, h.symm⟩
  trans := by
    rintro γ₁ γ₂ γ₂ ⟨α, h⟩ ⟨β, h'⟩
    exact ⟨_, h.trans h'⟩

end OneCocycle

variable (G U) in
/-- The cohomology in degree 1 of a presheaf of groups
`G : Cᵒᵖ ⥤ Grp` on a family of objects `U : I → C`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/H1/Variant6ef6c9cfb98b8bcc4d4748eb54afdf848d3b76756c21e8587948b60d1e86b1b8.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aab9012ee13603c3ff048981ce692ed8379d43e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

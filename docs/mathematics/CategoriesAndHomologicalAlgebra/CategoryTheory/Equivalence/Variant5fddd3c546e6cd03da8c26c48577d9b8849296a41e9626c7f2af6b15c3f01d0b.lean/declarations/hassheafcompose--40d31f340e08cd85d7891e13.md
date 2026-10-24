# hasSheafCompose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73e56a6bd446a5fec4ef004b7f6b786a9a734123",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58d6fa8f-0a2f-af29-68f8-a87b5ad060cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6e6ba53-f4c1-3079-af41-78f3b2d133ac",
  "kind": "theorem",
  "lexical_name": "hasSheafCompose",
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
  "slug": "hassheafcompose--40d31f340e08cd85d7891e13",
  "source": {
    "blob": "73e56a6bd446a5fec4ef004b7f6b786a9a734123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:40d31f340e08cd85d7891e13059a9e91d49e704746e4f02911acfb2ecea4fe50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6e6ba53-f4c1-3079-af41-78f3b2d133ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSheafCompose : J.HasSheafCompose F where
  isSheaf P hP := by
    have hP' : Presheaf.IsSheaf K (e.inverse.op ⋙ P ⋙ F) := by
      change Presheaf.IsSheaf K ((_ ⋙ _) ⋙ _)
      apply HasSheafCompose.isSheaf
      exact e.inverse.op_comp_isSheaf K J ⟨P, hP⟩
    replace hP' : Presheaf.IsSheaf J (e.functor.op ⋙ e.inverse.op ⋙ P ⋙ F) :=
      e.functor.op_comp_isSheaf _ _ ⟨_, hP'⟩
    exact (Presheaf.isSheaf_of_iso_iff ((isoWhiskerRight e.op.unitIso.symm (P ⋙ F)))).mp hP'

end Equivalence

variable (B : Type u₄) [Category.{v₄} B] (F : A ⥤ B)

section
variable [EssentiallySmall.{w} C]
variable [HasSheafify ((equivSmallModel C).inverse.inducedTopology J) A]
variable [((equivSmallModel C).inverse.inducedTopology J).HasSheafCompose F]

/-- Transport to a small model and sheafify there. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equivalence/Variant5fddd3c546e6cd03da8c26c48577d9b8849296a41e9626c7f2af6b15c3f01d0b.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73e56a6bd446a5fec4ef004b7f6b786a9a734123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

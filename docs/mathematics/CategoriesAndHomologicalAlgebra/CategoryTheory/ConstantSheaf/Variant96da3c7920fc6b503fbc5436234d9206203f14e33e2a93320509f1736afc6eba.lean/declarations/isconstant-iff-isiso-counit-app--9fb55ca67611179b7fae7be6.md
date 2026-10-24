# isConstant_iff_isIso_counit_app'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fadd9a877215ac2a72a54d82e58210baccfa7933",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 122,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d0e59d67-69c5-ef2e-cbb9-b30ac2e94cb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2229bc62-e95b-a873-6746-935dc570c6be",
  "kind": "lemma",
  "lexical_name": "isConstant_iff_isIso_counit_app'",
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
  "slug": "isconstant-iff-isiso-counit-app--9fb55ca67611179b7fae7be6",
  "source": {
    "blob": "fadd9a877215ac2a72a54d82e58210baccfa7933",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 122,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fb55ca67611179b7fae7be6e670e0a6e9bdd4647e43c763f258327e2b5eba26",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2229bc62-e95b-a873-6746-935dc570c6be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isConstant_iff_isIso_counit_app' {L : D ⥤ Sheaf J D} {T : C} (hT : IsTerminal T)
    (adj : L ⊣ (sheafSections J D).obj ⟨T⟩)
    [L.Faithful] [L.Full] (F : Sheaf J D) : IsConstant J F ↔ IsIso (adj.counit.app F) :=
  (isConstant_iff_mem_essImage J hT adj F).trans (isIso_counit_app_iff_mem_essImage adj).symm

end Sheaf

section Equivalence
variable {C' : Type*} [Category* C'] (K : GrothendieckTopology C') [HasWeakSheafify K D]
variable (G : C ⥤ C') [∀ (X : (C')ᵒᵖ), HasLimitsOfShape (StructuredArrow X G.op) D]
  [G.IsDenseSubsite J K] {T : C} (hT : IsTerminal T) (hT' : IsTerminal (G.obj T))

open IsDenseSubsite

variable (D) in
/--
The constant sheaf functor commutes up to isomorphism the equivalence of sheaf categories induced
by a dense subsite.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ConstantSheaf/Variant96da3c7920fc6b503fbc5436234d9206203f14e33e2a93320509f1736afc6eba.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fadd9a877215ac2a72a54d82e58210baccfa7933` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

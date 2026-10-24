# Presheaf.IsSheaf.section_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b3bf452d4712fbc6c75466affc63272f29fffb6d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:54dc102e-150b-d690-996e-6cce5240a99f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2082688c-7602-afd3-cd8e-3b285d2e25e0",
  "kind": "lemma",
  "lexical_name": "Presheaf.IsSheaf.section_ext",
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
  "slug": "presheaf-issheaf-section-ext--544c250dddd86a60a16dfb95",
  "source": {
    "blob": "b3bf452d4712fbc6c75466affc63272f29fffb6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 150,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:544c250dddd86a60a16dfb95a3d780ebf068071c17b8b82a8439c0423b21940a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2082688c-7602-afd3-cd8e-3b285d2e25e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Presheaf.IsSheaf.section_ext {X : TopCat.{u}}
    {A : Type*} [Category.{u} A] {FC : A → A → Type*} {CC : A → Type u}
    [∀ X Y : A, FunLike (FC X Y) (CC X) (CC Y)] [ConcreteCategory.{u} A FC]
    [HasLimits A] [PreservesLimits (forget A)] [(forget A).ReflectsIsomorphisms]
    {F : TopCat.Presheaf A X} (hF : TopCat.Presheaf.IsSheaf F)
    {U : (Opens X)ᵒᵖ} {s t : ToType (F.obj U)}
    (hst : ∀ x ∈ U.unop, ∃ V, ∃ hV : V ≤ U.unop, x ∈ V ∧
      F.map (homOfLE hV).op s = F.map (homOfLE hV).op t) :
    s = t := by
  have := (isSheaf_iff_isSheaf_of_type _ _).mp
    ((Presheaf.isSheaf_iff_isSheaf_forget (C := Opens X) (A' := A) _ F (forget _)).mp hF)
  choose V hV hxV H using fun x : U.unop ↦ hst x.1 x.2
  refine (this.isSheafFor _ (.ofArrows V fun x ↦ homOfLE (hV x)) ?_).isSeparatedFor.ext ?_
  · exact fun x hx ↦ ⟨V ⟨x, hx⟩, homOfLE (hV _), Sieve.le_generate _ _ (.mk _), hxV _⟩
  · rintro _ _ ⟨x⟩; exact H x

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheaf/Variant8f8ee5acbcd259b66834c1eb315f3246a783e98b323260f9503c1358f84a1121.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3bf452d4712fbc6c75466affc63272f29fffb6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

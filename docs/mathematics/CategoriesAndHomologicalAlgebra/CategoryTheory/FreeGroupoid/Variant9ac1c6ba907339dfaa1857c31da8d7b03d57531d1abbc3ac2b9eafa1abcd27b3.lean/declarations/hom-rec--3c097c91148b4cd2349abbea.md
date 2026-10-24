# hom_rec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "264710fb9a4fbb4fbfcd24508b7a68e13efa3adb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d57f215-3514-f587-7a77-ad04a49ff899",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8f0d414c-60a0-575b-2b72-58a73ce4a78e",
  "kind": "lemma",
  "lexical_name": "hom_rec",
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
  "slug": "hom-rec--3c097c91148b4cd2349abbea",
  "source": {
    "blob": "264710fb9a4fbb4fbfcd24508b7a68e13efa3adb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 148,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c097c91148b4cd2349abbea401a107766830d0c9f471b73bcc718209bee3146",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f0d414c-60a0-575b-2b72-58a73ce4a78e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hom_rec {motive : ∀ {x y : Quiver.FreeGroupoid V}, (x ⟶ y) → Prop}
    (of_map : ∀ {x y : V} (f : x ⟶ y), motive ((of V).map f))
    (inv_of_map : ∀ {x y : V} (f : x ⟶ y), motive (inv ((of V).map f)))
    (id : ∀ (x : V), motive (𝟙 ((of V).obj x)))
    (comp : ∀ {x y z : Quiver.FreeGroupoid V} (f : x ⟶ y) (g : y ⟶ z),
      motive f → motive g → motive (f ≫ g))
    {x y : Quiver.FreeGroupoid V} (f : x ⟶ y) :
    motive f := by
  have {x y : Symmetrify V} (f : x ⟶ y) :
      motive ((Quotient.functor _).map ((Paths.of _).map f)) := by
    induction f with
    | inl f => apply of_map
    | inr f => simpa only [← Groupoid.inv_eq_inv] using! inv_of_map f
  induction x with | _ x
  induction y with | _ y
  obtain ⟨f, rfl⟩ := (Quotient.functor _).map_surjective f
  induction f using Paths.induction with
  | id => apply id
  | comp p f hp => simpa using! comp _ _ hp (this f)

section UniversalProperty

variable {V' : Type u'} [Groupoid V']

/-- The lift of a prefunctor to a groupoid, to a functor from `FreeGroupoid V` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FreeGroupoid/Variant9ac1c6ba907339dfaa1857c31da8d7b03d57531d1abbc3ac2b9eafa1abcd27b3.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `264710fb9a4fbb4fbfcd24508b7a68e13efa3adb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

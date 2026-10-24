# ιFunctorObj_extension'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "205f427f692a8a9e058fa546d3d465d088f32a3a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 298,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/676e84633a31968fef9f2ec07d05be32797e6924649b48c24c543e318cb07561.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a95e1344-a32e-fa76-339a-e3625936274f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e8fb4cd5-d996-b665-3774-fd0577061e23",
  "kind": "lemma",
  "lexical_name": "ιFunctorObj_extension'",
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
  "slug": "functorobj-extension--554e672673e57d58aa45fa38",
  "source": {
    "blob": "205f427f692a8a9e058fa546d3d465d088f32a3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 298,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant676e84633a31968fef9f2ec07d05be32797e6924649b48c24c543e318cb07561.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:554e672673e57d58aa45fa38bccf8be23cda3318bb8cbc18377c00a58a1778a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant676e84633a31968fef9f2ec07d05be32797e6924649b48c24c543e318cb07561.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8fb4cd5-d996-b665-3774-fd0577061e23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 298–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιFunctorObj_extension' {X' S' Z' : C} (πX' : X' ⟶ S') (ι' : X' ⟶ Z') (πZ' : Z' ⟶ S')
    (fac' : ι' ≫ πZ' = πX') (eX : X' ≅ X) (eS : S' ≅ S) (eZ : Z' ≅ functorObj f πX)
    (commι : ι' ≫ eZ.hom = eX.hom ≫ ιFunctorObj f πX)
    (commπ : πZ' ≫ eS.hom = eZ.hom ≫ πFunctorObj f πX)
    {i : I} (t : A i ⟶ X') (b : B i ⟶ S') (fac : t ≫ πX' = f i ≫ b) :
    ∃ (l : B i ⟶ Z'), f i ≫ l = t ≫ ι' ∧ l ≫ πZ' = b := by
  obtain ⟨l, hl₁, hl₂⟩ :=
    ιFunctorObj_extension f (πX := πX) (i := i) (t ≫ eX.hom) (b ≫ eS.hom) ⟨by
      rw [assoc, ← ιFunctorObj_πFunctorObj f πX, ← reassoc_of% commι, ← commπ,
        reassoc_of% fac', reassoc_of% fac]⟩
  refine ⟨l ≫ eZ.inv, ?_, ?_⟩
  · rw [reassoc_of% hl₁, ← reassoc_of% commι, eZ.hom_inv_id, comp_id]
  · rw [← cancel_mono eS.hom, assoc, assoc, commπ, eZ.inv_hom_id_assoc, hl₂]

end

variable [HasPushouts C]
  [∀ {X S : C} (πX : X ⟶ S), HasColimitsOfShape (Discrete (FunctorObjIndex f πX)) C]

set_option backward.isDefEq.respectTransparency false in
set_option backward.defeqAttrib.useBackward true in
/-- The functor `Arrow C ⥤ Arrow C` that is constructed in order to apply the small
object argument to a family of morphisms `f i : A i ⟶ B i`, see the introduction
of the file `Mathlib/CategoryTheory/SmallObject/Construction.lean` -/
@[simps! obj map]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant676e84633a31968fef9f2ec07d05be32797e6924649b48c24c543e318cb07561.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Construction/Variant676e84633a31968fef9f2ec07d05be32797e6924649b48c24c543e318cb07561.lean#L298).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `205f427f692a8a9e058fa546d3d465d088f32a3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

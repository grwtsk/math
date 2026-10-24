# right_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "10aab376394a4e44544cc905202abd6a31ff5534",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 44,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/df/df11878d1ac68daae1dff280d375bb8a4ac43eb2dd7035f5a603b6bf54ce39aa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:048daf05-bd36-267c-2a7b-7516b0d17de4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b34beae2-2ad4-7099-7c4d-2ae2656a35a7",
  "kind": "lemma",
  "lexical_name": "right_fac",
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
  "slug": "right-fac--47e4ec83aa453c2d3bb01b50",
  "source": {
    "blob": "10aab376394a4e44544cc905202abd6a31ff5534",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variantdf11878d1ac68daae1dff280d375bb8a4ac43eb2dd7035f5a603b6bf54ce39aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47e4ec83aa453c2d3bb01b50cd00137cd7918d4d897a2d42b8c7944a8d1ee8d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variantdf11878d1ac68daae1dff280d375bb8a4ac43eb2dd7035f5a603b6bf54ce39aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b34beae2-2ad4-7099-7c4d-2ae2656a35a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma right_fac {X Y : CochainComplex C ℤ} (f : Q.obj X ⟶ Q.obj Y) :
    ∃ (X' : CochainComplex C ℤ) (s : X' ⟶ X) (_ : IsIso (Q.map s)) (g : X' ⟶ Y),
      f = inv (Q.map s) ≫ Q.map g := by
  have ⟨φ, hφ⟩ := Localization.exists_rightFraction Qh (HomotopyCategory.quasiIso C _)
    ((quotientCompQhIso C).hom.app X ≫ f ≫ (quotientCompQhIso C).inv.app Y)
  have hφ' := φ.map_s_comp_map Qh Functor.IsLocalization.inverts
  obtain ⟨X', s, hs, g, rfl⟩ := φ.cases
  obtain ⟨X', rfl⟩ := HomotopyCategory.quotient_obj_surjective X'
  obtain ⟨s, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective s
  obtain ⟨g, rfl⟩ := (HomotopyCategory.quotient _ _).map_surjective g
  dsimp at hφ'
  simp only [← hφ, ← cancel_mono ((quotientCompQhIso C).hom.app Y), Category.assoc,
    Iso.inv_hom_id_app, Category.comp_id] at hφ'
  replace hs : IsIso (Q.map s) := by
    rw [← isIso_Qh_map_iff] at hs
    exact ((MorphismProperty.isomorphisms _).arrow_mk_iso_iff
      (Arrow.isoOfNatIso (quotientCompQhIso C) (Arrow.mk s))).1 hs
  refine ⟨X', s, hs, g, ?_⟩
  rw [← cancel_epi (Q.map s), IsIso.hom_inv_id_assoc,
    ← NatIso.naturality_1_assoc (quotientCompQhIso C) s,
    ← NatIso.naturality_1 (quotientCompQhIso C) g,
    Functor.comp_map, Functor.comp_map, hφ']

/-- Any morphism `f : Q.obj X ⟶ Q.obj Y` in the derived category can be written
as `f = Q.map g ≫ inv (Q.map s)` with `g : X ⟶ Y'` and `s : Y ⟶ Y'` a quasi-isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variantdf11878d1ac68daae1dff280d375bb8a4ac43eb2dd7035f5a603b6bf54ce39aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Fractions/Variantdf11878d1ac68daae1dff280d375bb8a4ac43eb2dd7035f5a603b6bf54ce39aa.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10aab376394a4e44544cc905202abd6a31ff5534` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

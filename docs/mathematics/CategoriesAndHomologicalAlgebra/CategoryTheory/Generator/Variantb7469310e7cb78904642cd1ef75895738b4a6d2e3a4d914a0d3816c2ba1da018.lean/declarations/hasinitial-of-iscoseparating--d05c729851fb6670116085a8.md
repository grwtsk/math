# hasInitial_of_isCoseparating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 282,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:63d326fb-b202-4b53-0b5a-502537658557",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9b653fe6-a462-a957-ee7e-12a037924147",
  "kind": "theorem",
  "lexical_name": "hasInitial_of_isCoseparating",
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
  "slug": "hasinitial-of-iscoseparating--d05c729851fb6670116085a8",
  "source": {
    "blob": "87cc9d0c11c5f75f12a5e615098d2941aae08780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 307,
    "line": 282,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d05c729851fb6670116085a85e545678e48963fe274e1fd2e0abaaaeb9b1f1e8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b653fe6-a462-a957-ee7e-12a037924147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–307.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasInitial_of_isCoseparating [WellPowered C] [HasLimits C] {𝒢 : Set C} [Small.{v₁} 𝒢]
    (h𝒢 : IsCoseparating 𝒢) : HasInitial C := by
  haveI : HasProductsOfShape 𝒢 C := hasProductsOfShape_of_small C 𝒢
  haveI := fun A => hasProductsOfShape_of_small.{v₁} C (ΣG : 𝒢, A ⟶ (G : C))
  letI := completeLatticeOfCompleteSemilatticeInf (Subobject (piObj (Subtype.val : 𝒢 → C)))
  suffices ∀ A : C, Unique (((⊥ : Subobject (piObj (Subtype.val : 𝒢 → C))) : C) ⟶ A) by
    exact hasInitial_of_unique ((⊥ : Subobject (piObj (Subtype.val : 𝒢 → C))) : C)
  refine' fun A => ⟨⟨_⟩, fun f => _⟩
  · let s := Pi.lift fun f : ΣG : 𝒢, A ⟶ (G : C) => id (Pi.π (Subtype.val : 𝒢 → C)) f.1
    let t := Pi.lift (@Sigma.snd 𝒢 fun G => A ⟶ (G : C))
    haveI : Mono t := (isCoseparating_iff_mono 𝒢).1 h𝒢 A
    exact Subobject.ofLEMk _ (pullback.fst : pullback s t ⟶ _) bot_le ≫ pullback.snd
  · suffices ∀ (g : Subobject.underlying.obj ⊥ ⟶ A ), f = g by
      apply this
    intro g
    suffices IsSplitEpi (equalizer.ι f g) by exact eq_of_epi_equalizer
    exact IsSplitEpi.mk' ⟨Subobject.ofLEMk _ (equalizer.ι f g ≫ Subobject.arrow _) bot_le, by
      ext
      simp⟩
#align category_theory.has_initial_of_is_coseparating CategoryTheory.hasInitial_of_isCoseparating

/-- An ingredient of the proof of the Special Adjoint Functor Theorem: a cocomplete well-copowered
    category with a small separating set has a terminal object.

    In fact, it follows from the Special Adjoint Functor Theorem that `C` is already complete, see
    `hasLimits_of_hasColimits_of_isSeparating`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variantb7469310e7cb78904642cd1ef75895738b4a6d2e3a4d914a0d3816c2ba1da018.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87cc9d0c11c5f75f12a5e615098d2941aae08780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

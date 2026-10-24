# of_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8827ae777da5709621d4d8173cb2d41708314d5a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f27c6d6a-2604-116c-9c38-9baa362ff726",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:115acef1-ac38-fcfe-0aa5-f3fe235daa5a",
  "kind": "lemma",
  "lexical_name": "of_hom_ext",
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
  "slug": "of-hom-ext--53658af98d0e44915fcbcf4e",
  "source": {
    "blob": "8827ae777da5709621d4d8173cb2d41708314d5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 237,
    "path": "GRWTSK/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:53658af98d0e44915fcbcf4eb38baa8cd55d2ed19a2a62bde7b2955fece6e9a3",
  "verification": {
    "reference": "docs/verification/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:115acef1-ac38-fcfe-0aa5-f3fe235daa5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma of_hom_ext (f : X ⟶ Y)
    (H : ∀ (R S : CommRingCat) (φ : R ⟶ S) (_ : Function.Surjective φ)
      (_ : RingHom.ker φ.hom ^ 2 = ⊥) (g₁ g₂ : Spec R ⟶ X)
      (_ : Spec.map φ ≫ g₁ = Spec.map φ ≫ g₂) (_ : g₁ ≫ f = g₂ ≫ f), g₁ = g₂) :
    FormallyUnramified f := by
  refine ⟨fun {U hU V hV hVU} ↦ ?_⟩
  let := (f.appLE U V hVU).hom.toAlgebra
  refine Algebra.FormallyUnramified.iff_comp_injective.mpr fun R _ _ I hI g₁ g₂ hg₁g₂ ↦ ?_
  have hg₁ : f.appLE U V hVU ≫ CommRingCat.ofHom g₁ = CommRingCat.ofHom (algebraMap _ R) :=
    CommRingCat.hom_ext g₁.comp_algebraMap
  have hg₂ : f.appLE U V hVU ≫ CommRingCat.ofHom g₂ = CommRingCat.ofHom (algebraMap _ R) :=
    CommRingCat.hom_ext g₂.comp_algebraMap
  have := H (.of R) (.of (R ⧸ I)) (CommRingCat.ofHom (Ideal.Quotient.mkₐ Γ(Y, U) I))
    Ideal.Quotient.mk_surjective (by simpa)
    (Spec.map (CommRingCat.ofHom g₁) ≫ hV.fromSpec) (Spec.map (CommRingCat.ofHom g₂) ≫ hV.fromSpec)
    (by simp only [← Spec.map_comp_assoc, ← CommRingCat.ofHom_comp, ← AlgHom.comp_toRingHom, *])
    (by simp only [Category.assoc, ← hU.SpecMap_appLE_fromSpec f hV hVU, ← Spec.map_comp_assoc, *])
  rw [cancel_mono, Spec.map_inj] at this
  exact AlgHom.ext fun x ↦ congr($this x)

end FormallyUnramified

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FormallyUnramified/Variantb5178b7fbd5ba6d78e12480d829773ad16b72014c0727d559a0a3b6d24a60ba1.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8827ae777da5709621d4d8173cb2d41708314d5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

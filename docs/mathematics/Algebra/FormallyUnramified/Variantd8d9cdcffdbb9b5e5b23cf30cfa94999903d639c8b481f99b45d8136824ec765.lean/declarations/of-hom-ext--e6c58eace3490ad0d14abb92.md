# of_hom_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:337711d2-71e5-3d1a-16ac-3f5a8644b251",
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
  "slug": "of-hom-ext--e6c58eace3490ad0d14abb92",
  "source": {
    "blob": "7cae1f37c7a807e19f1382e90c51d11389c0f56b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 245,
    "path": "GRWTSK/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6c58eace3490ad0d14abb92207362c26a16d64c759e980e679bb3e43d296a9b",
  "verification": {
    "reference": "docs/verification/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:337711d2-71e5-3d1a-16ac-3f5a8644b251`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–267.

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

[Verification target and public status](../../../../../verification/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/FormallyUnramified/Variantd8d9cdcffdbb9b5e5b23cf30cfa94999903d639c8b481f99b45d8136824ec765.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cae1f37c7a807e19f1382e90c51d11389c0f56b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

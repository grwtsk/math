# stalkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a31e5104cfb3c40d4ab8b15b65a7b3d1707b7c5598d6a147a7a2c0e19787225a",
  "kind": "def",
  "lexical_name": "stalkIso",
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
  "slug": "stalkiso--60ad650325aebe7f09d0ab74",
  "source": {
    "blob": "44a65da3bac6ece773f3afe802846643ecbf2a9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 388,
    "path": "GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60ad650325aebe7f09d0ab7466ab25b9ee0eaa259aab25a06754d8376da94349",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a31e5104cfb3c40d4ab8b15b65a7b3d1707b7c5598d6a147a7a2c0e19787225a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def stalkIso (x : PrimeSpectrum.Top R) :
    TopCat.Presheaf.stalk (tildeInModuleCat M) x ≅
    ModuleCat.of R (LocalizedModule x.asIdeal.primeCompl M) where
  hom := stalkToFiberLinearMap M x
  inv := localizationToStalk M x
  hom_inv_id := TopCat.Presheaf.stalk_hom_ext _ fun U hxU ↦ ModuleCat.hom_ext <|
      LinearMap.ext fun s ↦ by
    show localizationToStalk M x (stalkToFiberLinearMap M x (M.tildeInModuleCat.germ U x hxU s)) =
      M.tildeInModuleCat.germ U x hxU s
    rw [stalkToFiberLinearMap_germ]
    obtain ⟨V, hxV, iVU, f, g, (hg : V ≤ PrimeSpectrum.basicOpen _), hs⟩ :=
      exists_const _ _ s x hxU
    have := res_apply M U V iVU s ⟨x, hxV⟩
    dsimp only [isLocallyFraction_pred, Opens.val_apply, LocalizedModule.mkLinearMap_apply,
      Opens.apply_mk] at this
    rw [← this, ← hs, const_apply, localizationToStalk_mk]
    exact (tildeInModuleCat M).germ_ext V hxV (homOfLE hg) iVU <| hs ▸ rfl
  inv_hom_id := by ext x; exact x.induction_on (fun _ _ => by
    simp only [hom_comp, LinearMap.coe_comp, Function.comp_apply, hom_id, LinearMap.id_coe, id_eq]
    rw [localizationToStalk_mk, stalkToFiberLinearMap_germ]
    simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Tilde/Variant248d5516eedc6cd35eb9c11f1f30ec6b0da729254ec348d830873387ead5ba5f.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44a65da3bac6ece773f3afe802846643ecbf2a9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# stalkIsoₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5891980befea7e0653098b3eb23a77b525ced9a3e3c37e73e3404920626c9d70",
  "kind": "def",
  "lexical_name": "stalkIsoₗ",
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
  "slug": "stalkiso--3ba67f1fcf2a332fd8ca505e",
  "source": {
    "blob": "a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 726,
    "path": "GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ba67f1fcf2a332fd8ca505e97a5f5c3e3fa737713c4808b0b8c792dc47ef7d8",
  "verification": {
    "reference": "docs/verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5891980befea7e0653098b3eb23a77b525ced9a3e3c37e73e3404920626c9d70`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 726–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def stalkIsoₗ (x : PrimeSpectrum.Top R) :
    (structurePresheafInModuleCat R M).stalk x ≅
      ↧(LocalizedModule x.asIdeal.primeCompl M) where
  hom := stalkToLocalizationₗ R M x
  inv := localizationtoStalkₗ R M x
  hom_inv_id := by
    apply stalk_hom_ext
    intro U hxU
    ext s
    obtain ⟨g, hxg, igU, f, hs⟩ :=
      exists_const _ s x hxU
    rw [germ_stalkToLocalizationₗ_assoc, Category.comp_id, ← germ_res_apply _ igU.hom _ hxg]
    refine congr(localizationtoStalkₗ R M x (openToLocalizationₗ R M _ x hxg $hs)).symm.trans ?_
    refine (localizationtoStalkₗ_mk ..).trans
      congr((structurePresheafInModuleCat R M).germ _ x hxg $hs)
  inv_hom_id := by
    ext1
    refine IsLocalizedModule.ext x.asIdeal.primeCompl (LocalizedModule.mkLinearMap ..)
      (IsLocalizedModule.map_units (LocalizedModule.mkLinearMap ..)) ?_
    ext
    dsimp [localizationtoStalkₗ]
    rw [← LocalizedModule.mkLinearMap_apply, IsLocalizedModule.lift_apply,
      elementwise_of% toStalkₗ'_stalkToFiberRingHom (M := M) x]
    simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/StructureSheaf/Variantc4d3219004e662f8e2e15cc3bef69b1c9a4c7b3ead95af956a8b77944d67538f.lean#L726).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4c4f331dfaf374d6fac8adeed4e3f2f03691dcc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

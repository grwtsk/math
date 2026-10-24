# stalkMap_toSpec

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e430d83e-f6b5-2f26-6daa-132f787946a8",
  "kind": "lemma",
  "lexical_name": "stalkMap_toSpec",
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
  "slug": "stalkmap-tospec--f97c6449596fabd98ca9a52b",
  "source": {
    "blob": "0d04853b05049acf9ec8298481993c79c9cab0d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 817,
    "line": 807,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f97c6449596fabd98ca9a52bffa7fd150fcc07366d4fccd901db576dda2a115d",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e430d83e-f6b5-2f26-6daa-132f787946a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 807–817.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stalkMap_toSpec (f) (x : pbo f) {m} (f_deg : f ∈ 𝒜 m) (hm : 0 < m) :
    (toSpec 𝒜 f).stalkMap x =
      (specStalkEquiv 𝒜 f x f_deg hm).hom ≫ (Proj.stalkIso' 𝒜 x.1).toCommRingCatIso.inv ≫
      ((Proj.toLocallyRingedSpace 𝒜).restrictStalkIso (Opens.isOpenEmbedding _) x).inv :=
  CommRingCat.hom_ext <|
    IsLocalization.ringHom_ext (R := A⁰_ f) ((toSpec 𝒜 f).base x).asIdeal.primeCompl
      (S := (Spec.structureSheaf (A⁰_ f)).presheaf.stalk ((toSpec 𝒜 f).base x)) <|
      CommRingCat.hom_ext_iff.mp <|
        (toStalk_stalkMap_toSpec _ _ _).trans <| by
        rw [awayToΓ_ΓToStalk, ← toStalk_specStalkEquiv, Category.assoc]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variantedc1150be0910f75d208b99938159fa971265563e25e60420e4fe8d7e57bab0b.lean#L807).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d04853b05049acf9ec8298481993c79c9cab0d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

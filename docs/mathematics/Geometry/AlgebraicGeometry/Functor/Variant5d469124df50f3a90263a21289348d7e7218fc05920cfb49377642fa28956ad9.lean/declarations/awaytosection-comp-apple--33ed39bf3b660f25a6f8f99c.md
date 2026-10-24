# awayToSection_comp_appLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:32b2f5b9-4c87-c3d7-40a6-e749345e492e",
  "kind": "lemma",
  "lexical_name": "awayToSection_comp_appLE",
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
  "slug": "awaytosection-comp-apple--33ed39bf3b660f25a6f8f99c",
  "source": {
    "blob": "85aac6d9427d98b0a4425d56cda6421adc018f6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 165,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33ed39bf3b660f25a6f8f99cf588021d5da23ac4cb2984c3f73f80da59b8b4f6",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32b2f5b9-4c87-c3d7-40a6-e749345e492e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[reassoc] lemma awayToSection_comp_appLE {i : ℕ} {s : A} (hs : s ∈ 𝒜 i) :
    awayToSection 𝒜 s ≫
      Scheme.Hom.appLE (map f hf) (basicOpen 𝒜 s) (basicOpen ℬ (f s)) (by rfl) =
    CommRingCat.ofHom (Away.map f s : Away 𝒜 s →+* Away ℬ (f s)) ≫
      awayToSection ℬ (f s) := by
  ext x
  obtain ⟨n, x, hx, rfl⟩ := x.mk_surjective _ hs
  simp only [CommRingCat.hom_comp, RingHom.coe_comp, Function.comp_apply, CommRingCat.hom_ofHom,
    Away.map_mk]
  refine Subtype.ext <| funext fun p ↦ ?_
  change HomogeneousLocalization.mk _ = .mk _
  ext
  simp

set_option backward.isDefEq.respectTransparency false in
/--
The following square commutes:
```
Proj ℬ         ⟶ Proj 𝒜₁
    ^                   ^
    |                   |
Spec A₂[f(s)⁻¹]₀ ⟶ Spec A₁[s⁻¹]₀
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Functor/Variant5d469124df50f3a90263a21289348d7e7218fc05920cfb49377642fa28956ad9.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85aac6d9427d98b0a4425d56cda6421adc018f6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# subsingleton_gcdMonoid_of_unique_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e3a3fe774136d241bfbbb27329a070d44a3f2a8da2fca9db240a16542c63fee",
  "kind": "instance",
  "lexical_name": "subsingleton_gcdMonoid_of_unique_units",
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
  "slug": "subsingleton-gcdmonoid-of-unique-units--662d4cf8ea9a8377e53133d2",
  "source": {
    "blob": "7d4da1132cb4c4293d9b9a11b5c082de3e539316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 936,
    "line": 917,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:662d4cf8ea9a8377e53133d274498a29898b1b0037485a819d9c1efcbcf46f6c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e3a3fe774136d241bfbbb27329a070d44a3f2a8da2fca9db240a16542c63fee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 917–936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance subsingleton_gcdMonoid_of_unique_units : Subsingleton (GCDMonoid α) :=
  ⟨fun g₁ g₂ => by
    have hgcd : g₁.gcd = g₂.gcd := by
      ext a b
      refine' associated_iff_eq.mp (associated_of_dvd_dvd _ _)
      -- Porting note: Lean4 seems to need help specifying `g₁` and `g₂`
      · exact dvd_gcd (@gcd_dvd_left _ _ g₁ _ _) (@gcd_dvd_right _ _ g₁ _ _)
      · exact @dvd_gcd _ _ g₁ _ _ _ (@gcd_dvd_left _ _ g₂ _ _) (@gcd_dvd_right _ _ g₂ _ _)
    have hlcm : g₁.lcm = g₂.lcm := by
      ext a b
      -- Porting note: Lean4 seems to need help specifying `g₁` and `g₂`
      refine' associated_iff_eq.mp (associated_of_dvd_dvd _ _)
      · exact (@lcm_dvd_iff _ _ g₁ ..).mpr ⟨@dvd_lcm_left _ _ g₂ _ _, @dvd_lcm_right _ _ g₂ _ _⟩
      · exact lcm_dvd_iff.mpr ⟨@dvd_lcm_left _ _ g₁ _ _, @dvd_lcm_right _ _ g₁ _ _⟩
    cases g₁
    cases g₂
    dsimp only at hgcd hlcm
    simp only [hgcd, hlcm]⟩
#align subsingleton_gcd_monoid_of_unique_units subsingleton_gcdMonoid_of_unique_units

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant5d5570517da9e8f05394e9c555bfbcc88c27c982a2ed52334a3d771b17297af4.lean#L917).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d4da1132cb4c4293d9b9a11b5c082de3e539316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

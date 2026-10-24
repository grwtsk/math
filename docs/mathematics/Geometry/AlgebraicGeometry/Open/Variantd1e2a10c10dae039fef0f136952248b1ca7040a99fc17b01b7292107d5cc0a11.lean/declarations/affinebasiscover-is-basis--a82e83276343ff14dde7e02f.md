# affineBasisCover_is_basis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5d368f6-986c-6c4d-c626-91d0d4b3ca46",
  "kind": "theorem",
  "lexical_name": "affineBasisCover_is_basis",
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
  "slug": "affinebasiscover-is-basis--a82e83276343ff14dde7e02f",
  "source": {
    "blob": "8f8aa5beeeef1ef909f1abbd57e480dea0eacee0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 296,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a82e83276343ff14dde7e02f0e04ac8e40fcd59d8c18de969cb42981cf93bbde",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b5d368f6-986c-6c4d-c626-91d0d4b3ca46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem affineBasisCover_is_basis (X : Scheme.{u}) :
    TopologicalSpace.IsTopologicalBasis
      {x : Set X |
        ∃ a : X.affineBasisCover.J, x = Set.range (X.affineBasisCover.map a).base} := by
  apply TopologicalSpace.isTopologicalBasis_of_isOpen_of_nhds
  · rintro _ ⟨a, rfl⟩
    exact IsOpenImmersion.isOpen_range (X.affineBasisCover.map a)
  · rintro a U haU hU
    rcases X.affineCover.covers a with ⟨x, e⟩
    let U' := (X.affineCover.map (X.affineCover.f a)).base ⁻¹' U
    have hxU' : x ∈ U' := by rw [← e] at haU; exact haU
    rcases PrimeSpectrum.isBasis_basic_opens.exists_subset_of_mem_open hxU'
        ((X.affineCover.map (X.affineCover.f a)).base.hom.continuous_toFun.isOpen_preimage _
          hU) with
      ⟨_, ⟨_, ⟨s, rfl⟩, rfl⟩, hxV, hVU⟩
    refine ⟨_, ⟨⟨_, s⟩, rfl⟩, ?_, ?_⟩ <;> rw [affineBasisCover_map_range]
    · exact ⟨x, hxV, e⟩
    · rw [Set.image_subset_iff]; exact hVU

end deprecated

end Scheme

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Open/Variantd1e2a10c10dae039fef0f136952248b1ca7040a99fc17b01b7292107d5cc0a11.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f8aa5beeeef1ef909f1abbd57e480dea0eacee0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

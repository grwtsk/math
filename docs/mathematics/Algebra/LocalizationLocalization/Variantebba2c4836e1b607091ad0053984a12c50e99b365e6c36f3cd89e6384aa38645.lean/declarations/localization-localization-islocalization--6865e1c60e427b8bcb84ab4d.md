# localization_localization_isLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4376d737-b904-0ae1-b009-455ac1101b8d",
  "kind": "theorem",
  "lexical_name": "localization_localization_isLocalization",
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
  "slug": "localization-localization-islocalization--6865e1c60e427b8bcb84ab4d",
  "source": {
    "blob": "9273b387704f3c74498686d78c13ece4446a271e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 130,
    "path": "GRWTSK/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6865e1c60e427b8bcb84ab4dfc446cd4355d170b40b7454f531e6e41233b62e9",
  "verification": {
    "reference": "docs/verification/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4376d737-b904-0ae1-b009-455ac1101b8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem localization_localization_isLocalization [IsLocalization N T] :
    IsLocalization (localizationLocalizationSubmodule M N) T :=
  { map_units' := localization_localization_map_units M N T
    surj' := localization_localization_surj M N T
    eq_iff_exists' := localization_localization_eq_iff_exists M N T _ _ }
#align is_localization.localization_localization_is_localization IsLocalization.localization_localization_isLocalization

/-- Given submodules `M ⊆ R` and `N ⊆ S = M⁻¹R`, with `f : R →+* S` the localization map, if
`N` contains all the units of `S`, then `N ⁻¹ S = T = (f⁻¹ N) ⁻¹ R`. I.e., the localization of a
localization is a localization.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LocalizationLocalization/Variantebba2c4836e1b607091ad0053984a12c50e99b365e6c36f3cd89e6384aa38645.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9273b387704f3c74498686d78c13ece4446a271e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

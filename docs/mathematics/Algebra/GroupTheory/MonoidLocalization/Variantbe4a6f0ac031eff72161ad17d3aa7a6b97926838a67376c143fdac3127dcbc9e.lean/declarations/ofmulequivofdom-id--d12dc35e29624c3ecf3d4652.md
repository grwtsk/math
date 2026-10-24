# ofMulEquivOfDom_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fa15e06-cfa3-4d35-2416-4227e53a200b",
  "kind": "theorem",
  "lexical_name": "ofMulEquivOfDom_id",
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
  "slug": "ofmulequivofdom-id--d12dc35e29624c3ecf3d4652",
  "source": {
    "blob": "d763b5e7340438b0e55f07a622ee474b3f3cc701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1558,
    "line": 1546,
    "path": "GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d12dc35e29624c3ecf3d46522d14f641f4ad072f03fd5e8799cf06b9cefea077",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa15e06-cfa3-4d35-2416-4227e53a200b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1546–1558.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofMulEquivOfDom_id :
    f.ofMulEquivOfDom
        (show S.map (MulEquiv.refl M).toMonoidHom = S from
          Submonoid.ext fun x ↦ ⟨fun ⟨_, hy, h⟩ ↦ h ▸ hy, fun h ↦ ⟨x, h, rfl⟩⟩) = f :=
  by ext; rfl
#align submonoid.localization_map.of_mul_equiv_of_dom_id Submonoid.LocalizationMap.ofMulEquivOfDom_id
#align add_submonoid.localization_map.of_add_equiv_of_dom_id AddSubmonoid.LocalizationMap.ofAddEquivOfDom_id

/-- Given Localization maps `f : M →* N, k : P →* U` for Submonoids `S, T` respectively, an
isomorphism `j : M ≃* P` such that `j(S) = T` induces an isomorphism of localizations `N ≃* U`. -/
@[to_additive
    "Given Localization maps `f : M →+ N, k : P →+ U` for Submonoids `S, T` respectively, an
isomorphism `j : M ≃+ P` such that `j(S) = T` induces an isomorphism of localizations `N ≃+ U`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MonoidLocalization/Variantbe4a6f0ac031eff72161ad17d3aa7a6b97926838a67376c143fdac3127dcbc9e.lean#L1546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d763b5e7340438b0e55f07a622ee474b3f3cc701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

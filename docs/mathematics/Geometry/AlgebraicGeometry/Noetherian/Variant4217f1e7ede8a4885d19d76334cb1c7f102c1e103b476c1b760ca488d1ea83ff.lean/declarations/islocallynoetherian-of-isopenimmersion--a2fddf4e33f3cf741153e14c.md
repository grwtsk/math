# isLocallyNoetherian_of_isOpenImmersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7631cc08-4e94-5713-1f61-37f114ecc5e2",
  "kind": "lemma",
  "lexical_name": "isLocallyNoetherian_of_isOpenImmersion",
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
  "slug": "islocallynoetherian-of-isopenimmersion--a2fddf4e33f3cf741153e14c",
  "source": {
    "blob": "3549691ce579a878860bdfe2cee39086189be3c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 158,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a2fddf4e33f3cf741153e14cf5f9649ffbe8979d48f1dc96e6125a6e35718670",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7631cc08-4e94-5713-1f61-37f114ecc5e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isLocallyNoetherian_of_isOpenImmersion {Y : Scheme} (f : X ⟶ Y) [IsOpenImmersion f]
    [IsLocallyNoetherian Y] : IsLocallyNoetherian X where
  component_noetherian U :=
    have : IsNoetherianRing ↑Γ(Y, f ''ᵁ ↑U) :=
      IsLocallyNoetherian.component_noetherian ⟨_, U.2.image_of_isOpenImmersion f⟩
    isNoetherianRing_of_surjective _ _ _ (f.appIso U).commRingCatIsoToRingEquiv.surjective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3549691ce579a878860bdfe2cee39086189be3c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

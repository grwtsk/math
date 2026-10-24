# isLocallyNoetherian_of_affine_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5250730-20a6-70e5-1a08-f8a1277d8404",
  "kind": "theorem",
  "lexical_name": "isLocallyNoetherian_of_affine_cover",
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
  "slug": "islocallynoetherian-of-affine-cover--cbb6b0313d0f69c7ca5d5846",
  "source": {
    "blob": "3549691ce579a878860bdfe2cee39086189be3c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 110,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbb6b0313d0f69c7ca5d584680ffb1744fe11e9b9ac4070d30156370bb977a06",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5250730-20a6-70e5-1a08-f8a1277d8404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isLocallyNoetherian_of_affine_cover {ι} {S : ι → X.affineOpens}
    (hS : (⨆ i, S i : X.Opens) = ⊤)
    (hS' : ∀ i, IsNoetherianRing Γ(X, S i)) : IsLocallyNoetherian X := by
  refine ⟨fun U => ?_⟩
  induction U using of_affine_open_cover S hS with
  | basicOpen U f hN =>
    have := U.prop.isLocalization_basicOpen f
    exact IsLocalization.isNoetherianRing (.powers f) Γ(X, X.basicOpen f) hN
  | openCover U s _ hN =>
    apply isNoetherianRing_of_away s ‹_›
    intro ⟨f, hf⟩
    have : IsNoetherianRing Γ(X, X.basicOpen f) := hN ⟨f, hf⟩
    have := U.prop.isLocalization_basicOpen f
    have hEq := IsLocalization.algEquiv (.powers f) (Localization.Away f) Γ(X, X.basicOpen f)
    exact isNoetherianRing_of_ringEquiv Γ(X, X.basicOpen f) hEq.symm.toRingEquiv
  | hU => exact hS' _

/-- A scheme is locally Noetherian if and only if it is covered by affine opens whose sections
are Noetherian rings.

See [Har77], Proposition II.3.2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Noetherian/Variant4217f1e7ede8a4885d19d76334cb1c7f102c1e103b476c1b760ca488d1ea83ff.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3549691ce579a878860bdfe2cee39086189be3c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

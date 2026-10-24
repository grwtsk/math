# isNoetherian_of_finite_isArtinian

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54c4d08d-fe8b-388e-4138-d1e73d7998e8",
  "kind": "theorem",
  "lexical_name": "isNoetherian_of_finite_isArtinian",
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
  "slug": "isnoetherian-of-finite-isartinian--017aaf335b2442add37d061c",
  "source": {
    "blob": "92bafdef8e2b44b9c55da9705d47d054d3ea0313",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 136,
    "path": "GRWTSK/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:017aaf335b2442add37d061cc12a983e999176294c50677e605fdb22718ffff3",
  "verification": {
    "reference": "docs/verification/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54c4d08d-fe8b-388e-4138-d1e73d7998e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNoetherian_of_finite_isArtinian {R} [CommRing R] [Module R M]
    [Module.Finite R M] [IsArtinian R M] : IsNoetherian R M := by
  obtain ⟨s, fin, span⟩ := Submodule.fg_def.mp (Module.finite_def.mp ‹_›)
  rw [← s.iUnion_of_singleton_coe, Submodule.span_iUnion] at span
  rw [← Set.finite_coe_iff] at fin
  rw [← isNoetherian_top_iff, ← span]
  have _ (i : M) : IsNoetherian R (Submodule.span R {i}) := by
    rw [LinearMap.span_singleton_eq_range, ← (LinearMap.quotKerEquivRange _).isNoetherian_iff]
    let e (I : Ideal R) : R ⧸ I →ₛₗ[Ideal.Quotient.mk I] R ⧸ I := ⟨.id _, fun _ _ ↦ rfl⟩
    rw [(e _).isNoetherian_iff_of_bijective Function.bijective_id]
    refine @instIsNoetherianRingOfIsArtinianRing _ _ ?_
    rw [IsArtinianRing, ← (e _).isArtinian_iff_of_bijective Function.bijective_id,
      (LinearMap.quotKerEquivRange _).isArtinian_iff]
    infer_instance
  infer_instance

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HopkinsLevitzki/Variantdabb283e55e4d62dd1abe3df059bc98dc394c48d3c8d9818df97c73ce2adb523.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `92bafdef8e2b44b9c55da9705d47d054d3ea0313` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

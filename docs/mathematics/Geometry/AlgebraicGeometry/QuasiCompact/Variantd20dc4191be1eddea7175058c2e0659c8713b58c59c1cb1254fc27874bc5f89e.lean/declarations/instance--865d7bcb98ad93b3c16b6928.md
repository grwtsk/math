# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d99bf7e23073737196ad0fd3a7ba355e95b4f2cf03dace846a196b85592cec93",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--865d7bcb98ad93b3c16b6928",
  "source": {
    "blob": "aa71222fc54dd579398a04fd027505d40186d781",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 180,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:865d7bcb98ad93b3c16b6928fe2d58b5e5fecd21f92347cd66b22794f5c10c88",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d99bf7e23073737196ad0fd3a7ba355e95b4f2cf03dace846a196b85592cec93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Precoverage.Small.{u} (propQCPrecoverage P) where
  zeroHypercoverSmall {S} (𝒰 : S.Cover _) := by
    refine ⟨𝒰.forgetQc.qculift.I₀, Sum.elim 𝒰.forgetQc.idx (QuasiCompactCover.uliftHom _).s₀,
      ⟨?_, ?_⟩⟩
    · rw [Scheme.presieve₀_mem_qcPrecoverage_iff]
      exact .of_hom (𝒱 := QuasiCompactCover.ulift 𝒰.1) ⟨Sum.inr, fun i ↦ 𝟙 _, by cat_disch⟩
    · rw [Scheme.presieve₀_mem_precoverage_iff]
      exact ⟨fun x ↦ ⟨Sum.inl x, 𝒰.forgetQc.covers _⟩, fun i ↦ 𝒰.forgetQc.map_prop _⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/QuasiCompact/Variantd20dc4191be1eddea7175058c2e0659c8713b58c59c1cb1254fc27874bc5f89e.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa71222fc54dd579398a04fd027505d40186d781` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

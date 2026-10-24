# prodₗᵢ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:54f671230ad37f2157b34752c4436b3567a495138403c7e3747a6b8b6bbd932d",
  "kind": "def",
  "lexical_name": "prodₗᵢ",
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
  "slug": "prod--1bc6cfd2ec97f2a9fd8a5880",
  "source": {
    "blob": "e9787fccacfb1d2965d37ef10eff3ff863fdcb3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bc6cfd2ec97f2a9fd8a58802c046cdc1d729005dcdd13e9018b2508a86f2967",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:54f671230ad37f2157b34752c4436b3567a495138403c7e3747a6b8b6bbd932d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def prodₗᵢ (R : Type*)
    [Semiring R] [Module R F] [Module R G] [ContinuousConstSMul R F]
    [ContinuousConstSMul R G] [SMulCommClass 𝕜 R F] [SMulCommClass 𝕜 R G] :
    (E →L[𝕜] F) × (E →L[𝕜] G) ≃ₗᵢ[R] E →L[𝕜] F × G :=
  ⟨prodₗ R, fun ⟨f, g⟩ => opNorm_prod f g⟩

end OpNorm


section Prod

variable (𝕜)
variable (M₁ M₂ M₃ M₄ : Type*)
  [SeminormedAddCommGroup M₁] [NormedSpace 𝕜 M₁]
  [SeminormedAddCommGroup M₂] [NormedSpace 𝕜 M₂]
  [SeminormedAddCommGroup M₃] [NormedSpace 𝕜 M₃]
  [SeminormedAddCommGroup M₄] [NormedSpace 𝕜 M₄]

/-- `ContinuousLinearMap.prodMap` as a continuous linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Prod/Variant739ff4d531909760a12c81683f33631880946c3188084641527e1d90f8411026.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9787fccacfb1d2965d37ef10eff3ff863fdcb3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

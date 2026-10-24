# instCompleteSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:546ce09a352acf1662eec42a2f0edd231a02e320ed7257793c96e0cd99a172e2",
  "kind": "instance",
  "lexical_name": "instCompleteSpace",
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
  "slug": "instcompletespace--e2b237caa31a545722c8ca95",
  "source": {
    "blob": "6d4f104eefffe8b26bb32eac6e3af6a2d0cc4924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 491,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e2b237caa31a545722c8ca9584268ab54b0173f10bbc3164806466929b66948d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:546ce09a352acf1662eec42a2f0edd231a02e320ed7257793c96e0cd99a172e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 491–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCompleteSpace [CompleteSpace β] : CompleteSpace C₀(α, β) :=
  (completeSpace_iff_isComplete_range isometry_toBcf.uniformInducing).mpr
    closed_range_toBcf.isComplete

end Metric

section Norm

/-! ### Normed space

The norm structure on `C₀(α, β)` is the one induced by the inclusion `toBcf : C₀(α, β) → (α →ᵇ b)`,
viewed as an additive monoid homomorphism. Then `C₀(α, β)` is naturally a normed space over a normed
field `𝕜` whenever `β` is as well.
-/


section NormedSpace

variable [NormedAddCommGroup β] {𝕜 : Type*} [NormedField 𝕜] [NormedSpace 𝕜 β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variant97c808ded768a717de8b904babb81511676e935a2e49de882ad1f33d846d7a04.lean#L491).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4f104eefffe8b26bb32eac6e3af6a2d0cc4924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

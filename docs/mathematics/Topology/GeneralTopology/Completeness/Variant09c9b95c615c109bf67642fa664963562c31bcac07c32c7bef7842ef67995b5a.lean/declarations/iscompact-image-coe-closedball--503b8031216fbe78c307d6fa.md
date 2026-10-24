# isCompact_image_coe_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:22107c30-7fb8-82a0-e604-a5571ccbbffd",
  "kind": "theorem",
  "lexical_name": "isCompact_image_coe_closedBall",
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
  "slug": "iscompact-image-coe-closedball--503b8031216fbe78c307d6fa",
  "source": {
    "blob": "ce89b94bc69ef6160c4384f1fd7e906d5be86167",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 159,
    "path": "GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:503b8031216fbe78c307d6fa1df7837049350a510709a786d339b659fa6c081f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:22107c30-7fb8-82a0-e604-a5571ccbbffd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCompact_image_coe_closedBall [ProperSpace F] (f₀ : E →SL[σ₁₂] F) (r : ℝ) :
    IsCompact (((↑) : (E →SL[σ₁₂] F) → E → F) '' closedBall f₀ r) :=
  isCompact_image_coe_of_bounded_of_weak_closed isBounded_closedBall <|
    is_weak_closed_closedBall f₀ r

end Completeness

section UniformlyExtend

section NonField

variable {R R₂ E F Fₗ : Type*} [NormedAddCommGroup E] [NormedAddCommGroup F] [NormedAddCommGroup Fₗ]
  [NormedRing R] [NormedRing R₂] [Module R E] [Module R₂ F] [Module R Fₗ]
  [IsBoundedSMul R₂ F] [IsBoundedSMul R Fₗ]
  {σ₁₂ : R →+* R₂} (f g : E →SL[σ₁₂] F) [CompleteSpace F] (e : E →L[R] Fₗ) (h_dense : DenseRange e)

variable (h_e : IsUniformInducing e)

/-- Extension of a continuous linear map `f : E →SL[σ₁₂] F`, with `E` a normed space and `F` a
complete normed space, along a uniform and dense embedding `e : E →L[𝕜] Fₗ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Completeness/Variant09c9b95c615c109bf67642fa664963562c31bcac07c32c7bef7842ef67995b5a.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce89b94bc69ef6160c4384f1fd7e906d5be86167` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

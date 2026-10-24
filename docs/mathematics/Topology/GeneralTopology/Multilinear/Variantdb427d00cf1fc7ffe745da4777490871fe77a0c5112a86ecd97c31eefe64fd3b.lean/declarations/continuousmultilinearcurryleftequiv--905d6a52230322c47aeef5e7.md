# continuousMultilinearCurryLeftEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:707b26aaca39cb9f13ad37345e998d7c688a28288bc078f3708a625c35aa4d04",
  "kind": "def",
  "lexical_name": "continuousMultilinearCurryLeftEquiv",
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
  "slug": "continuousmultilinearcurryleftequiv--905d6a52230322c47aeef5e7",
  "source": {
    "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1433,
    "line": 1410,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:905d6a52230322c47aeef5e762b6acdb2f5ad0223b5942d68e283de3b7ce7343",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:707b26aaca39cb9f13ad37345e998d7c688a28288bc078f3708a625c35aa4d04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1410–1433.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMultilinearCurryLeftEquiv :
    (Ei 0 →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei i.succ) G) ≃ₗᵢ[𝕜]
      ContinuousMultilinearMap 𝕜 Ei G :=
  LinearIsometryEquiv.ofBounds
    { toFun := ContinuousLinearMap.uncurryLeft
      map_add' := fun f₁ f₂ => by
        ext m
        rfl
      map_smul' := fun c f => by
        ext m
        rfl
      invFun := ContinuousMultilinearMap.curryLeft
      left_inv := ContinuousLinearMap.curry_uncurryLeft
      right_inv := ContinuousMultilinearMap.uncurry_curryLeft } (fun f => by
        simp only [LinearEquiv.coe_mk]
        exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _) fun f => by
          simp only [LinearEquiv.coe_symm_mk]
          exact LinearMap.mkContinuous_norm_le _ (norm_nonneg f) _
#align continuous_multilinear_curry_left_equiv continuousMultilinearCurryLeftEquiv

variable {𝕜 Ei G}

set_option synthInstance.maxHeartbeats 25000 in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean#L1410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ea4c907ee19bb86bfb8a13880dbb434356eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

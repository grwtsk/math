# ContinuousMultilinearMap.curryMidEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbb31efb6d5db55e8f3ee9049c78dd604b9659a2b1d06232925e0b99691f1079",
  "kind": "def",
  "lexical_name": "ContinuousMultilinearMap.curryMidEquiv",
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
  "slug": "continuousmultilinearmap-currymidequiv--111a73ef3abe75cf8a99d2f6",
  "source": {
    "blob": "ee4c496966c7933f0c9ba0b6d2783f0133814fdf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 371,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:111a73ef3abe75cf8a99d2f6df1336187eb9af795f47d3c1a617041795baf23d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbb31efb6d5db55e8f3ee9049c78dd604b9659a2b1d06232925e0b99691f1079`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousMultilinearMap.curryMidEquiv (p : Fin (n + 1)) :
    ContinuousMultilinearMap 𝕜 Ei G ≃ₗᵢ[𝕜]
      Ei p →L[𝕜] ContinuousMultilinearMap 𝕜 (fun i ↦ Ei (p.succAbove i)) G :=
  LinearIsometryEquiv.ofBounds
    { toFun := ContinuousMultilinearMap.curryMid p
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl
      invFun := ContinuousLinearMap.uncurryMid p
      left_inv := ContinuousMultilinearMap.uncurryMid_curryMid p
      right_inv := ContinuousLinearMap.curryMid_uncurryMid p }
    (fun f => by dsimp; exact MultilinearMap.mkContinuousLinear_norm_le _ (norm_nonneg f) _)
    (fun f => by
      simp only [LinearEquiv.coe_symm_mk]
      exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _)

variable {𝕜 Ei G}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant4f2080a1c3399e6ac188efe31c71dde2f337e24d2ddc3ceff3306a96ece5bea0.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee4c496966c7933f0c9ba0b6d2783f0133814fdf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ContinuousMultilinearMap.curryRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f35d87309d07d11974ecec2d3b1f156694aca26eb3d75a4ea9aba14dc6e66bf",
  "kind": "def",
  "lexical_name": "ContinuousMultilinearMap.curryRight",
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
  "slug": "continuousmultilinearmap-curryright--01cafafb09c488ba89cd47d8",
  "source": {
    "blob": "faaf32542a0d4c2e5cd4176011b19d72f8909120",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 220,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:01cafafb09c488ba89cd47d824403a8801f99b8d9aac1d1d7bd4dc5ee205d707",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f35d87309d07d11974ecec2d3b1f156694aca26eb3d75a4ea9aba14dc6e66bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ContinuousMultilinearMap.curryRight (f : ContinuousMultilinearMap 𝕜 Ei G) :
    ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G) :=
  let f' : MultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G) :=
    { toFun := fun m =>
        (f.toMultilinearMap.curryRight m).mkContinuous (‖f‖ * ∏ i, ‖m i‖) fun x =>
          f.norm_map_snoc_le m x
      map_update_add' := fun m i x y => by
        ext
        simp
      map_update_smul' := fun m i c x => by
        ext
        simp }
  f'.mkContinuous ‖f‖ fun m => by
    simp only [f', MultilinearMap.coe_mk]
    exact LinearMap.mkContinuous_norm_le _ (by positivity) _

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant255eb29bc78d7b91b4cd18c2fc3f0121411a940dd883549b3ca68bc1fc05bea2.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `faaf32542a0d4c2e5cd4176011b19d72f8909120` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

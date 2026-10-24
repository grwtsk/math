# ContinuousMultilinearMap.curryRight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1cb4b64e9a887a4dcb94befac684144673584a34fa8994e43f195a32997eda8d",
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
  "slug": "continuousmultilinearmap-curryright--ac8bfe88f0f43cfe357f9248",
  "source": {
    "blob": "b7545ddbf7d61010ec072997ff60732e1551289f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 213,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac8bfe88f0f43cfe357f924811975fd5201944769cbf5dcfe02de0028589d56a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1cb4b64e9a887a4dcb94befac684144673584a34fa8994e43f195a32997eda8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–229.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7545ddbf7d61010ec072997ff60732e1551289f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

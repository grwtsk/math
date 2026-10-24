# continuousMultilinearCurryRightEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97629b6bb01e293aa7702918e1b73276443b63ec64c714746605b182a6e49103",
  "kind": "def",
  "lexical_name": "continuousMultilinearCurryRightEquiv",
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
  "slug": "continuousmultilinearcurryrightequiv--9c6af1c1da9829109648258a",
  "source": {
    "blob": "b7545ddbf7d61010ec072997ff60732e1551289f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 260,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9c6af1c1da9829109648258a3b631df9d3905efb6b6c027c07a7a2be0ef32153",
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

Occurrence: `declaration:97629b6bb01e293aa7702918e1b73276443b63ec64c714746605b182a6e49103`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 260–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMultilinearCurryRightEquiv :
    ContinuousMultilinearMap 𝕜 Ei G ≃ₗᵢ[𝕜]
      ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G) :=
  LinearIsometryEquiv.ofBounds
    { toFun := ContinuousMultilinearMap.curryRight
      map_add' := fun _ _ => rfl
      map_smul' := fun _ _ => rfl
      invFun := ContinuousMultilinearMap.uncurryRight
      left_inv := ContinuousMultilinearMap.uncurry_curryRight
      right_inv := ContinuousMultilinearMap.curry_uncurryRight }
    (fun f => by
      simp only [curryRight, LinearEquiv.coe_mk, LinearMap.coe_mk, AddHom.coe_mk]
      exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _)
    (fun f => by
      simp only [uncurryRight, LinearEquiv.coe_symm_mk]
      exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _)

variable (n G')

/-- The space of continuous multilinear maps on `Π(i : Fin (n+1)), G` is canonically isomorphic to
the space of continuous multilinear maps on `Π(i : Fin n), G` with values in the space
of continuous linear maps on `G`, by separating the last variable. We register this
isomorphism as a continuous linear equiv in `continuousMultilinearCurryRightEquiv' 𝕜 n G G'`.
For a version allowing dependent types, see `continuousMultilinearCurryRightEquiv`. When there
are no dependent types, use the primed version as it helps Lean a lot for unification.

The direct and inverse maps are given by `f.curryRight` and `f.uncurryRight`. Use these
unless you need the full framework of linear isometric equivs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Curry/Variant10b306f1f3b20224e94f48f63590776ea4dd18106bf9589684774dc62b0565e6.lean#L260).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7545ddbf7d61010ec072997ff60732e1551289f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

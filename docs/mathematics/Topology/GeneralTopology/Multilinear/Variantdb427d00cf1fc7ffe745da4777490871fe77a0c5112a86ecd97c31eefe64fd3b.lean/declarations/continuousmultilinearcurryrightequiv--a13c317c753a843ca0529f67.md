# continuousMultilinearCurryRightEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:049477917c1a388e690bc14b58b70395dfc73799899d208424c452f22aa0defc",
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
  "slug": "continuousmultilinearcurryrightequiv--a13c317c753a843ca0529f67",
  "source": {
    "blob": "c9ea4c907ee19bb86bfb8a13880dbb434356eeee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1571,
    "line": 1541,
    "path": "GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a13c317c753a843ca0529f67e970fb4267b4ed5d671b902e7e8948fffcb81424",
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

Occurrence: `declaration:049477917c1a388e690bc14b58b70395dfc73799899d208424c452f22aa0defc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1541–1571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def continuousMultilinearCurryRightEquiv :
    ContinuousMultilinearMap 𝕜 (fun i : Fin n => Ei <| castSucc i) (Ei (last n) →L[𝕜] G) ≃ₗᵢ[𝕜]
      ContinuousMultilinearMap 𝕜 Ei G :=
  LinearIsometryEquiv.ofBounds
    { toFun := ContinuousMultilinearMap.uncurryRight
      map_add' := fun f₁ f₂ => by
        ext m
        rfl
      map_smul' := fun c f => by
        ext m
        rfl
      invFun := ContinuousMultilinearMap.curryRight
      left_inv := ContinuousMultilinearMap.curry_uncurryRight
      right_inv := ContinuousMultilinearMap.uncurry_curryRight } (fun f => by
        simp only [uncurryRight, LinearEquiv.coe_mk]
        exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _) fun f => by
          simp only [curryRight, LinearEquiv.coe_symm_mk]
          exact MultilinearMap.mkContinuous_norm_le _ (norm_nonneg f) _
#align continuous_multilinear_curry_right_equiv continuousMultilinearCurryRightEquiv

variable (n G')

/-- The space of continuous multilinear maps on `Π(i : Fin (n+1)), G` is canonically isomorphic to
the space of continuous multilinear maps on `Π(i : Fin n), G` with values in the space
of continuous linear maps on `G`, by separating the last variable. We register this
isomorphism as a continuous linear equiv in `continuousMultilinearCurryRightEquiv' 𝕜 n G G'`.
For a version allowing dependent types, see `continuousMultilinearCurryRightEquiv`. When there
are no dependent types, use the primed version as it helps Lean a lot for unification.

The direct and inverse maps are given by `f.uncurryRight` and `f.curryRight`. Use these
unless you need the full framework of linear isometric equivs. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Multilinear/Variantdb427d00cf1fc7ffe745da4777490871fe77a0c5112a86ecd97c31eefe64fd3b.lean#L1541).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ea4c907ee19bb86bfb8a13880dbb434356eeee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

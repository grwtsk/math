# coeHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c2c246099918fdf5f86e0d79dfbdb197a80299166dd7e8d3dffa0c56bcd2259",
  "kind": "def",
  "lexical_name": "coeHom",
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
  "slug": "coehom--4c1b9fa29ec67b1fe9ef2056",
  "source": {
    "blob": "0044b82b69d1836bf5ca1c42678e77b2ef939148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 492,
    "line": 466,
    "path": "GRWTSK/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c1b9fa29ec67b1fe9ef2056b8a835be064a310d2f6a7663a6e0e93c9e9e07bd",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c2c246099918fdf5f86e0d79dfbdb197a80299166dd7e8d3dffa0c56bcd2259`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 466–492.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coeHom [StarRing 𝕜] [StarRing A] [StarModule 𝕜 A] [NormedStarGroup A] :
    A →⋆ₙₐ[𝕜] 𝓜(𝕜, A) where
  toFun a := a
  map_smul' _ _ := ext _ _ _ _ <| Prod.ext (map_smul _ _ _) (map_smul _ _ _)
  map_zero' := ext _ _ _ _ <| Prod.ext (map_zero _) (map_zero _)
  map_add' _ _ := ext _ _ _ _ <| Prod.ext (map_add _ _ _) (map_add _ _ _)
  map_mul' _ _ := ext _ _ _ _ <| Prod.ext
    (ContinuousLinearMap.ext fun _ => (mul_assoc _ _ _))
    (ContinuousLinearMap.ext fun _ => (mul_assoc _ _ _).symm)
  map_star' _ := ext _ _ _ _ <| Prod.ext
    (ContinuousLinearMap.ext fun _ => (star_star_mul _ _).symm)
    (ContinuousLinearMap.ext fun _ => (star_mul_star _ _).symm)

/-!
### Norm structures
We define the norm structure on `𝓜(𝕜, A)` as the pullback under
`DoubleCentralizer.toProdMulOppositeHom : 𝓜(𝕜, A) →+* (A →L[𝕜] A) × (A →L[𝕜] A)ᵐᵒᵖ`, which
provides a definitional isometric embedding. Consequently, completeness of `𝓜(𝕜, A)` is obtained
by proving that the range of this map is closed.

In addition, we prove that `𝓜(𝕜, A)` is a normed algebra, and, when `A` is a C⋆-algebra, we show
that `𝓜(𝕜, A)` is also a C⋆-algebra. Moreover, in this case, for `a : 𝓜(𝕜, A)`,
`‖a‖ = ‖a.fst‖ = ‖a.snd‖`. -/


/-- The normed group structure is inherited as the pullback under the ring monomorphism
`DoubleCentralizer.toProdMulOppositeHom : 𝓜(𝕜, A) →+* (A →L[𝕜] A) × (A →L[𝕜] A)ᵐᵒᵖ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplier/Variantbab34908ce58fc001f23c7c480ac40a5ea6ab5f841776b36a6ccf86da2e76afa.lean#L466).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0044b82b69d1836bf5ca1c42678e77b2ef939148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

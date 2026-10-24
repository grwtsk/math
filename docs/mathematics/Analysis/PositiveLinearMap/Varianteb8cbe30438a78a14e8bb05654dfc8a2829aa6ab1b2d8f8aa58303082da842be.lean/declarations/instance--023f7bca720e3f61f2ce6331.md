# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:470d61deccbd3e92e4376535b5b9cb2a272815c2b0cd09b2f7ace54370de89a0",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--023f7bca720e3f61f2ce6331",
  "source": {
    "blob": "0febbcdbd499347a7ee629baf3a621547be4f7d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 120,
    "path": "GRWTSK/Analysis/PositiveLinearMap/Varianteb8cbe30438a78a14e8bb05654dfc8a2829aa6ab1b2d8f8aa58303082da842be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:023f7bca720e3f61f2ce6331de47aad1793df2394b0e1e0d0a3d6b95ea24ab5c",
  "verification": {
    "reference": "docs/verification/Analysis/PositiveLinearMap/Varianteb8cbe30438a78a14e8bb05654dfc8a2829aa6ab1b2d8f8aa58303082da842be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:470d61deccbd3e92e4376535b5b9cb2a272815c2b0cd09b2f7ace54370de89a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {F : Type*} [FunLike F A₁ A₂] [LinearMapClass F ℂ A₁ A₂] [OrderHomClass F A₁ A₂] :
    ContinuousLinearMapClass F ℂ A₁ A₂ where
  map_continuous f := by
    have hbound : ∃ C : ℝ, ∀ a, ‖f a‖ ≤ C * ‖a‖ := by
      obtain ⟨C, h⟩ := exists_norm_apply_le (.ofClass f)
      exact ⟨C, h⟩
    exact (LinearMap.mkContinuousOfExistsBound (f : A₁ →ₗ[ℂ] A₂) hbound).continuous

end PositiveLinearMap

end CStarAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/PositiveLinearMap/Varianteb8cbe30438a78a14e8bb05654dfc8a2829aa6ab1b2d8f8aa58303082da842be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/PositiveLinearMap/Varianteb8cbe30438a78a14e8bb05654dfc8a2829aa6ab1b2d8f8aa58303082da842be.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0febbcdbd499347a7ee629baf3a621547be4f7d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

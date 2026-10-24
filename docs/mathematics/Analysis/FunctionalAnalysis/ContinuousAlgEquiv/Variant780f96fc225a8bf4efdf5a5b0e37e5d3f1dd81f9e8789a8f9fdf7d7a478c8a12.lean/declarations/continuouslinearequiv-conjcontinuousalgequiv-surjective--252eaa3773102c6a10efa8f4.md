# ContinuousLinearEquiv.conjContinuousAlgEquiv_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b830f706-d59c-8c37-d6ab-15578d4496e2",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearEquiv.conjContinuousAlgEquiv_surjective",
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
  "slug": "continuouslinearequiv-conjcontinuousalgequiv-surjective--252eaa3773102c6a10efa8f4",
  "source": {
    "blob": "be31a3496bfe3fdec99c27c55ca181c5e7208440",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 94,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:252eaa3773102c6a10efa8f4a4c5b153365869ce8f2e330c2f65bf1f138e3de9",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b830f706-d59c-8c37-d6ab-15578d4496e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public theorem ContinuousLinearEquiv.conjContinuousAlgEquiv_surjective :
    Function.Surjective (conjContinuousAlgEquiv (𝕜 := 𝕜) (G := V) (H := W)) :=
  fun f ↦ f.eq_continuousLinearEquivConjContinuousAlgEquiv.imp fun _ h ↦ h.symm

end

variable {𝕜 V W : Type*} [RCLike 𝕜] [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [CompleteSpace V]
  [NormedAddCommGroup W] [InnerProductSpace 𝕜 W] [CompleteSpace W]

section auxiliaryDefs

variable (e : V ≃L[𝕜] W) {α α' : 𝕜} (hα : α ≠ 0)
  (hα2 : α' * α' = α⁻¹) (he : e.toContinuousLinearMap.adjoint ∘L e = α • .id 𝕜 V)
  (he' : e ∘L e.toContinuousLinearMap.adjoint = α • .id 𝕜 W)
include hα hα2 he he'

/-- Scalar multiple of a continuous linear equivalence (given certain properties are satisfied). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant780f96fc225a8bf4efdf5a5b0e37e5d3f1dd81f9e8789a8f9fdf7d7a478c8a12.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `be31a3496bfe3fdec99c27c55ca181c5e7208440` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

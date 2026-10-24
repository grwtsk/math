# ContinuousLinearEquiv.conjContinuousAlgEquiv_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b35528b2-1f64-74a7-ea72-a9de06988e41",
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
  "slug": "continuouslinearequiv-conjcontinuousalgequiv-surjective--8a12062c3d94e7a71fc533da",
  "source": {
    "blob": "9260b859824c0b6c039ba02c62833f0749769222",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 102,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a12062c3d94e7a71fc533da5124f4c1dec1f9b5e613b9d4156d168eeca2e6ff",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b35528b2-1f64-74a7-ea72-a9de06988e41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–118.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ContinuousAlgEquiv/Variant1ec17ba432ddc083403e32726475eba9ab34a6190700e5bd31aea5f6a5d21156.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9260b859824c0b6c039ba02c62833f0749769222` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

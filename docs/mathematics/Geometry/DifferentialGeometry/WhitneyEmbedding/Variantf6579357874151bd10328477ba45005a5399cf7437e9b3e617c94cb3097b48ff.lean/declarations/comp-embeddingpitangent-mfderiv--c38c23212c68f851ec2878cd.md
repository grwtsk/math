# comp_embeddingPiTangent_mfderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d369e6af-69b3-97a7-94f8-e4ae404db947",
  "kind": "theorem",
  "lexical_name": "comp_embeddingPiTangent_mfderiv",
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
  "slug": "comp-embeddingpitangent-mfderiv--c38c23212c68f851ec2878cd",
  "source": {
    "blob": "13afb8739a59481a20ce6597a6555ff5d268a8f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 85,
    "path": "GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c38c23212c68f851ec2878cda9edccf4f4c040d58b463ab13ed6ddb6286890dc",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d369e6af-69b3-97a7-94f8-e4ae404db947`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_embeddingPiTangent_mfderiv (x : M) (hx : x ∈ s) :
    ((ContinuousLinearMap.fst ℝ E ℝ).comp
            (@ContinuousLinearMap.proj ℝ _ ι (fun _ => E × ℝ) _ _ (fun _ => inferInstance)
              (f.ind x hx))).comp
        (mfderiv I 𝓘(ℝ, ι → E × ℝ) f.embeddingPiTangent x) =
      mfderiv I I (chartAt H (f.c (f.ind x hx))) x := by
  set L :=
    (ContinuousLinearMap.fst ℝ E ℝ).comp
      (@ContinuousLinearMap.proj ℝ _ ι (fun _ => E × ℝ) _ _ (fun _ => inferInstance) (f.ind x hx))
  have := L.hasMFDerivAt.comp x
    (f.embeddingPiTangent.contMDiff.mdifferentiableAt (mod_cast le_top)).hasMFDerivAt
  convert hasMFDerivAt_unique this _
  refine (hasMFDerivAt_extChartAt (f.mem_chartAt_ind_source x hx)).congr_of_eventuallyEq ?_
  refine (f.eventuallyEq_one x hx).mono fun y hy => ?_
  simp only [L, embeddingPiTangent_coe, ContinuousLinearMap.coe_comp', (· ∘ ·),
    ContinuousLinearMap.coe_fst', ContinuousLinearMap.proj_apply]
  rw [hy, Pi.one_apply, one_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/WhitneyEmbedding/Variantf6579357874151bd10328477ba45005a5399cf7437e9b3e617c94cb3097b48ff.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13afb8739a59481a20ce6597a6555ff5d268a8f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ContinuousLinearMap.continuous_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b062d90de34c20f22dad20698201f7fd979ca193",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6458ebe-2e59-c234-706c-696ce31a753d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1158058e-f4f2-1148-2aa3-acfa5581d5c4",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.continuous_det",
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
  "slug": "continuouslinearmap-continuous-det--b2e0d1a329bac1381797f8be",
  "source": {
    "blob": "b062d90de34c20f22dad20698201f7fd979ca193",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 146,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2e0d1a329bac1381797f8bed1f9c651dc91c6511ab032e97763cc1fa103d413",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1158058e-f4f2-1148-2aa3-acfa5581d5c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.continuous_det : Continuous fun f : E →L[𝕜] E => f.det := by
  change Continuous fun f : E →L[𝕜] E => LinearMap.det (f : E →ₗ[𝕜] E)
  -- TODO: this could be easier with `det_cases`
  by_cases h : ∃ s : Finset E, Nonempty (Basis (↥s) 𝕜 E)
  · rcases h with ⟨s, ⟨b⟩⟩
    haveI : FiniteDimensional 𝕜 E := FiniteDimensional.of_fintype_basis b
    classical
    simp_rw [LinearMap.det_eq_det_toMatrix_of_finset b]
    refine Continuous.matrix_det ?_
    exact
      ((LinearMap.toMatrix b b).toLinearMap.comp
          (ContinuousLinearMap.coeLM 𝕜)).continuous_of_finiteDimensional
  · rw [LinearMap.det]
    simpa only [h, MonoidHom.one_apply, dif_neg, not_false_iff] using continuous_const

/-- Any `K`-Lipschitz map from a subset `s` of a metric space `α` to a finite-dimensional real
vector space `E'` can be extended to a Lipschitz map on the whole space `α`, with a slightly worse
constant `C * K` where `C` only depends on `E'`. We record a working value for this constant `C`
as `lipschitzExtensionConstant E'`. -/
irreducible_def lipschitzExtensionConstant (E' : Type*) [NormedAddCommGroup E'] [NormedSpace ℝ E']
  [FiniteDimensional ℝ E'] : ℝ≥0 :=
  let A := (Basis.ofVectorSpace ℝ E').equivFun.toContinuousLinearEquiv
  max (‖A.symm.toContinuousLinearMap‖₊ * ‖A.toContinuousLinearMap‖₊) 1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/FiniteDimension/Variant3541c39c57f79c023181e43fb08ab6a69b90972cb7e0e9cd858d4c89cfaa5bbe.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b062d90de34c20f22dad20698201f7fd979ca193` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

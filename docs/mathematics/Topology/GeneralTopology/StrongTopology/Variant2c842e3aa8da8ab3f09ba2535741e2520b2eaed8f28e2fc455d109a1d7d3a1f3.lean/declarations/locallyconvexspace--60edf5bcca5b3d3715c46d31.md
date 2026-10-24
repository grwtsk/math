# locallyConvexSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe682099c9316074c4c906d7a66dcb4f7441ed90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2c/2c842e3aa8da8ab3f09ba2535741e2520b2eaed8f28e2fc455d109a1d7d3a1f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fa447edf-e7fe-fdcc-b32c-e746ae1df653",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d9abe6d-4440-5d56-ea41-4c06cdfcab49",
  "kind": "theorem",
  "lexical_name": "locallyConvexSpace",
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
  "slug": "locallyconvexspace--60edf5bcca5b3d3715c46d31",
  "source": {
    "blob": "fe682099c9316074c4c906d7a66dcb4f7441ed90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 45,
    "path": "GRWTSK/Topology/GeneralTopology/StrongTopology/Variant2c842e3aa8da8ab3f09ba2535741e2520b2eaed8f28e2fc455d109a1d7d3a1f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60edf5bcca5b3d3715c46d3161dff7cc24b9ea3a14815ae5e7663af35d8ca7fb",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StrongTopology/Variant2c842e3aa8da8ab3f09ba2535741e2520b2eaed8f28e2fc455d109a1d7d3a1f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d9abe6d-4440-5d56-ea41-4c06cdfcab49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem locallyConvexSpace (𝔖 : Set (Set E)) (h𝔖₁ : 𝔖.Nonempty)
    (h𝔖₂ : DirectedOn (· ⊆ ·) 𝔖) :
    LocallyConvexSpace R (UniformConvergenceCLM σ F 𝔖) := by
  apply LocallyConvexSpace.ofBasisZero _ _ _ _
    (UniformConvergenceCLM.hasBasis_nhds_zero_of_basis _ _ _ h𝔖₁ h𝔖₂
      (LocallyConvexSpace.convex_basis_zero R F)) _
  rintro ⟨S, V⟩ ⟨_, _, hVconvex⟩ f hf g hg a b ha hb hab x hx
  exact hVconvex (hf x hx) (hg x hx) ha hb hab

end UniformConvergenceCLM

end General

section BoundedSets

namespace ContinuousLinearMap

variable [Semiring R] [PartialOrder R]
variable [NormedField 𝕜₁] [NormedField 𝕜₂] [Module 𝕜₁ E] [Module 𝕜₂ F] {σ : 𝕜₁ →+* 𝕜₂}
variable [Module R F] [ContinuousConstSMul R F] [LocallyConvexSpace R F] [SMulCommClass 𝕜₂ R F]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StrongTopology/Variant2c842e3aa8da8ab3f09ba2535741e2520b2eaed8f28e2fc455d109a1d7d3a1f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StrongTopology/Variant2c842e3aa8da8ab3f09ba2535741e2520b2eaed8f28e2fc455d109a1d7d3a1f3.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe682099c9316074c4c906d7a66dcb4f7441ed90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

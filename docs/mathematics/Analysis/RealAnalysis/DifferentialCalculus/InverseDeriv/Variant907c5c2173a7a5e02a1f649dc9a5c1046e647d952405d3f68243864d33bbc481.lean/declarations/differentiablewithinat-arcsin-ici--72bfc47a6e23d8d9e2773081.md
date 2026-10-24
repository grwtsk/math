# differentiableWithinAt_arcsin_Ici

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cecfe155d652647c6c5f57d47d2c45bd72929cae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f639f7e-488c-9b19-b593-c4f47d473c5e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a720a39-3ece-e91b-9ec2-0467c20ff484",
  "kind": "theorem",
  "lexical_name": "differentiableWithinAt_arcsin_Ici",
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
  "slug": "differentiablewithinat-arcsin-ici--72bfc47a6e23d8d9e2773081",
  "source": {
    "blob": "cecfe155d652647c6c5f57d47d2c45bd72929cae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:72bfc47a6e23d8d9e277308134ad1d2dd01dff345ca389f86b51a02962fcb1e5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a720a39-3ece-e91b-9ec2-0467c20ff484`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem differentiableWithinAt_arcsin_Ici {x : ℝ} :
    DifferentiableWithinAt ℝ arcsin (Ici x) x ↔ x ≠ -1 := by
  refine ⟨?_, fun h => (hasDerivWithinAt_arcsin_Ici h).differentiableWithinAt⟩
  rintro h rfl
  have : sin ∘ arcsin =ᶠ[𝓝[≥] (-1 : ℝ)] id := by
    filter_upwards [Icc_mem_nhdsGE (neg_lt_self zero_lt_one)] with x using sin_arcsin'
  have := h.hasDerivWithinAt.sin.congr_of_eventuallyEq this.symm (by simp)
  simpa using (uniqueDiffOn_Ici _ _ left_mem_Ici).eq_deriv _ this (hasDerivWithinAt_id _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InverseDeriv/Variant907c5c2173a7a5e02a1f649dc9a5c1046e647d952405d3f68243864d33bbc481.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cecfe155d652647c6c5f57d47d2c45bd72929cae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

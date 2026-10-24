# boundaryResidual_increment_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/db/db4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51582561-76ae-1c04-b823-8c0acd8b89c6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:84eb8c82-7f74-8f3a-1eb7-2105b3f7e5f7",
  "kind": "theorem",
  "lexical_name": "boundaryResidual_increment_product_integrable",
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
  "slug": "boundaryresidual-increment-product-integrable--82109f1e8f82e0096971589d",
  "source": {
    "blob": "58b29b6c816f3293fa0eb1668353b58fbec6f60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82109f1e8f82e0096971589dd3865b11588aeea020e975cd419550a26710c083",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:84eb8c82-7f74-8f3a-1eb7-2105b3f7e5f7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryResidual_increment_product_integrable (N M : ℕ)
    (hN : 1 ≤ N) (hM : 1 ≤ M) (ε h : ℝ)
    (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) (hh : 0 < h) (hh1 : h ≤ 1) :
    Integrable (fun t : ℝ =>
      (boundaryResidual (N + 1) ε h t - boundaryResidual N ε h t) *
        star (boundaryResidual (M + 1) ε h t - boundaryResidual M ε h t)) := by
  have hN' := (boundaryResidual_memLp (N + 1) (by omega) ε h hε hsmall hh hh1).sub
    (boundaryResidual_memLp N hN ε h hε hsmall hh hh1)
  have hM' := (boundaryResidual_memLp (M + 1) (by omega) ε h hε hsmall hh hh1).sub
    (boundaryResidual_memLp M hM ε h hε hsmall hh hh1)
  exact hN'.integrable_mul hM'.star

end
end CorrectedCutoffIncrementScratch

set_option pp.proofs true
set_option pp.universes true
set_option pp.fullNames true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#print CorrectedCutoffIncrementScratch.cutoffShape
#print axioms CorrectedCutoffIncrementScratch.cutoffShape
#print CorrectedCutoffIncrementScratch.correctedNumerator_one
#print axioms CorrectedCutoffIncrementScratch.correctedNumerator_one
#print CorrectedCutoffIncrementScratch.correctedNumerator_succ_sub
#print axioms CorrectedCutoffIncrementScratch.correctedNumerator_succ_sub
#print CorrectedCutoffIncrementScratch.correctedNumerator_eq_sum_increments
#print axioms CorrectedCutoffIncrementScratch.correctedNumerator_eq_sum_increments
#print CorrectedCutoffIncrementScratch.boundaryResidual
#print axioms CorrectedCutoffIncrementScratch.boundaryResidual
#print CorrectedCutoffIncrementScratch.boundaryResidual_succ_sub
#print axioms CorrectedCutoffIncrementScratch.boundaryResidual_succ_sub
#print CorrectedCutoffIncrementScratch.boundaryResidual_increment_product
#print axioms CorrectedCutoffIncrementScratch.boundaryResidual_increment_product
#print CorrectedCutoffIncrementScratch.boundaryResidual_increment_product_integrable
#print axioms CorrectedCutoffIncrementScratch.boundaryResidual_increment_product_integrable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CorrectedCutoffIncrementAudit/Variantdb4e14faff7e9254cfaa35ca561a2d5be23ab55cb1bdb8e9d6c513808c378de3.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58b29b6c816f3293fa0eb1668353b58fbec6f60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# boundaryIntegral_finset_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99f3bfe6-ba26-87ff-a17c-87cea496ea5e",
  "kind": "theorem",
  "lexical_name": "boundaryIntegral_finset_sum",
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
  "slug": "boundaryintegral-finset-sum--9417ba66457d0ffc840298b0",
  "source": {
    "blob": "04a5862bf8ecf094317d1cfa2f0e02a615a1ab11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 170,
    "path": "GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9417ba66457d0ffc840298b0f5f31676e77a37371bde3c5ad940416decbee04a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f3bfe6-ba26-87ff-a17c-87cea496ea5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryIntegral_finset_sum {ι : Type*} (S : Finset ι) (f : ι → ℂ → ℂ)
    (l r T : ℝ) (hf : ∀ i ∈ S, EdgeIntegrable (f i) l r T) :
    boundaryIntegral (fun z => ∑ i ∈ S, f i z) l r T =
      ∑ i ∈ S, boundaryIntegral (f i) l r T := by
  classical
  unfold boundaryIntegral horizontal vertical
  rw [intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).1),
    intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).2.1),
    intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).2.2.1),
    intervalIntegral.integral_finsetSum (fun i hi => (hf i hi).2.2.2)]
  simp only [Finset.sum_sub_distrib, Finset.sum_add_distrib, Finset.mul_sum]

/-- The exact finite rational principal sum has its fully normalized integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/RectangularCauchyKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/RectangularCauchyKernel.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04a5862bf8ecf094317d1cfa2f0e02a615a1ab11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

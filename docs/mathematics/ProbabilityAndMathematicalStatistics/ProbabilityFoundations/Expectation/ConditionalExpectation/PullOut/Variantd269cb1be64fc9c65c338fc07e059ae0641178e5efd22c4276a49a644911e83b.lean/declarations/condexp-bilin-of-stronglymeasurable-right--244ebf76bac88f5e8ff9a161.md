# condExp_bilin_of_stronglyMeasurable_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a9749dbee01c2ecd1d24e345fe436fec40718ac1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d2/d269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dfc60481-0853-37ee-9e8b-b94e787900ea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:948343d1-1765-7249-c3d9-87190e39dac7",
  "kind": "theorem",
  "lexical_name": "condExp_bilin_of_stronglyMeasurable_right",
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
  "slug": "condexp-bilin-of-stronglymeasurable-right--244ebf76bac88f5e8ff9a161",
  "source": {
    "blob": "a9749dbee01c2ecd1d24e345fe436fec40718ac1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 191,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:244ebf76bac88f5e8ff9a161ab7322cf8e566764c0d97b1a4cdb1fc380d7335e",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:948343d1-1765-7249-c3d9-87190e39dac7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_bilin_of_stronglyMeasurable_right [CompleteSpace F] {f : Ω → F} {g : Ω → E}
    (hg : StronglyMeasurable[m] g)
    (hfg : Integrable (fun ω ↦ B (f ω) (g ω)) μ) (hf : Integrable f μ) :
    μ[fun ω ↦ B (f ω) (g ω) | m] =ᵐ[μ] fun ω ↦ B (μ[f | m] ω) (g ω) := by
  simp_rw [← B.flip_apply] at hfg ⊢
  exact condExp_bilin_of_stronglyMeasurable_left B.flip hg hfg hf

/-- Pull-out property of the conditional expectation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/PullOut/Variantd269cb1be64fc9c65c338fc07e059ae0641178e5efd22c4276a49a644911e83b.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9749dbee01c2ecd1d24e345fe436fec40718ac1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

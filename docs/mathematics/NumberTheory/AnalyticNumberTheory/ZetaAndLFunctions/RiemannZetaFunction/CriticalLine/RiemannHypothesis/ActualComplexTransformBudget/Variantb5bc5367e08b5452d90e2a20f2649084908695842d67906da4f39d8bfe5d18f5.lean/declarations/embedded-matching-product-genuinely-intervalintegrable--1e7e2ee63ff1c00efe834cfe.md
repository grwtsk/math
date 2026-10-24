# embedded_matching_product_genuinely_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0739e7a0-9faa-9883-044a-17f44f64dba1",
  "kind": "theorem",
  "lexical_name": "embedded_matching_product_genuinely_intervalIntegrable",
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
  "slug": "embedded-matching-product-genuinely-intervalintegrable--1e7e2ee63ff1c00efe834cfe",
  "source": {
    "blob": "38e5bd7bb792728a55a71115302c180cf264b074",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 63,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e7e2ee63ff1c00efe834cfee029aacf9247bc4645511e3eed88821d37f82eb0",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0739e7a0-9faa-9883-044a-17f44f64dba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem embedded_matching_product_genuinely_intervalIntegrable {A a Z : ℝ}
    (hA : 1 ≤ A) (hZ : 0 < Z) :
    IntervalIntegrable (fun u ↦ ((C A u * Real.exp (3 * u / 16) : ℝ) : ℂ) *
      (inputAt A a Z (Z * Real.exp u) : ℂ)) volume (-2 * A) (2 * A) := by
  have hr : IntervalIntegrable (fun u ↦ C A u * Real.exp (3 * u / 16) *
      inputAt A a Z (Z * Real.exp u)) volume (-2 * A) (2 * A) := by
    simp_rw [exact_scaled_matching_integrand hZ]
    exact (full_weighted_norm_integrand_intervalIntegrable hA _).const_mul (Z ^ a)
  simp_rw [← Complex.ofReal_mul]
  exact ⟨Complex.ofRealCLM.integrable_comp hr.1, Complex.ofRealCLM.integrable_comp hr.2⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualComplexTransformBudget/Variantb5bc5367e08b5452d90e2a20f2649084908695842d67906da4f39d8bfe5d18f5.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38e5bd7bb792728a55a71115302c180cf264b074` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

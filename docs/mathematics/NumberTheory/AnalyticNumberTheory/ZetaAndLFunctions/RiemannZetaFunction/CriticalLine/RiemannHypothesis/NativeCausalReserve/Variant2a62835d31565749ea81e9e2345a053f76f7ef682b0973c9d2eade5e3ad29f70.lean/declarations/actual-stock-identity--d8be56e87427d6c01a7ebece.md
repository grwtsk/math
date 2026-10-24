# actual_stock_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:041f4509-0a71-695f-600d-6de21443f57f",
  "kind": "theorem",
  "lexical_name": "actual_stock_identity",
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
  "slug": "actual-stock-identity--d8be56e87427d6c01a7ebece",
  "source": {
    "blob": "17078a3e9036cb4fd4c53e4d33050e31fe45f1b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCausalReserve/Variant2a62835d31565749ea81e9e2345a053f76f7ef682b0973c9d2eade5e3ad29f70.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8be56e87427d6c01a7ebece8205b3cf790ea3009cfb383be2f0eb52129408d3",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCausalReserve/Variant2a62835d31565749ea81e9e2345a053f76f7ef682b0973c9d2eade5e3ad29f70.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:041f4509-0a71-695f-600d-6de21443f57f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_stock_identity {N : ℕ} (hN : 1 ≤ N) (R : ℝ) (j : ℕ) :
    stock R (credit N) (debt N) j =
      R - (ordinaryPrimePrimitive (N + j : ℕ) - ordinaryPrimePrimitive N) := by
  rw [AccordionConsumer.actual_signed_work_telescope hN]
  change R + (∑ i ∈ Finset.range j, credit N i) - (∑ i ∈ Finset.range j, debt N i) =
    R - ∑ i ∈ Finset.range j, signedCell N i
  calc
    _ = R + ((∑ i ∈ Finset.range j, credit N i) - ∑ i ∈ Finset.range j, debt N i) := by ring
    _ = R + ∑ i ∈ Finset.range j, (credit N i - debt N i) := by
      rw [Finset.sum_sub_distrib]
    _ = _ := by
      simp_rw [negative_credit_minus_positive_debt]
      rw [Finset.sum_neg_distrib]
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCausalReserve/Variant2a62835d31565749ea81e9e2345a053f76f7ef682b0973c9d2eade5e3ad29f70.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCausalReserve/Variant2a62835d31565749ea81e9e2345a053f76f7ef682b0973c9d2eade5e3ad29f70.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17078a3e9036cb4fd4c53e4d33050e31fe45f1b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

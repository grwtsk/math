# lamC_conv_xiCoeffJ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aeee4f8f-c55f-201b-3de6-72a2d8026ec0",
  "kind": "lemma",
  "lexical_name": "lamC_conv_xiCoeffJ",
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
  "slug": "lamc-conv-xicoeffj--5442a2de6d7e43417b7c23b4",
  "source": {
    "blob": "de7239b112ddb32aced751ba00cc0adde0b356cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 60,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5442a2de6d7e43417b7c23b425a9231b44522442a4e9367527617311de1de078",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aeee4f8f-c55f-201b-3de6-72a2d8026ec0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lamC_conv_xiCoeffJ (Λs : ℂ) (N : ℕ) :
    (lamC ⍟ xiCoeffJ Λs) N
      = ∑ j ∈ Finset.range (Ω N), (Λs⁻¹) ^ (j + 1) * ((lamLogConv (j + 1) N : ℝ) : ℂ) := by
  rw [LSeries.convolution_def]
  simp only
  have hexp : ∀ p ∈ N.divisorsAntidiagonal,
      lamC p.1 * xiCoeffJ Λs p.2
        = ∑ j ∈ Finset.range (Ω N), lamC p.1 * ((Λs⁻¹) ^ (j + 1) * ((lamLogConv j p.2 : ℝ) : ℂ)) := by
    intro p hp
    have hΩ : Ω p.2 ≤ Ω N := by
      have := cardFactors_of_mem_divisorsAntidiagonal hp; omega
    rw [xiCoeffJ_eq_sum_range_of_le Λs hΩ, mul_sum]
  rw [sum_congr rfl hexp, sum_comm]
  refine sum_congr rfl fun j _ => ?_
  rw [← lam_mul_lamLogConv j, ArithmeticFunction.mul_apply]
  push_cast
  rw [mul_sum]
  refine sum_congr rfl fun p _ => ?_
  simp only [lamC_apply]
  ring

/-- **the convolution identity**, pointwise:  Λ⋆·C_J(N) − (Λ ∗ C_J)(N) = Λ(N) log N  (Λ⋆ ≠ 0). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/LSeries/Variantabaf888d453a42933d341c9ebf53347425f227a7e4eb827273c5258b29cd1aa0.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de7239b112ddb32aced751ba00cc0adde0b356cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

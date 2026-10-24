# positive_diagonal_decoder_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73e96970-4ea3-378c-9a3f-9c80052bdc0c",
  "kind": "theorem",
  "lexical_name": "positive_diagonal_decoder_payment",
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
  "slug": "positive-diagonal-decoder-payment--b8ec609629a35565f0d18281",
  "source": {
    "blob": "506a038a7b2fc94b88bda1bd72a6342de26fc92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8ec609629a35565f0d182812405b1d0cdd24d0cbb0306354e5e2fb6472bb2f7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73e96970-4ea3-378c-9a3f-9c80052bdc0c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positive_diagonal_decoder_payment {ι : Type*} (s : Finset ι) (b c : ι → ℝ)
    {b₀ γ L : ℝ} (hb₀ : 0 < b₀) (hb : ∀ i ∈ s, 0 < b i) (hγ : 0 ≤ γ)
    (hanchor : b₀ ^ 2 ≤ L) (hshell : γ * shellMass s b ≤ L) :
    Real.sqrt γ * (∑ i ∈ s, |c i|) ≤
      L * Real.sqrt (∑ i ∈ s, (c i / (b₀ * b i)) ^ 2) := by
  let V : ℝ := ∑ i ∈ s, |c i|
  let D : ℝ := ∑ i ∈ s, (c i / (b₀ * b i)) ^ 2
  have hV : 0 ≤ V := Finset.sum_nonneg (fun i hi ↦ abs_nonneg _)
  have hD : 0 ≤ D := Finset.sum_nonneg (fun i hi ↦ sq_nonneg _)
  have hR : 0 ≤ shellMass s b := Finset.sum_nonneg (fun i hi ↦ sq_nonneg _)
  have hL : 0 ≤ L := (sq_nonneg b₀).trans hanchor
  have hcs : V ^ 2 ≤ b₀ ^ 2 * shellMass s b * D := retained_decoder_cauchy s b c hb₀ hb
  have hmul : b₀ ^ 2 * (γ * shellMass s b) ≤ L * L :=
    mul_le_mul hanchor hshell (mul_nonneg hγ hR) hL
  have hstep := mul_le_mul_of_nonneg_right hmul hD
  have hcsγ := mul_le_mul_of_nonneg_left hcs hγ
  have hsq : γ * V ^ 2 ≤ L ^ 2 * D := by nlinarith only [hcsγ, hstep]
  have hrootγ := Real.sq_sqrt hγ
  have hrootD := Real.sq_sqrt hD
  have hleft : 0 ≤ Real.sqrt γ * V := mul_nonneg (Real.sqrt_nonneg _) hV
  have hright : 0 ≤ L * Real.sqrt D := mul_nonneg hL (Real.sqrt_nonneg _)
  change Real.sqrt γ * V ≤ L * Real.sqrt D
  nlinarith only [hsq, hrootγ, hrootD, hleft, hright]

end
end GRWTSK.RiemannHypothesis.Conversation.WeightedGramPricing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `506a038a7b2fc94b88bda1bd72a6342de26fc92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# coherent_shell_rayleigh_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0a57dcb6-40e6-fe00-ce8b-a87c10638c1e",
  "kind": "theorem",
  "lexical_name": "coherent_shell_rayleigh_lower",
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
  "slug": "coherent-shell-rayleigh-lower--526f400f5112287adbb64b9c",
  "source": {
    "blob": "506a038a7b2fc94b88bda1bd72a6342de26fc92b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 43,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:526f400f5112287adbb64b9c86eb999776e7e9521ce3e5e1fc5c52e2f856f5c8",
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

Occurrence: `result:0a57dcb6-40e6-fe00-ce8b-a87c10638c1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coherent_shell_rayleigh_lower {ι : Type*} (s : Finset ι) (b : ι → ℝ)
    (K : ι → ι → ℝ) {γ : ℝ} (hK : ∀ i ∈ s, ∀ j ∈ s, γ ≤ K i j) :
    γ * (shellMass s b) ^ 2 ≤ shellForm s b K := by
  have hterm (i : ι) (hi : i ∈ s) (j : ι) (hj : j ∈ s) :
      γ * b i ^ 2 * b j ^ 2 ≤ b i * weightedGram b K i j * b j := by
    have h := mul_le_mul_of_nonneg_right (hK i hi j hj)
      (mul_nonneg (sq_nonneg (b i)) (sq_nonneg (b j)))
    unfold weightedGram
    nlinarith only [h]
  have hsum := Finset.sum_le_sum (fun i hi ↦ Finset.sum_le_sum (fun j hj ↦ hterm i hi j hj))
  apply le_trans _ hsum
  unfold shellMass
  simp_rw [← Finset.mul_sum]
  rw [← Finset.sum_mul, ← Finset.mul_sum]
  ring_nf
  rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant36faf18a57cfcbfbf1cf3aa80aaa45d02b5937b361c84d18d348811879e41b57.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `506a038a7b2fc94b88bda1bd72a6342de26fc92b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

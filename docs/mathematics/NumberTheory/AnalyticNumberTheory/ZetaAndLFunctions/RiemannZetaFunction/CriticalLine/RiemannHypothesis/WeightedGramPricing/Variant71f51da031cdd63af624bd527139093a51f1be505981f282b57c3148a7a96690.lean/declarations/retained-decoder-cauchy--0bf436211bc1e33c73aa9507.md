# retained_decoder_cauchy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03df1b77-8df6-baf8-c623-a1935599e07b",
  "kind": "theorem",
  "lexical_name": "retained_decoder_cauchy",
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
  "slug": "retained-decoder-cauchy--0bf436211bc1e33c73aa9507",
  "source": {
    "blob": "a22b5a393dc0c6cf2ecfb641b5d5b13fcf6bad03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant71f51da031cdd63af624bd527139093a51f1be505981f282b57c3148a7a96690.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0bf436211bc1e33c73aa9507e212aa6e5e31bd87d8870177380ca5751785a994",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant71f51da031cdd63af624bd527139093a51f1be505981f282b57c3148a7a96690.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03df1b77-8df6-baf8-c623-a1935599e07b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem retained_decoder_cauchy {ι : Type*} (s : Finset ι) (b c : ι → ℝ)
    {b₀ : ℝ} (hb₀ : 0 < b₀) (hb : ∀ i ∈ s, 0 < b i) :
    (∑ i ∈ s, |c i|) ^ 2 ≤ b₀ ^ 2 * shellMass s b *
      (∑ i ∈ s, (c i / (b₀ * b i)) ^ 2) := by
  have h := Finset.sum_mul_sq_le_sq_mul_sq s
    (fun i ↦ b₀ * b i) (fun i ↦ |c i / (b₀ * b i)|)
  have hid (i : ι) (hi : i ∈ s) :
      b₀ * b i * |c i / (b₀ * b i)| = |c i| := by
    rw [abs_div, abs_of_pos (mul_pos hb₀ (hb i hi))]
    field_simp [hb₀.ne', (hb i hi).ne']
  have hs : (∑ i ∈ s, (b₀ * b i) ^ 2) = b₀ ^ 2 * shellMass s b := by
    unfold shellMass
    simp_rw [mul_pow]
    rw [Finset.mul_sum]
  have heq : (∑ i ∈ s, b₀ * b i * |c i / (b₀ * b i)|) = ∑ i ∈ s, |c i| :=
    Finset.sum_congr rfl (fun i hi ↦ hid i hi)
  rw [heq, hs] at h
  simpa only [sq_abs] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant71f51da031cdd63af624bd527139093a51f1be505981f282b57c3148a7a96690.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedGramPricing/Variant71f51da031cdd63af624bd527139093a51f1be505981f282b57c3148a7a96690.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a22b5a393dc0c6cf2ecfb641b5d5b13fcf6bad03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# inner_le_weight_mul_Lp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a33416e-a5e6-b550-2949-7850185db547",
  "kind": "lemma",
  "lexical_name": "inner_le_weight_mul_Lp",
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
  "slug": "inner-le-weight-mul-lp--ba53cee63e2bae417ce5548c",
  "source": {
    "blob": "bfb8dec0cd98bcfafac05da9fafea42ae61f1c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 668,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba53cee63e2bae417ce5548cf8690c8c44e1a5d96d2117c3a7dae473e403ac00",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a33416e-a5e6-b550-2949-7850185db547`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 668–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_le_weight_mul_Lp (s : Finset ι) {p : ℝ} (hp : 1 ≤ p) (w f : ι → ℝ≥0) :
    ∑ i ∈ s, w i * f i ≤ (∑ i ∈ s, w i) ^ (1 - p⁻¹) * (∑ i ∈ s, w i * f i ^ p) ^ p⁻¹ := by
  obtain rfl | hp := hp.eq_or_lt
  · simp
  calc
    _ = ∑ i ∈ s, w i ^ (1 - p⁻¹) * (w i ^ p⁻¹ * f i) := ?_
    _ ≤ (∑ i ∈ s, (w i ^ (1 - p⁻¹)) ^ (1 - p⁻¹)⁻¹) ^ (1 / (1 - p⁻¹)⁻¹) *
          (∑ i ∈ s, (w i ^ p⁻¹ * f i) ^ p) ^ (1 / p) :=
        inner_le_Lp_mul_Lq _ _ _ (.symm <| Real.holderConjugate_iff.mpr ⟨hp, by simp⟩)
    _ = _ := ?_
  · congr with i
    rw [← mul_assoc, ← rpow_of_add_eq _ one_ne_zero, rpow_one]
    simp
  · have hp₀ : p ≠ 0 := by positivity
    have hp₁ : 1 - p⁻¹ ≠ 0 := by simp [sub_eq_zero, hp.ne']
    simp [mul_rpow, div_inv_eq_mul, one_mul, one_div, hp₀, hp₁]

/-- **Hölder inequality**: The (`r`-power of the) `L^r` norm of the product of two functions is
bounded by the product of (the `r`-powers of) their `L^p` and `L^q` norms when `p`, `q`, and `r`
form a `Real.HolderTriple`. A version for `NNReal`-valued functions. For an alternative version,
convenient if the infinite sums are already expressed as powers, see `inner_le_Lp_mul_Lq_hasSum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean#L668).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb8dec0cd98bcfafac05da9fafea42ae61f1c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

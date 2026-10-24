# inner_le_Lp_mul_Lq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:287b2680-035f-2b0b-f336-bf8b1f7fc06f",
  "kind": "theorem",
  "lexical_name": "inner_le_Lp_mul_Lq",
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
  "slug": "inner-le-lp-mul-lq--429bd65ba08058fac5f32c8f",
  "source": {
    "blob": "bfb8dec0cd98bcfafac05da9fafea42ae61f1c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 649,
    "line": 623,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:429bd65ba08058fac5f32c8f2e05aaec10612c087ea042d71a5fbeb74e7ab4c6",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:287b2680-035f-2b0b-f336-bf8b1f7fc06f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–649.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inner_le_Lp_mul_Lq (f g : ι → ℝ≥0) {p q : ℝ} (hpq : p.HolderConjugate q) :
    ∑ i ∈ s, f i * g i ≤ (∑ i ∈ s, f i ^ p) ^ (1 / p) * (∑ i ∈ s, g i ^ q) ^ (1 / q) := by
  obtain hf | hf := eq_zero_or_pos (∑ i ∈ s, f i ^ p)
  · exact inner_le_Lp_mul_Lp_of_norm_eq_zero s f g hpq hf
  obtain hg | hg := eq_zero_or_pos (∑ i ∈ s, g i ^ q)
  · calc
      ∑ i ∈ s, f i * g i = ∑ i ∈ s, g i * f i := by
        congr with i
        rw [mul_comm]
      _ ≤ (∑ i ∈ s, g i ^ q) ^ (1 / q) * (∑ i ∈ s, f i ^ p) ^ (1 / p) :=
        (inner_le_Lp_mul_Lp_of_norm_eq_zero s g f hpq.symm hg)
      _ = (∑ i ∈ s, f i ^ p) ^ (1 / p) * (∑ i ∈ s, g i ^ q) ^ (1 / q) := mul_comm _ _
  let f' i := f i / (∑ i ∈ s, f i ^ p) ^ (1 / p)
  let g' i := g i / (∑ i ∈ s, g i ^ q) ^ (1 / q)
  suffices (∑ i ∈ s, f' i * g' i) ≤ 1 by
    simp_rw [f', g', div_mul_div_comm, ← sum_div] at this
    rwa [div_le_iff₀, one_mul] at this
    positivity
  refine inner_le_Lp_mul_Lp_of_norm_le_one s f' g' hpq (le_of_eq ?_) (le_of_eq ?_)
  · simp_rw [f', div_rpow, ← sum_div, ← rpow_mul, one_div, inv_mul_cancel₀ hpq.ne_zero, rpow_one,
      div_self hf.ne']
  · simp_rw [g', div_rpow, ← sum_div, ← rpow_mul, one_div, inv_mul_cancel₀ hpq.symm.ne_zero,
      rpow_one, div_self hg.ne']

/-- **Hölder inequality**: The (`r`-power of the) `L^r` norm of the product of two functions is
bounded by the product of (the `r`-powers of) their `L^p` and `L^q` norms when `p`, `q`, and `r`
form a `Real.HolderTriple`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/MeanInequalities/Variantccf8831abaeedaea2941421a7c5da15333e46dd51809a1a08c359ae26f4701e5.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfb8dec0cd98bcfafac05da9fafea42ae61f1c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

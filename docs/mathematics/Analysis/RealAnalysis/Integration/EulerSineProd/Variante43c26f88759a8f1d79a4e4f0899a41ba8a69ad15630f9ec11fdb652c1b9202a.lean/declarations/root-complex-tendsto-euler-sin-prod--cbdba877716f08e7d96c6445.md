# _root_.Complex.tendsto_euler_sin_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7e2c41e2ff40abda20a9e7750c685cadd853de14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 286,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29cca83a-63fa-a667-3bb6-653be85bfb10",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99cc6971-789a-2107-6eac-3ed525ef5267",
  "kind": "theorem",
  "lexical_name": "_root_.Complex.tendsto_euler_sin_prod",
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
  "slug": "root-complex-tendsto-euler-sin-prod--cbdba877716f08e7d96c6445",
  "source": {
    "blob": "7e2c41e2ff40abda20a9e7750c685cadd853de14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 310,
    "line": 286,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cbdba877716f08e7d96c6445808903c0c455077f895da8399a9a91b3add8428c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99cc6971-789a-2107-6eac-3ed525ef5267`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–310.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Complex.tendsto_euler_sin_prod (z : ℂ) :
    Tendsto (fun n : ℕ => π * z * ∏ j ∈ Finset.range n, ((1 : ℂ) - z ^ 2 / ((j : ℂ) + 1) ^ 2))
      atTop (𝓝 <| Complex.sin (π * z)) := by
  have A :
    Tendsto
      (fun n : ℕ =>
        ((π * z * ∏ j ∈ Finset.range n, ((1 : ℂ) - z ^ 2 / ((j : ℂ) + 1) ^ 2)) *
            ∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ (2 * n)) /
          (∫ x in (0 : ℝ)..π / 2, cos x ^ (2 * n) : ℝ))
      atTop (𝓝 <| _) :=
    Tendsto.congr (fun n => sin_pi_mul_eq z n) tendsto_const_nhds
  have : 𝓝 (Complex.sin (π * z)) = 𝓝 (Complex.sin (π * z) * 1) := by rw [mul_one]
  simp_rw [this, mul_div_assoc] at A
  convert (tendsto_mul_iff_of_ne_zero _ one_ne_zero).mp A
  suffices Tendsto (fun n : ℕ =>
        (∫ x in (0 : ℝ)..π / 2, Complex.cos (2 * z * x) * (cos x : ℂ) ^ n) /
          (∫ x in (0 : ℝ)..π / 2, cos x ^ n : ℝ)) atTop (𝓝 1) from
    this.comp (tendsto_id.const_mul_atTop' zero_lt_two)
  have : ContinuousOn (fun x : ℝ => Complex.cos (2 * z * x)) (Icc 0 (π / 2)) :=
    (Complex.continuous_cos.comp (continuous_const.mul Complex.continuous_ofReal)).continuousOn
  convert tendsto_integral_cos_pow_mul_div this using 1
  · ext1 n; congr 2 with x : 1; rw [mul_comm]
  · rw [Complex.ofReal_zero, mul_zero, Complex.cos_zero]

/-- Euler's infinite product formula for the real sine function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EulerSineProd/Variante43c26f88759a8f1d79a4e4f0899a41ba8a69ad15630f9ec11fdb652c1b9202a.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e2c41e2ff40abda20a9e7750c685cadd853de14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actual_native_replacement_decoder_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed0f73f4-fb78-c521-482a-88f6122f0e2b",
  "kind": "theorem",
  "lexical_name": "actual_native_replacement_decoder_price",
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
  "slug": "actual-native-replacement-decoder-price--114db044523ca219d256c51b",
  "source": {
    "blob": "095ad9e3572cef07acba9cf64aa0e94c045bc402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:114db044523ca219d256c51b83391d174f0e0659abc9b15eee6fb772ab55d559",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed0f73f4-fb78-c521-482a-88f6122f0e2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_native_replacement_decoder_price (b ĉ : ℕ → ℝ) {A b₀ L : ℝ}
    (hA : 8 ≤ A) (hb₀ : 0 < b₀) (hb : ∀ n ∈ actualShell A, 0 < b n)
    (hanchor : b₀ ^ 2 ≤ L)
    (hupper : shellForm (actualShell A) b (nativeKernel A (fun n ↦ Real.log n)) ≤
      L * shellMass (actualShell A) b) :
    Real.sqrt (319 / 384 : ℝ) *
      ((Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 -
        (∑ n ∈ actualShell A, |ShellArithmetic.coefficient n - ĉ n|)) ≤
      L * Real.sqrt (∑ n ∈ actualShell A, (ĉ n / (b₀ * b n)) ^ 2) := by
  have hprice := actual_coherent_decoder_payment (actualShell A) b ĉ
    (fun n ↦ Real.log n) hA (fun n hn m hm ↦ actual_shell_log_width hn hm)
    hb₀ hb hanchor hupper
  have hmass := ShellArithmetic.actual_exponential_shell_mass hA
  change (Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 ≤
    ∑ n ∈ actualShell A, |ShellArithmetic.coefficient n| at hmass
  have herr := ShellArithmetic.absolute_replacement_error_prices_shell
    (actualShell A) ShellArithmetic.coefficient ĉ
  have hremaining :
      (Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12 -
        (∑ n ∈ actualShell A, |ShellArithmetic.coefficient n - ĉ n|) ≤
      ∑ n ∈ actualShell A, |ĉ n| := by linarith
  exact (mul_le_mul_of_nonneg_left hremaining (Real.sqrt_nonneg _)).trans hprice

/-- No replacement error remains when the original arithmetic row is retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095ad9e3572cef07acba9cf64aa0e94c045bc402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

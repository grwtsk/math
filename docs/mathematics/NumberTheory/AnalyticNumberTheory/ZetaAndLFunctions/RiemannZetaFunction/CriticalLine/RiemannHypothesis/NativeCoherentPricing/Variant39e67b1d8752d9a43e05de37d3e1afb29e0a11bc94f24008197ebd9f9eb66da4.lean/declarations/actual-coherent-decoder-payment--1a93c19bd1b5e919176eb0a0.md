# actual_coherent_decoder_payment

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e142e41d-9f46-dbe2-0f2b-15612f14a06c",
  "kind": "theorem",
  "lexical_name": "actual_coherent_decoder_payment",
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
  "slug": "actual-coherent-decoder-payment--1a93c19bd1b5e919176eb0a0",
  "source": {
    "blob": "095ad9e3572cef07acba9cf64aa0e94c045bc402",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a93c19bd1b5e919176eb0a003f5e1cd44f70afd72b472e31fc1d45251430e79",
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

Occurrence: `result:e142e41d-9f46-dbe2-0f2b-15612f14a06c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_coherent_decoder_payment (s : Finset ℕ) (b c : ℕ → ℝ)
    (t : ℕ → ℝ) {A b₀ L : ℝ} (hA : 8 ≤ A)
    (hwidth : ∀ n ∈ s, ∀ m ∈ s, |t n - t m| ≤ 1)
    (hb₀ : 0 < b₀) (hb : ∀ n ∈ s, 0 < b n)
    (hanchor : b₀ ^ 2 ≤ L)
    (hupper : shellForm s b (nativeKernel A t) ≤ L * shellMass s b) :
    Real.sqrt (319 / 384 : ℝ) * (∑ n ∈ s, |c n|) ≤
      L * Real.sqrt (∑ n ∈ s, (c n / (b₀ * b n)) ^ 2) := by
  apply positive_diagonal_decoder_payment s b c hb₀ hb (by norm_num) hanchor
  exact actual_shell_prices_weight_mass s b t hA hwidth ((sq_nonneg b₀).trans hanchor) hupper

/-- The actual shell in this module, with the following exact parameterization.

def actualShell (A : ℝ) : Finset ℕ := ShellArithmetic.shell (Real.exp (2 * A - 2)) (Real.exp
(2 * A - 1))
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant39e67b1d8752d9a43e05de37d3e1afb29e0a11bc94f24008197ebd9f9eb66da4.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `095ad9e3572cef07acba9cf64aa0e94c045bc402` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

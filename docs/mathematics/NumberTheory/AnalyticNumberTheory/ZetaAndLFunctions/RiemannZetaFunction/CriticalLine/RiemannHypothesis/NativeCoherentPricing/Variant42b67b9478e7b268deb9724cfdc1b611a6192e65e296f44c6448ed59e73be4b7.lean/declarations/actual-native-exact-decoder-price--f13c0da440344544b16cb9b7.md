# actual_native_exact_decoder_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c9cb40d-419a-bbea-1c1e-6fa253c5fa45",
  "kind": "theorem",
  "lexical_name": "actual_native_exact_decoder_price",
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
  "slug": "actual-native-exact-decoder-price--f13c0da440344544b16cb9b7",
  "source": {
    "blob": "4c2d043078bfe9d39a8fc2e2e88c8ed27bccba5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f13c0da440344544b16cb9b7e6eef85b106f188c62ccf3e6c2a5369c258a386b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c9cb40d-419a-bbea-1c1e-6fa253c5fa45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_native_exact_decoder_price (b : ℕ → ℝ) {A b₀ L : ℝ}
    (hA : 8 ≤ A) (hb₀ : 0 < b₀) (hb : ∀ n ∈ actualShell A, 0 < b n)
    (hanchor : b₀ ^ 2 ≤ L)
    (hupper : shellForm (actualShell A) b (nativeKernel A (fun n ↦ Real.log n)) ≤
      L * shellMass (actualShell A) b) :
    Real.sqrt (319 / 384 : ℝ) *
      ((Real.exp (-1) - Real.exp (-2)) * Real.exp (1 / 2) * Real.exp A / 12) ≤
      L * Real.sqrt (∑ n ∈ actualShell A, (ShellArithmetic.coefficient n / (b₀ * b n)) ^ 2) := by
  simpa only [sub_self, abs_zero, Finset.sum_const_zero, sub_zero] using
    actual_native_replacement_decoder_price b ShellArithmetic.coefficient hA hb₀ hb hanchor hupper

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NativeCoherentPricing/Variant42b67b9478e7b268deb9724cfdc1b611a6192e65e296f44c6448ed59e73be4b7.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c2d043078bfe9d39a8fc2e2e88c8ed27bccba5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

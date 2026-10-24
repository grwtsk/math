# log_pmul_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d7caed1d-ebef-ec66-a068-13026914a433",
  "kind": "theorem",
  "lexical_name": "log_pmul_convolution",
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
  "slug": "log-pmul-convolution--691767326eaf2421d4268ce7",
  "source": {
    "blob": "d87737db8dd9298ebdc0ed6fa7823efabdaba856",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 23,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variant2aa5af03e2f00abd2fb098c071d45c8b3ff426981d91eb07f23ac2d124d5057d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:691767326eaf2421d4268ce700660b0400adc6678be7fff859ef0fe7f8857d9a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variant2aa5af03e2f00abd2fb098c071d45c8b3ff426981d91eb07f23ac2d124d5057d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7caed1d-ebef-ec66-a068-13026914a433`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem log_pmul_convolution (f g : ArithmeticFunction ℝ) :
    ArithmeticFunction.log.pmul (f * g) =
      (ArithmeticFunction.log.pmul f) * g + f * (ArithmeticFunction.log.pmul g) := by
  ext n
  simp only [pmul_apply, mul_apply, ArithmeticFunction.add_apply, log_apply, mul_sum, ← sum_add_distrib]
  apply sum_congr rfl
  intro q hq
  obtain ⟨hqmul, hn⟩ := Nat.mem_divisorsAntidiagonal.mp hq
  have hq1 : (q.1 : ℝ) ≠ 0 := by
    exact_mod_cast (show q.1 ≠ 0 by intro hz; simp [hz] at hqmul; exact hn hqmul.symm)
  have hq2 : (q.2 : ℝ) ≠ 0 := by
    exact_mod_cast (show q.2 ≠ 0 by intro hz; simp [hz] at hqmul; exact hn hqmul.symm)
  rw [← hqmul, Nat.cast_mul, Real.log_mul hq1 hq2]
  ring

/-- The logarithm times the Dirichlet unit-of-summation is the logarithm itself. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variant2aa5af03e2f00abd2fb098c071d45c8b3ff426981d91eb07f23ac2d124d5057d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SelbergSourceCombined/Variant2aa5af03e2f00abd2fb098c071d45c8b3ff426981d91eb07f23ac2d124d5057d.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d87737db8dd9298ebdc0ed6fa7823efabdaba856` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

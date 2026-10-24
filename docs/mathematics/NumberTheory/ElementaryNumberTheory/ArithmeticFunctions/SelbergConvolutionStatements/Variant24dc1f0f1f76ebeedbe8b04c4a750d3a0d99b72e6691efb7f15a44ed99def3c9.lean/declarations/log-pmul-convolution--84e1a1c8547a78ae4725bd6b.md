# log_pmul_convolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c20cc9c8-492b-b7d6-c3f5-0f3b8eaf7825",
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
  "slug": "log-pmul-convolution--84e1a1c8547a78ae4725bd6b",
  "source": {
    "blob": "4577bce36d6406ea5c288296000ce863b054caae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 22,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84e1a1c8547a78ae4725bd6ba3bb8356fb4cce0a8a0bdfc4fa2326cdd40476a4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c20cc9c8-492b-b7d6-c3f5-0f3b8eaf7825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–37.

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

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/SelbergConvolutionStatements/Variant24dc1f0f1f76ebeedbe8b04c4a750d3a0d99b72e6691efb7f15a44ed99def3c9.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4577bce36d6406ea5c288296000ce863b054caae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

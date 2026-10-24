# source_minus_integral_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a00079d-edb2-b186-f97c-1abebc58e31e",
  "kind": "theorem",
  "lexical_name": "source_minus_integral_abs_le",
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
  "slug": "source-minus-integral-abs-le--11a7c233d75bfc0379bfee0b",
  "source": {
    "blob": "2085ecf8f50f2603845773db15eb37033bd348b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialMertensReduction/Variant73a561ef2c475a1c3f012ac74777af68dfd962d0ab6f16d7393d9d9f1f9015d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11a7c233d75bfc0379bfee0bab76c04ee0228a236dcb2065d670d3d7a869b298",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialMertensReduction/Variant73a561ef2c475a1c3f012ac74777af68dfd962d0ab6f16d7393d9d9f1f9015d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a00079d-edb2-b186-f97c-1abebc58e31e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_minus_integral_abs_le {A : ℝ} (hA : 1 ≤ A) :
    |closedPrimeMoment A - actualMertensIntegral A| ≤ 24 * A + 60 := by
  rw [closedPrimeMoment_eq_small_add_large, largeDivisorMobiusMoment_eq_mertens A hA]
  have heq : smallDivisorMobiusMoment A +
        (mertensKernelIntegral A (sourceMobiusKernel A) -
          mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A)) -
        actualMertensIntegral A = smallDivisorMobiusMoment A -
          mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A) := by
    unfold actualMertensIntegral
    ring
  rw [heq]
  have hsmall := smallDivisorMobiusMoment_abs_le hA
  have hend := actual_mertens_endpoint_abs_le hA
  calc
    _ ≤ |smallDivisorMobiusMoment A| +
        |mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A)| := by
          simpa only [sub_eq_add_neg, abs_neg] using abs_add_le
            (smallDivisorMobiusMoment A)
            (-(mertens (sourceLower A) * sourceMobiusKernel A (sourceLower A)))
    _ ≤ 24 * A + 60 := by linarith

/-- General stability of an eventual polynomial upper bound under a linear error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialMertensReduction/Variant73a561ef2c475a1c3f012ac74777af68dfd962d0ab6f16d7393d9d9f1f9015d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PolynomialMertensReduction/Variant73a561ef2c475a1c3f012ac74777af68dfd962d0ab6f16d7393d9d9f1f9015d3.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2085ecf8f50f2603845773db15eb37033bd348b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

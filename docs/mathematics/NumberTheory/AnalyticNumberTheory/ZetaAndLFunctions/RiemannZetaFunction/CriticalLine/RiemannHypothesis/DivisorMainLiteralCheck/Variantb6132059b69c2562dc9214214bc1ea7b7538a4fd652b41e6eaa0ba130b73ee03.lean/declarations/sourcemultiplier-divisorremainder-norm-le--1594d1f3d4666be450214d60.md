# sourceMultiplier_divisorRemainder_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8383749e0d4f86809d61073bd26d351506ce5358",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 108,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b0a2be7-1639-105f-b0d7-036c1a854c82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bb23e05-82f5-b749-6b05-9a02cd52bf0e",
  "kind": "theorem",
  "lexical_name": "sourceMultiplier_divisorRemainder_norm_le",
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
  "slug": "sourcemultiplier-divisorremainder-norm-le--1594d1f3d4666be450214d60",
  "source": {
    "blob": "8383749e0d4f86809d61073bd26d351506ce5358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 108,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1594d1f3d4666be450214d601435bc7070ddde991f6816232ba8528ebd02afeb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bb23e05-82f5-b749-6b05-9a02cd52bf0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceMultiplier_divisorRemainder_norm_le (ε h : ℝ) (hε : 0 < ε)
    (hsmall : ε ≤ 1 / 4) (hh : 0 ≤ h) (Y : ℝ) (hY : 1 ≤ Y) :
    ‖sourceMultiplier ε h hε hsmall hh (divisorRemainderVector ε hε.le Y hY)‖ ≤
      ((4 / 3 : ℝ) * Real.exp (1 / 4)) *
        (ε ^ 2 * Real.sqrt (Y - 1) * Real.log Y ^ 2) :=
  (sourceMultiplier_norm_le ε h hε hsmall hh _).trans
    (mul_le_mul_of_nonneg_left (divisorRemainderVector_norm_le ε hε.le Y hY) (by positivity))

end
end FormalResearch.RiemannHypothesis.SourceComparison.DampedDivisorRemainderNorm


/-! Exact arithmetic main-core comparison, retaining every post-cutoff correction. -/
set_option autoImplicit false
namespace DivisorMainComparisonScratch
open MeasureTheory Set Finset Complex
open FormalResearch.RiemannHypothesis.SourceComparison
open TruncatedDivisorResidual DampedDivisorCoefficient DampedDivisorRemainderNorm
open MobiusFractionalResidual MobiusPoleNumerator FiniteMobiusController
open CoreTailSplit SourceWeightedMultiplier HalfLineExtension LogarithmicResidual
open LogarithmicResidualTail
noncomputable section

/-- The explicit arithmetic main term retains its prime-power prefix, every omitted divisor,
and the complete repeated endpoint correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8383749e0d4f86809d61073bd26d351506ce5358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

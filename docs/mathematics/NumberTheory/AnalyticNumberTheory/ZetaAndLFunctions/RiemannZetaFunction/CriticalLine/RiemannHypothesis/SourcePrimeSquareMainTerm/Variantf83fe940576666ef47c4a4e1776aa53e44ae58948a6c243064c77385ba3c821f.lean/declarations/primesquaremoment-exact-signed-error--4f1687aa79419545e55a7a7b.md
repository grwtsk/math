# primeSquareMoment_exact_signed_error

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "03c82f8afc96a66cf3735f41293f7c9c6942e8b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 81,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:00b805f7-c51a-455e-5a8d-22a3c5fa01fd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11184127-e258-234f-2f85-fd57e1a0809d",
  "kind": "theorem",
  "lexical_name": "primeSquareMoment_exact_signed_error",
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
  "slug": "primesquaremoment-exact-signed-error--4f1687aa79419545e55a7a7b",
  "source": {
    "blob": "03c82f8afc96a66cf3735f41293f7c9c6942e8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 81,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f1687aa79419545e55a7a7bb361babe7bd7f99cb0666f47465a1447905e4603",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11184127-e258-234f-2f85-fd57e1a0809d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 81–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquareMoment_exact_signed_error (A : ℝ) (hA : 1 ≤ A) :
    primeSquareMoment A - diagonalMainCoefficient A * A =
      -(∫ t in 0..A, primeLogError t * deriv (diagonalCorrelation A) t) := by
  have he := primeLogWindow_sub_integral 0 A (by norm_num) (by linarith)
    (diagonalCorrelation A) (diagonalCorrelation_contDiff A (by linarith))
  rw [← primeSquareMoment_eq_primeLogWindow, diagonalCorrelation_integral A hA,
    diagonalCorrelation_at_upper A (by linarith), diagonalCorrelation_at_zero A hA] at he
  simpa only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    sub_zero, zero_sub] using he

/-- A literal weighted-prime Mertens witness gives the source square sector
an 11-times witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean#L81).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c82f8afc96a66cf3735f41293f7c9c6942e8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

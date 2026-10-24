# primeSquareMoment_main_term_error_of_mertens

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
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f8/f83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13423af2-13de-ebb6-dff4-089b7683d22b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02c5b6b7-ec5e-9c68-d01b-4231744c9a3b",
  "kind": "theorem",
  "lexical_name": "primeSquareMoment_main_term_error_of_mertens",
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
  "slug": "primesquaremoment-main-term-error-of-mertens--dee6ab1df7216a1cc6dd7ab1",
  "source": {
    "blob": "03c82f8afc96a66cf3735f41293f7c9c6942e8b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dee6ab1df7216a1cc6dd7ab136f29d757177d8358a4c253b38e887e9328b7187",
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

Occurrence: `result:02c5b6b7-ec5e-9c68-d01b-4231744c9a3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeSquareMoment_main_term_error_of_mertens (C : ℝ) (hC0 : 0 ≤ C)
    (hC : ∀ t : ℝ, 0 ≤ t → |primeLogError t| ≤ C) (A : ℝ) (hA : 1 ≤ A) :
    |primeSquareMoment A - diagonalMainCoefficient A * A| ≤ 11 * C := by
  have he := primeLogWindow_error_le 0 A (by norm_num) (by linarith)
    (diagonalCorrelation A) (diagonalCorrelation_contDiff A (by linarith)) C hC
  have hv := diagonalCorrelation_variation_le A 0 A hA (by norm_num) (by linarith) le_rfl
  rw [← primeSquareMoment_eq_primeLogWindow, diagonalCorrelation_integral A hA,
    diagonalCorrelation_at_upper A (by linarith), diagonalCorrelation_at_zero A hA,
    abs_zero, abs_one, add_zero] at he
  nlinarith

/-- The existing unconditional Mertens witness controls this exact source component at every A≥1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePrimeSquareMainTerm/Variantf83fe940576666ef47c4a4e1776aa53e44ae58948a6c243064c77385ba3c821f.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03c82f8afc96a66cf3735f41293f7c9c6942e8b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

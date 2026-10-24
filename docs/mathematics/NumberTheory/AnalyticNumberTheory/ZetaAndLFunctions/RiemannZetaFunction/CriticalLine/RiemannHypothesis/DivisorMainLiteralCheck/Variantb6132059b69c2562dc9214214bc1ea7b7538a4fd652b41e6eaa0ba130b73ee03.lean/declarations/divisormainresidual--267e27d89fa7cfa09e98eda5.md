# divisorMainResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88c3a2853b8b1ec96faa1c6ebde1d8c91e143e1385a94b24116155edf658e374",
  "kind": "def",
  "lexical_name": "divisorMainResidual",
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
  "slug": "divisormainresidual--267e27d89fa7cfa09e98eda5",
  "source": {
    "blob": "8383749e0d4f86809d61073bd26d351506ce5358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 133,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:267e27d89fa7cfa09e98eda5ab136d4d8b973890c669926fa4a2d719553db351",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88c3a2853b8b1ec96faa1c6ebde1d8c91e143e1385a94b24116155edf658e374`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def divisorMainResidual (X : ℕ) (ε x : ℝ) : ℂ :=
  (x : ℂ) * correctedNumerator X (1 / 2 + (ε : ℂ)) -
    (ε : ℂ) * ((∑ n ∈ Icc 1 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ) +
    ((∑ n ∈ Icc 1 ⌊x⌋₊,
      (dampedDivisorCoefficient ε n - truncatedDivisorCoefficient X ε n) : ℝ) : ℂ) +
    (((X : ℝ) * Real.exp (-ε * Real.log (X : ℝ)) * mobiusReciprocalSum X *
      (⌊x / (X : ℝ)⌋₊ : ℝ) : ℝ) : ℂ)

/-- The full original residual is the explicit main term minus the actual finite Taylor remainder.
This identity keeps the post-cutoff signed divisor difference and endpoint atom. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DivisorMainLiteralCheck/Variantb6132059b69c2562dc9214214bc1ea7b7538a4fd652b41e6eaa0ba130b73ee03.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8383749e0d4f86809d61073bd26d351506ce5358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

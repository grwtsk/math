# actualQuotientSamplingError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:522f5d9c75589975bb11b08419f2468377971634afa6e69a34d44e4cb0de03f3",
  "kind": "def",
  "lexical_name": "actualQuotientSamplingError",
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
  "slug": "actualquotientsamplingerror--32138891f9ddb01d483b7e60",
  "source": {
    "blob": "bd9c409e3fac27fc8d433e9376d731b9b18390c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32138891f9ddb01d483b7e6077a6310c1df0d644f3f11ba8d5444bd7bbc0bbcc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:522f5d9c75589975bb11b08419f2468377971634afa6e69a34d44e4cb0de03f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualQuotientSamplingError (A : ℝ) (d m : ℕ) : ℝ :=
  (∑ j ∈ Finset.Icc (vaughanCutoff A / d + 1) (sourceKernelCutoff A / d),
    sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ)) -
  (sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) -
    ∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
      sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))

/-- Actual original arithmetic coefficients multiply the errors before any absolute estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6eb6af27a8a3e4560f66SourceSignedDivisorSamplingBudget/Variant6eb6af27a8a3e4560f6690dbd64aaee8bbf836d553c1f9a8a8bfbc4be4020435.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd9c409e3fac27fc8d433e9376d731b9b18390c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

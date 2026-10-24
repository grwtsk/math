# Yfn_logDeriv_partial_fraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "adba6ba7d0a59f3d93a138ec46716cab2aac3df1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:349afab0-4165-b0a2-bc88-8627608a4dac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c00eb551-aa3a-076f-6817-a2fb4cb3c319",
  "kind": "theorem",
  "lexical_name": "Yfn_logDeriv_partial_fraction",
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
  "slug": "yfn-logderiv-partial-fraction--3aac245aadbcd10ca894c3c4",
  "source": {
    "blob": "adba6ba7d0a59f3d93a138ec46716cab2aac3df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3aac245aadbcd10ca894c3c4f35b2d0b0ea9828d2b60df41b5fcc5cb5ad2e851",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c00eb551-aa3a-076f-6817-a2fb4cb3c319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Yfn_logDeriv_partial_fraction : ∃ C t₁ : ℝ, 0 < C ∧ 4 ≤ t₁ ∧ ∀ t : ℝ, t₁ ≤ |t| →
    Yfn (2 + t * I) ≠ 0 ∧
    ∃ Z : Finset ℂ,
      (↑Z = {ρ ∈ closedBall (2 + t * I) (22 / 25 * (91 / 50)) | Yfn ρ = 0}) ∧
      ((∑ ρ ∈ Z, (analyticOrderNatAt Yfn ρ : ℝ)) ≤ C * Real.log (|t| + 3)) ∧
      ∀ s ∈ closedBall (2 + t * I) (3 / 2), Yfn s ≠ 0 →
        ‖logDeriv Yfn s - ∑ ρ ∈ Z, (analyticOrderNatAt Yfn ρ : ℂ) / (s - ρ)‖
          ≤ C * Real.log (|t| + 3) := by
  obtain ⟨Cf, t₀, hCf, -, hfa, hgrow, hlow⟩ := Yfn_generic_inputs
  obtain ⟨C, t₁, hC, ht₁4, -, h⟩ := Generic.logDeriv_partial_fraction_two_line hfa hCf hgrow hlow
  exact ⟨C, t₁, hC, ht₁4, h⟩

/-! ### the local count -/

section LocalCount

variable (hF2 : XiDerivZerosInStrip) (hs : XiDerivSeam)

/-- the link between the configuration xiDerivZeros and f := Y: every configuration point with β ≥ 1/2 is a
zero of Y of the same order. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variant7ab18cc766bc42eb6216acd7ab83fdceb831f1269481b78d66efa3a54ad13e12.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adba6ba7d0a59f3d93a138ec46716cab2aac3df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

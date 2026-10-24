# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2c4ac85ba4f530693b45e4cda0b0756ed2e5e3f1d9338f2cab8125b2e1ba4f4",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--a90dd6aa41b6360f47e83ec6",
  "source": {
    "blob": "3b509b22adcc47c28352ce4b0e69b05d72f0f23e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1959,
    "line": 1949,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a90dd6aa41b6360f47e83ec687ccea807e7b10f9aa175fd3b2cb00b3757edaf5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2c4ac85ba4f530693b45e4cda0b0756ed2e5e3f1d9338f2cab8125b2e1ba4f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1949–1959.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (E : ℝ → ℝ) (h G : ℕ) (K K' : ℝ)
    (hh : 1 ≤ h) (hc : ContinuousOn E (Set.Ici 1))
    (hd : ∀ q : ℝ, 1 < q → DifferentiableAt ℝ E q)
    (hv : ∀ q : ℝ, 1 ≤ q → |E q| ≤ K / Real.sqrt q)
    (hb : ∀ q : ℝ, 1 < q → |deriv E q| ≤ K' / (q * Real.sqrt q)) :
    Real.sqrt (G : ℝ) * |E ((h * G ^ 2 : ℕ) : ℝ)| +
      (∑ j ∈ Finset.Icc 1 (G - 1), Real.sqrt (j : ℝ) *
        |E ((h * j ^ 2 : ℕ) : ℝ) - E ((h * (j + 1) ^ 2 : ℕ) : ℝ)|) ≤
      (K + 4 * K') / Real.sqrt (h : ℝ) :=
  KernelVariation.composedVariation_nat_le E h G K K' hh hc hd hv hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/IntegratedPermanentStatements/Variant8533c7a4ebabdefc4207cfc8a83e3f1940009ebd98787c12eb5b5667b0e63e10.lean#L1949).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b509b22adcc47c28352ce4b0e69b05d72f0f23e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

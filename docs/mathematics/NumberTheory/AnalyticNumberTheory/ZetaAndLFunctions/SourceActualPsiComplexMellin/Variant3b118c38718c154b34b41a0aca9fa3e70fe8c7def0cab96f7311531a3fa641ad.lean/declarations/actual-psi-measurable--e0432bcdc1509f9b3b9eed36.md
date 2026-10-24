# actual_psi_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:139a1d54-5e2c-7811-f7a1-d8fd27152800",
  "kind": "theorem",
  "lexical_name": "actual_psi_measurable",
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
  "slug": "actual-psi-measurable--e0432bcdc1509f9b3b9eed36",
  "source": {
    "blob": "71c76337b1de25ad5006a608919ebdeed8afdc2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0432bcdc1509f9b3b9eed36283ae8baa26ebbe1514230b1c29508577cb4dd5b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:139a1d54-5e2c-7811-f7a1-d8fd27152800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_psi_measurable : Measurable Chebyshev.psi := by
  have he : Chebyshev.psi = fun y : ℝ =>
      ∑ n ∈ Icc 0 (Nat.floor y), (ArithmeticFunction.vonMangoldt n : ℝ) := by
    funext y
    rw [Chebyshev.psi_eq_sum_Icc]
  rw [he]
  exact (measurable_of_countable (fun M : ℕ =>
    ∑ n ∈ Icc 0 M, (ArithmeticFunction.vonMangoldt n : ℝ))).comp Nat.measurable_floor

/-- Genuine complex Mellin L1 is proved on Re(s)>1 before any signed integral split. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c76337b1de25ad5006a608919ebdeed8afdc2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

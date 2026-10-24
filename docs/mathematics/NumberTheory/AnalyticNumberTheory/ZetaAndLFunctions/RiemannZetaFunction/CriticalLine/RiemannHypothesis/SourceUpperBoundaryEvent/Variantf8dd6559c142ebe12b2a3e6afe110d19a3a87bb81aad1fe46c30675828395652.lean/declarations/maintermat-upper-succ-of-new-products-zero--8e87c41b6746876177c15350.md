# mainTermAt_upper_succ_of_new_products_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:79027f03-33ca-f4a8-5e99-94b6b9bd2337",
  "kind": "theorem",
  "lexical_name": "mainTermAt_upper_succ_of_new_products_zero",
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
  "slug": "maintermat-upper-succ-of-new-products-zero--8e87c41b6746876177c15350",
  "source": {
    "blob": "70b3589dae9518e62379cf2f8c5df271996897af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 118,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e87c41b6746876177c153505cc2874d3dc51bc85a206d466a0a76298f894473",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79027f03-33ca-f4a8-5e99-94b6b9bd2337`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mainTermAt_upper_succ_of_new_products_zero (A : ℝ) (U N : ℕ)
    (hUN : U ≤ N)
    (hz : ∀ k ∈ Finset.Ioc U (N + 1),
      sourcePlainWeight A ((k * (N + 1) : ℕ) : ℝ) = 0) :
    mainTermAt A U (N + 1) = mainTermAt A U N := by
  unfold mainTermAt plainOffAt
  rw [offDiagonal_upper_succ_of_new_products_zero A U N (fun _ ↦ 1) hUN hz]

/-- The complete centered deletion survives the two-axis upper event exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceUpperBoundaryEvent/Variantf8dd6559c142ebe12b2a3e6afe110d19a3a87bb81aad1fe46c30675828395652.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70b3589dae9518e62379cf2f8c5df271996897af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

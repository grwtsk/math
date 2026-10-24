# actual_vonMangoldt_prefix_bigO

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:86e3b69a-d64d-95a5-eda2-e58acf3e9eb9",
  "kind": "theorem",
  "lexical_name": "actual_vonMangoldt_prefix_bigO",
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
  "slug": "actual-vonmangoldt-prefix-bigo--43151dfbec41fa0150a36460",
  "source": {
    "blob": "71c76337b1de25ad5006a608919ebdeed8afdc2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 27,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43151dfbec41fa0150a36460fbd2670f58a1abd27b01c8c08581d64c0f9baf36",
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

Occurrence: `result:86e3b69a-d64d-95a5-eda2-e58acf3e9eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem actual_vonMangoldt_prefix_bigO :
    (fun N : ℕ => ∑ n ∈ Icc 1 N, (ArithmeticFunction.vonMangoldt n : ℝ))
      =O[atTop] (fun N : ℕ => (N : ℝ) ^ (1 : ℝ)) := by
  apply IsBigO.of_bound (Real.log 4 + 4)
  filter_upwards [] with N
  have he : (∑ n ∈ Icc 1 N, (ArithmeticFunction.vonMangoldt n : ℝ)) =
      Chebyshev.psi (N : ℝ) := by rw [psi_eq_closed_sum, Nat.floor_natCast]
  rw [he, Real.norm_eq_abs, abs_of_nonneg (Chebyshev.psi_nonneg _), Real.rpow_one,
    Real.norm_eq_abs, abs_of_nonneg (Nat.cast_nonneg N)]
  exact Chebyshev.psi_le_const_mul_self (Nat.cast_nonneg N)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/SourceActualPsiComplexMellin/Variant3b118c38718c154b34b41a0aca9fa3e70fe8c7def0cab96f7311531a3fa641ad.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71c76337b1de25ad5006a608919ebdeed8afdc2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

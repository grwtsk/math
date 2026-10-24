# dyadic_debts_bound_every_real_source_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c35a4fdd-4543-ebb4-929d-3c5569100fa7",
  "kind": "theorem",
  "lexical_name": "dyadic_debts_bound_every_real_source_prefix",
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
  "slug": "dyadic-debts-bound-every-real-source-prefix--e82e98f917ebb4c98321bc2a",
  "source": {
    "blob": "147cc4c915a4f9179141f04f12af5c4c48ad9c2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 78,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDebtConsumer/Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e82e98f917ebb4c98321bc2ad3e6e3469adcbdf2dece05dc24a7505811fff000",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDebtConsumer/Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c35a4fdd-4543-ebb4-929d-3c5569100fa7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_debts_bound_every_real_source_prefix
    (hsum : Summable (fun j : ℕ => positiveDebt (2 ^ j) (2 ^ j))) {x : ℝ} (hx : 1 ≤ x) :
    ordinaryPrimePrimitive x - ordinaryPrimePrimitive 1 ≤
      ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
  have hint (K : ℕ) : ordinaryPrimePrimitive (1 + K : ℕ) - ordinaryPrimePrimitive (1 : ℕ) ≤
      ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
    have h := AccordionConsumer.actual_signed_work_le_positive_debt
      (by omega : 1 ≤ (1 : ℕ)) K
    rw [← positive_debt_is_existing_source_debt] at h
    exact h.trans (every_positive_prefix_le_total_dyadic_debt hsum K)
  simpa only [Nat.cast_one] using actual_integer_upper_implies_all_real
    (by omega : 1 ≤ (1 : ℕ)) hint x (by simpa only [Nat.cast_one] using hx)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDebtConsumer/Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDebtConsumer/Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147cc4c915a4f9179141f04f12af5c4c48ad9c2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

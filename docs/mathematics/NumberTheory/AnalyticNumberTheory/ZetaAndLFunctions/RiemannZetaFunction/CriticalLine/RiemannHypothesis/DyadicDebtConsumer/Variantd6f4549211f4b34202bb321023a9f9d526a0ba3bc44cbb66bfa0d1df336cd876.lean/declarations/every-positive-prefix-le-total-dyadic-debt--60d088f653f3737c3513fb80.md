# every_positive_prefix_le_total_dyadic_debt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9c035ba-7fa8-a564-618e-c8ea7b19d52c",
  "kind": "theorem",
  "lexical_name": "every_positive_prefix_le_total_dyadic_debt",
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
  "slug": "every-positive-prefix-le-total-dyadic-debt--60d088f653f3737c3513fb80",
  "source": {
    "blob": "147cc4c915a4f9179141f04f12af5c4c48ad9c2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDebtConsumer/Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:60d088f653f3737c3513fb80ee3cdac4c3a063ba2cffee4f08d8f56386172e61",
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

Occurrence: `result:c9c035ba-7fa8-a564-618e-c8ea7b19d52c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem every_positive_prefix_le_total_dyadic_debt
    (hsum : Summable (fun j : ℕ => positiveDebt (2 ^ j) (2 ^ j))) (K : ℕ) :
    positiveDebt 1 K ≤ ∑' j : ℕ, positiveDebt (2 ^ j) (2 ^ j) := by
  have hp : K + 1 < (2 : ℕ) ^ (K + 1) := Nat.lt_two_pow_self
  have hK : K ≤ (2 : ℕ) ^ (K + 1) - 1 := by omega
  apply (positive_debt_mono (by omega : 1 ≤ (1 : ℕ)) hK).trans
  rw [exact_dyadic_partition]
  exact hsum.sum_le_tsum (Finset.range (K + 1))
    (fun j _ => positive_debt_nonneg (Nat.one_le_pow j 2 (by omega)) _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDebtConsumer/Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DyadicDebtConsumer/Variantd6f4549211f4b34202bb321023a9f9d526a0ba3bc44cbb66bfa0d1df336cd876.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147cc4c915a4f9179141f04f12af5c4c48ad9c2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

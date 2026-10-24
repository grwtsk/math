# truncated_coefficient_eq_full_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a112edc37bec73676e0c09821edbfd911abba83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b9/b9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a82b1ee7-8fa9-5609-8322-b8e832d9a40c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:580153e3-0cc0-001a-89de-69109240c7cb",
  "kind": "theorem",
  "lexical_name": "truncated_coefficient_eq_full_of_le",
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
  "slug": "truncated-coefficient-eq-full-of-le--b0f0f3270102873c4dc6985e",
  "source": {
    "blob": "8a112edc37bec73676e0c09821edbfd911abba83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 116,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0f0f3270102873c4dc6985eae2586e6066236606e689da1ead6d4cc7d53ac40",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:580153e3-0cc0-001a-89de-69109240c7cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem truncated_coefficient_eq_full_of_le (U n : ℕ) (hn : n ≤ U) :
    (shortPart U (moebius : ArithmeticFunction ℝ) * shortPart U vonMangoldt) n =
      ((moebius : ArithmeticFunction ℝ) * vonMangoldt) n := by
  classical
  simp only [ArithmeticFunction.mul_apply]
  apply Finset.sum_congr rfl
  intro p hp
  have hpn := Nat.mem_divisorsAntidiagonal.mp hp
  have hp1 : 0 < p.1 := Nat.pos_of_ne_zero (left_ne_zero_of_mul (hpn.1 ▸ hpn.2))
  have hp2 : 0 < p.2 := Nat.pos_of_ne_zero (right_ne_zero_of_mul (hpn.1 ▸ hpn.2))
  have h1 : p.1 ≤ U :=
    (Nat.le_mul_of_pos_right p.1 hp2).trans (hpn.1 ▸ hn)
  have h2 : p.2 ≤ U :=
    (Nat.le_mul_of_pos_left p.2 hp1).trans (hpn.1 ▸ hn)
  simp only [shortPart_apply, if_pos h1, if_pos h2]

/-- At the actual cutoff this is the existing short-log payment minus the short-plain payment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCorrelatedShortSamplingPayment/Variantb9f09c728aa59d6046b25d85fa2672e0c075c638ac317f187018478b10307d84.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a112edc37bec73676e0c09821edbfd911abba83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# pow_sum_le_card_mul_sum_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb4f9cf-c3d7-f6c6-e38a-7af766028135",
  "kind": "lemma",
  "lexical_name": "pow_sum_le_card_mul_sum_pow",
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
  "slug": "pow-sum-le-card-mul-sum-pow--d93aa647d76fa48c6771791c",
  "source": {
    "blob": "a0d52c5ec81a328fb2298ecffa0ff5d095dd4019",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 124,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d93aa647d76fa48c6771791c837ef83123f13e2c8cde799c8196b09cb33fd930",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb4f9cf-c3d7-f6c6-e38a-7af766028135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_sum_le_card_mul_sum_pow (hf : ∀ i ∈ s, 0 ≤ f i) :
    ∀ n, (∑ i ∈ s, f i) ^ (n + 1) ≤ (#s : α) ^ n * ∑ i ∈ s, f i ^ (n + 1)
  | 0 => by simp
  | n + 1 =>
    calc
      _ = (∑ i ∈ s, f i) ^ (n + 1) * ∑ i ∈ s, f i := by rw [pow_succ]
      _ ≤ (#s ^ n * ∑ i ∈ s, f i ^ (n + 1)) * ∑ i ∈ s, f i := by
        gcongr
        exacts [sum_nonneg hf, pow_sum_le_card_mul_sum_pow hf _]
      _ = #s ^ n * ((∑ i ∈ s, f i ^ (n + 1)) * ∑ i ∈ s, f i) := by rw [mul_assoc]
      _ ≤ #s ^ n * (#s * ∑ i ∈ s, f i ^ (n + 1) * f i) := by
        gcongr _ * ?_
        exact ((monovaryOn_self ..).pow_left₀ hf _).sum_mul_sum_le_card_mul_sum
      _ = _ := by simp_rw [← mul_assoc, ← pow_succ]

/-- Special case of **Chebyshev's Sum Inequality** or the **Cauchy-Schwarz Inequality**: The square
of the sum is less than the size of the set times the sum of the squares. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0d52c5ec81a328fb2298ecffa0ff5d095dd4019` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# sum_Ioc_mul_eq_sum_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c501b3af-22aa-ca02-506c-57e93536d27c",
  "kind": "theorem",
  "lexical_name": "sum_Ioc_mul_eq_sum_sum",
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
  "slug": "sum-ioc-mul-eq-sum-sum--8b74c38f51c8d925b1e81c38",
  "source": {
    "blob": "c0d23d008b5d336f0cdd42ad3a60acefe06066b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 428,
    "line": 413,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b74c38f51c8d925b1e81c38e72d885f08baf98f7c20bfb8fc7b4b3596612e4d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c501b3af-22aa-ca02-506c-57e93536d27c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–428.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_Ioc_mul_eq_sum_sum (f g : ArithmeticFunction R) (N : ℕ) :
    ∑ n ∈ Ioc 0 N, (f * g) n = ∑ n ∈ Ioc 0 N, f n * ∑ m ∈ Ioc 0 (N / n), g m := by
  rw [sum_Ioc_mul_eq_sum_prod_filter, sum_filter, sum_product]
  refine sum_congr rfl fun n hn ↦ ?_
  simp only [sum_ite, not_le, sum_const_zero, add_zero, mul_sum]
  congr
  ext
  simp only [mem_filter, mem_Ioc, and_assoc, and_congr_right_iff] at hn ⊢
  intro _
  constructor
  · intro ⟨_, h⟩
    grw [← h, Nat.mul_div_cancel_left _ (by lia)]
  · intro hm
    grw [hm]
    simp [mul_div_le, div_le_self]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Misc/Variant1d2981fec5d4f2fe782b353491a2d5c77790d8f10c23c56bc22bf46f79ab5f8c.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0d23d008b5d336f0cdd42ad3a60acefe06066b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# coprimeReciprocalSquareSum_tail_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c980fea517e42e96e44edf38d792de651e7c9eb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d8/d81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20b3b5fb-66a9-62a9-a5e7-54c2ef2f5dae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c599fc9d-2983-4eb1-83ac-0d66e042a889",
  "kind": "theorem",
  "lexical_name": "coprimeReciprocalSquareSum_tail_abs_le",
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
  "slug": "coprimereciprocalsquaresum-tail-abs-le--34f07f8f34e35956aaa248c3",
  "source": {
    "blob": "4c980fea517e42e96e44edf38d792de651e7c9eb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 111,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34f07f8f34e35956aaa248c350347d8522ed5ac3cae38dfe0442d0a9d5e9d9bb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c599fc9d-2983-4eb1-83ac-0d66e042a889`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coprimeReciprocalSquareSum_tail_abs_le (h Y Z : ℕ) (hY : 1 ≤ Y)
    (hYZ : Y ≤ Z) :
    |∑ d ∈ Ioc Y Z, if Nat.Coprime d h then
      (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| ≤ 1 / (Y : ℝ) := by
  calc
    _ ≤ ∑ d ∈ Ioc Y Z, |if Nat.Coprime d h then
        (ArithmeticFunction.moebius d : ℝ) / (d : ℝ)^2 else 0| :=
      abs_sum_le_sum_abs _ _
    _ ≤ ∑ d ∈ Ioc Y Z, 1 / (d : ℝ)^2 := by
      apply sum_le_sum
      intro d _
      by_cases hdh : Nat.Coprime d h
      · rw [if_pos hdh, abs_div, abs_of_nonneg (sq_nonneg (d : ℝ))]
        apply div_le_div_of_nonneg_right _ (sq_nonneg _)
        exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := d))
      · rw [if_neg hdh, abs_zero]
        positivity
    _ ≤ _ := ReciprocalSquareTail.reciprocal_square_tail_le Y Z hY hYZ

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/FiniteDensityInsertion/Variantd81964cac6fedc515b3d5f01093cbad09f6ad3a7b3f697ecaf4b03cf40f8b780.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c980fea517e42e96e44edf38d792de651e7c9eb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

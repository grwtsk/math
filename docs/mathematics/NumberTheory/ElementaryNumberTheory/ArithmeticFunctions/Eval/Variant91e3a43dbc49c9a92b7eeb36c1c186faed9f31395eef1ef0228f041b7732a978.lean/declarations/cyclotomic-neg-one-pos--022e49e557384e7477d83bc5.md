# cyclotomic_neg_one_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "13505da3e5de3e183a738cb712039a59e61e0e84",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/91/91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1427fa41-9e5f-949f-536e-0fd8ca955b4e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c201a88e-d8ac-b587-8265-ff57439ebfd9",
  "kind": "theorem",
  "lexical_name": "cyclotomic_neg_one_pos",
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
  "slug": "cyclotomic-neg-one-pos--022e49e557384e7477d83bc5",
  "source": {
    "blob": "13505da3e5de3e183a738cb712039a59e61e0e84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 54,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:022e49e557384e7477d83bc5601b77dbebecfc5c41aa8d223ac5ce8473779913",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c201a88e-d8ac-b587-8265-ff57439ebfd9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem cyclotomic_neg_one_pos {n : ℕ} (hn : 2 < n) {R} [LinearOrderedCommRing R] :
    0 < eval (-1 : R) (cyclotomic n R) := by
  haveI := NeZero.of_gt hn
  rw [← map_cyclotomic_int, ← Int.cast_one, ← Int.cast_neg, eval_int_cast_map, Int.coe_castRingHom,
    Int.cast_pos]
  suffices 0 < eval (↑(-1 : ℤ)) (cyclotomic n ℝ) by
    rw [← map_cyclotomic_int n ℝ, eval_int_cast_map, Int.coe_castRingHom] at this
    simpa only [Int.cast_pos] using this
  simp only [Int.cast_one, Int.cast_neg]
  have h0 := cyclotomic_coeff_zero ℝ hn.le
  rw [coeff_zero_eq_eval_zero] at h0
  by_contra' hx
  have := intermediate_value_univ (-1) 0 (cyclotomic n ℝ).continuous
  obtain ⟨y, hy : IsRoot _ y⟩ := this (show (0 : ℝ) ∈ Set.Icc _ _ by simpa [h0] using hx)
  rw [@isRoot_cyclotomic_iff] at hy
  rw [hy.eq_orderOf] at hn
  exact hn.not_le LinearOrderedRing.orderOf_le_two

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Eval/Variant91e3a43dbc49c9a92b7eeb36c1c186faed9f31395eef1ef0228f041b7732a978.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13505da3e5de3e183a738cb712039a59e61e0e84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

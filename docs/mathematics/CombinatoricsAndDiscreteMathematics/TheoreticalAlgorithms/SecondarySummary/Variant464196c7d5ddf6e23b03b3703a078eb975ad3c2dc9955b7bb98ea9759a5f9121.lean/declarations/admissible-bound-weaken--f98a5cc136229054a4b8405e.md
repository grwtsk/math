# admissible_bound_weaken

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbed69f0-e0b1-143c-d53f-3b7f71f3c9da",
  "kind": "lemma",
  "lexical_name": "admissible_bound_weaken",
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
  "slug": "admissible-bound-weaken--f98a5cc136229054a4b8405e",
  "source": {
    "blob": "c32a0604b30673c0c50c6c344bf7ea2a0adc183e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f98a5cc136229054a4b8405e9ea71434bf95ddfaca5f07d56db4468ce8b4cae7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbed69f0-e0b1-143c-d53f-3b7f71f3c9da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma admissible_bound_weaken {A B C x : ℝ}
    (hB : 3 / 2 ≤ B) (hB2 : B ≤ 2)
    (_hC : 0 ≤ C) (hCR : C ^ 2 * 5.5666305 ≤ 4 * 5.573412)
    (hA : 122 ≤ A)
    (hlogx : 5.5666305 ≤ log x) :
    admissible_bound 121.0961 (3 / 2) 2 5.5666305 x ≤ admissible_bound A B C 5.573412 x := by
  refine mul_le_mul ?_ ?_ ?_ ?_ <;> try positivity
  · have h_exp : (log x / 5.5666305) ^ (3 / 2 : ℝ) ≤
        (log x / 5.573412) ^ B * ((5.573412 / 5.5666305) ^ B) := by
      rw [← Real.mul_rpow (div_nonneg (by linarith) (by norm_num)) (by norm_num)]
      ring_nf at *; norm_num at *
      exact Real.rpow_le_rpow_of_exponent_le (by linarith) (by linarith)
    have h_div : 121.0961 * ((5.573412 / 5.5666305) ^ B) ≤ A :=
      le_trans (mul_le_mul_of_nonneg_left
        (Real.rpow_le_rpow_of_exponent_le (by norm_num) hB2) (by norm_num))
        (by norm_num; linarith)
    nlinarith [Real.rpow_pos_of_pos
      (show 0 < log x / 5.573412 from div_pos (lt_of_lt_of_le (by norm_num) hlogx) (by norm_num)) B]
  · norm_num at *
    rw [← Real.sqrt_eq_rpow, ← Real.sqrt_eq_rpow] at *
    nlinarith [Real.sqrt_nonneg (log x / (11133261 / 2000000)),
      Real.mul_self_sqrt (by linarith : 0 ≤ log x / (11133261 / 2000000)),
      Real.sqrt_nonneg (log x / (1393353 / 250000)),
      Real.mul_self_sqrt (by linarith : 0 ≤ log x / (1393353 / 250000))]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SecondarySummary/Variant464196c7d5ddf6e23b03b3703a078eb975ad3c2dc9955b7bb98ea9759a5f9121.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c32a0604b30673c0c50c6c344bf7ea2a0adc183e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

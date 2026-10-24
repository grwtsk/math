# card_S_lt_card_T

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd2eb048de4951a265c1e7b96adbb9358fcfc5af",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7d8892da-0b9a-2788-e878-3ccb76262be1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3e1ebbeb-0368-490c-babe-b69193b13dce",
  "kind": "lemma",
  "lexical_name": "card_S_lt_card_T",
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
  "slug": "card-s-lt-card-t--ca95b0efb7917d57ad30b15d",
  "source": {
    "blob": "fd2eb048de4951a265c1e7b96adbb9358fcfc5af",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 117,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca95b0efb7917d57ad30b15da6fc6bc02cdd1df5f214d0bf08b5f0107543901a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e1ebbeb-0368-490c-babe-b69193b13dce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma card_S_lt_card_T [DecidableEq α] [DecidableEq β]
    (hn : Fintype.card α < Fintype.card β) (hm : 0 < Fintype.card α) :
    #S < #T := by
  zify -- This is necessary to use card_S_eq
  rw [card_T_eq A, card_S_eq]
  rify -- This is necessary because ‖A‖ is a real number
  calc
  ∏ x : α, (∑ x_1 : β, ↑B * ↑(A x x_1)⁺ - ∑ x_1 : β, ↑B * -↑(A x x_1)⁻ + 1)
    ≤ ∏ x : α, (n * max 1 ‖A‖ * B + 1) := by
      refine Finset.prod_le_prod₀ (fun i _ ↦ ?_) (fun i _ ↦ ?_)
      · have h := N_le_P_add_one A i
        rify at h
        linarith only [h]
      · simp only [mul_neg, sum_neg_distrib, sub_neg_eq_add, add_le_add_iff_right]
        have h1 : n * max 1 ‖A‖ * B = ∑ _ : β, max 1 ‖A‖ * B := by
          simp [mul_assoc]
        simp_rw [h1, ← Finset.sum_add_distrib, ← mul_add, mul_comm (max 1 ‖A‖), ← Int.cast_add]
        gcongr with j _
        rw [posPart_add_negPart (A i j), Int.cast_abs]
        exact le_trans (norm_entry_le_entrywise_sup_norm A) (le_max_right ..)
  _ = (n * max 1 ‖A‖ * B + 1) ^ m := by simp
  _ ≤ (n * max 1 ‖A‖) ^ m * (B + 1) ^ m := by
        rw [← mul_pow, mul_add, mul_one]
        gcongr
        exact one_le_mul_of_one_le_of_one_le (mod_cast hm.trans hn) <| le_max_left ..
  _ = ((n * max 1 ‖A‖) ^ (m / ((n : ℝ) - m))) ^ ((n : ℝ) - m) * (B + 1) ^ m := by
        congr 1
        rw [← rpow_mul (by positivity), ← Real.rpow_natCast, div_mul_cancel₀]
        exact sub_ne_zero_of_ne (mod_cast hn.ne')
  _ < (B + 1) ^ ((n : ℝ) - m) * (B + 1) ^ m := by
        gcongr
        · exact sub_pos.mpr (mod_cast hn)
        · exact Nat.lt_floor_add_one _
  _ = (B + 1) ^ n := by
        rw [← rpow_natCast, ← rpow_add (Nat.cast_add_one_pos B), ← rpow_natCast, sub_add_cancel]

end preparation

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SiegelsLemma/Variant311192d4a9a705c6995941674c6c715093b7ac71660b37a49e9d605c3d3c8218.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd2eb048de4951a265c1e7b96adbb9358fcfc5af` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

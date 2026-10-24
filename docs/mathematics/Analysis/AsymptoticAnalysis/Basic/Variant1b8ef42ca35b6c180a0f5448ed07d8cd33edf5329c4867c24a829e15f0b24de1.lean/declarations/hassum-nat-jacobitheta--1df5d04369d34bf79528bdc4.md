# hasSum_nat_jacobiTheta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ae9c1567289b5f149eaaf978ba667ecff9488569",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 116,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1b/1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f1d7cec5-9bda-670f-86bc-562bdde092c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:65601697-21c6-e0c5-50ba-1821fcf644b4",
  "kind": "theorem",
  "lexical_name": "hasSum_nat_jacobiTheta",
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
  "slug": "hassum-nat-jacobitheta--1df5d04369d34bf79528bdc4",
  "source": {
    "blob": "ae9c1567289b5f149eaaf978ba667ecff9488569",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 116,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1df5d04369d34bf79528bdc4bffd2aebff9cdb8286e7741d01620e75f7789664",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:65601697-21c6-e0c5-50ba-1821fcf644b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_nat_jacobiTheta {z : ℂ} (hz : 0 < im z) :
    HasSum (fun n : ℕ => cexp (π * I * ((n : ℂ) + 1) ^ 2 * z)) ((jacobiTheta z - 1) / 2) := by
  have := (summable_exp_mul_sq hz).hasSum.sum_nat_of_sum_int
  rw [← @hasSum_nat_add_iff' ℂ _ _ _ _ 1] at this
  simp_rw [Finset.sum_range_one, Int.cast_neg, Int.cast_ofNat, Nat.cast_zero, neg_zero,
    Int.cast_zero, sq (0 : ℂ), mul_zero, zero_mul, neg_sq, ← mul_two,
    Complex.exp_zero, add_sub_assoc, (by norm_num : (1 : ℂ) - 1 * 2 = -1), ← sub_eq_add_neg,
    Nat.cast_add, Nat.cast_one] at this
  convert this.div_const 2 using 1
  simp_rw [mul_div_cancel (G₀ := ℂ) _ two_ne_zero]
#align has_sum_nat_jacobi_theta hasSum_nat_jacobiTheta

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant1b8ef42ca35b6c180a0f5448ed07d8cd33edf5329c4867c24a829e15f0b24de1.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae9c1567289b5f149eaaf978ba667ecff9488569` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# upper_observation_zero_of_log_two_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4bbb8b4406c8675e93758062ef025d02c0c47bc3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a12c7aae-ead7-e526-a6dc-0b72de6910d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f78b2c1-bf81-85cf-a61a-fbac1b0ca380",
  "kind": "theorem",
  "lexical_name": "upper_observation_zero_of_log_two_le",
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
  "slug": "upper-observation-zero-of-log-two-le--baa921c2b24b16ba8ec94e02",
  "source": {
    "blob": "4bbb8b4406c8675e93758062ef025d02c0c47bc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 68,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baa921c2b24b16ba8ec94e0265c04d148e3872303a419e73e7c332c7c1a20c44",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f78b2c1-bf81-85cf-a61a-fbac1b0ca380`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem upper_observation_zero_of_log_two_le (A x : ℝ) (hA : 1 ≤ A)
    (hx : Real.log 2 ≤ x) :
    finiteObservation A (Ioc (⌊Real.exp A⌋₊ / 2) ⌊Real.exp A⌋₊) x = 0 := by
  apply sum_eq_zero
  intro i hi
  have hi1 : 1 ≤ i := by have := (mem_Ioc.mp hi).1; omega
  have hi0 : (0 : ℝ) < i := by exact_mod_cast hi1
  have hf : Real.exp A < (⌊Real.exp A⌋₊ : ℝ) + 1 := Nat.lt_floor_add_one _
  have h2i : (⌊Real.exp A⌋₊ : ℝ) + 1 ≤ 2 * (i : ℝ) := by
    exact_mod_cast (show ⌊Real.exp A⌋₊ + 1 ≤ 2 * i by
      have := (mem_Ioc.mp hi).1; omega)
  have hl : A < Real.log (2 * (i : ℝ)) :=
    (Real.lt_log_iff_exp_lt (mul_pos (by norm_num) hi0)).mpr (hf.trans_le h2i)
  rw [Real.log_mul (by norm_num : (2 : ℝ) ≠ 0) (ne_of_gt hi0)] at hl
  have hz := normalizedTest_zero_of_le_abs A (x + Real.log i) (by linarith)
    (le_trans (by linarith : A ≤ x + Real.log (i : ℝ)) (le_abs_self _))
  exact mul_eq_zero_of_right _ hz

/-- Higher zeta shifts of the actual upper observation vanish on the positive half-line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/UpperObservation/Variant6d40d08fb972b8b1933b1f5dfc8d415ded2ca71ce8c401933c419a11985d4008.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bbb8b4406c8675e93758062ef025d02c0c47bc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

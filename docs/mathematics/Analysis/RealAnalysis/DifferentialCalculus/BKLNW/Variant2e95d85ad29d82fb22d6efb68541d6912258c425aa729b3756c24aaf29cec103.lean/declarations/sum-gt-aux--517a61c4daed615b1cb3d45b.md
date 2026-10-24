# sum_gt.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31d573af61253eda377326baebeb36929353a168",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 355,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1d38c4fb-4911-091d-1d1c-f06bbf6d7b78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cbda8938-7a15-a0b3-cb40-e8757443c615",
  "kind": "lemma",
  "lexical_name": "sum_gt.aux",
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
  "slug": "sum-gt-aux--517a61c4daed615b1cb3d45b",
  "source": {
    "blob": "31d573af61253eda377326baebeb36929353a168",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 380,
    "line": 355,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:517a61c4daed615b1cb3d45b37058b3be12387b10350a5b0757959c43992f51f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cbda8938-7a15-a0b3-cb40-e8757443c615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 355–380.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_gt.aux (k : ℕ) (a b : ℝ) (hk : 3 < k := by decide) (hb1 : 0 ≤ b - 1 := by norm_num only)
    (ha : a ^ k ≤ 1024 := by norm_num only) (hb : b ^ (3 * k) ≤ 2 ^ (k - 3) := by norm_num only) :
    a * (b - 1) ≤ summand k 9 := by
  have ha_bound : a ≤ 2 ^ (10 / k : ℝ) := calc
    a ≤ (1024 : ℝ) ^ (1 / k : ℝ) := by
      contrapose! ha
      calc
        _ ≤ ((1024 : ℝ) ^ (1 / k : ℝ)) ^ k := by
          rw [← rpow_mul_natCast (by positivity), one_div_mul_cancel (by positivity), rpow_one]
        _ < _ := pow_lt_pow_left₀ ha (by positivity) (by positivity)
    _ = _ := by norm_num [div_eq_mul_inv, rpow_mul]
  have hb_bound : b - 1 ≤ 2 ^ (1 / 3 - 1 / k : ℝ) - 1 := calc
    _ ≤ ((2 : ℝ) ^ (k - 3 : ℝ)) ^ (1 / (3 * k : ℝ)) - 1 := by
      gcongr
      contrapose! hb
      calc
        _ ≤ (((2 : ℝ) ^ (k - 3 : ℝ)) ^ (1 / (3 * k : ℝ))) ^ (3 * k) := by
          rw [← rpow_mul_natCast (by positivity), ← Real.rpow_natCast, Nat.cast_sub hk.le]
          simp
          field_simp
          simp
        _ < _ := pow_lt_pow_left₀ hb (by positivity) (by positivity)
    _ = _ := by rw [← Real.rpow_mul (by positivity), mul_one_div]; field_simp
  grw [ha_bound, hb_bound]
  norm_num [summand]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant2e95d85ad29d82fb22d6efb68541d6912258c425aa729b3756c24aaf29cec103.lean#L355).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31d573af61253eda377326baebeb36929353a168` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

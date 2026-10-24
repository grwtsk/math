# gaussian_zero_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4016104ee90843c5c9cfcebc5e615134c6a50a13",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 16,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d8386fe4-685f-d347-c0e4-b2f5339caec7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1530c3b-4f95-b8be-dd33-e5124e74fa47",
  "kind": "theorem",
  "lexical_name": "gaussian_zero_lt",
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
  "slug": "gaussian-zero-lt--6ff2d63387cb3c99aa188bb3",
  "source": {
    "blob": "4016104ee90843c5c9cfcebc5e615134c6a50a13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 16,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ff2d63387cb3c99aa188bb35f826ea6cbdeb6879d94b090d2985ae32cf57b0f",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1530c3b-4f95-b8be-dd33-e5124e74fa47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem gaussian_zero_lt : gaussianMode 3 0 < 1 / 16 := by
  have h := pow_lt_pow_left₀ exp_three_gt_sixteen (by norm_num : (0 : ℝ) ≤ 16)
    (by decide : (3 : ℕ) ≠ 0)
  have he : Real.exp (9 : ℝ) = Real.exp 3 ^ 3 := by
    convert! Real.exp_nat_mul (3 : ℝ) 3 using 1
    norm_num
  norm_num [gaussianMode, Real.exp_neg] at h ⊢
  rw [he]
  apply (div_lt_iff₀ (by positivity)).mpr
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/A5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74Gaussian/Varianta5744079db21cd9b0db0077563e57b21f035245dd66dad44273f87111ada5a74.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4016104ee90843c5c9cfcebc5e615134c6a50a13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

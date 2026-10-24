# abs_sin_sub_self_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 52,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1c/1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4b1c13c-8f1f-19b3-a247-b5bcfa8a02fc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3d099f8c-f8ff-7ddd-e7da-155faaeaf1b6",
  "kind": "theorem",
  "lexical_name": "abs_sin_sub_self_le",
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
  "slug": "abs-sin-sub-self-le--d752b172fafac07b38ec246e",
  "source": {
    "blob": "c155e15f1b59fe5465099559191856416a60cfd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 52,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d752b172fafac07b38ec246e5b006671572d3b34f2cef4ee7cb10272e6cdaaa2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3d099f8c-f8ff-7ddd-e7da-155faaeaf1b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_sin_sub_self_le (x : ℝ) (hx : |x| ≤ 1) : |sin x - x| ≤ |x| ^ 3 / 4 := by
  rcases le_or_gt x 0 with hx_neg | hx_pos
  · -- Case x ≤ 0
    have hx' : 0 ≤ -x := neg_nonneg.mpr hx_neg
    have hx'' : -x ≤ 1 := by rwa [abs_of_nonpos hx_neg] at hx
    rcases eq_or_lt_of_le hx' with hx_zero | hx_pos'
    · -- x = 0
      have : x = 0 := neg_eq_zero.mp hx_zero.symm
      simp [this]
    · -- x < 0, i.e., 0 < -x ≤ 1
      have h1 : sin (-x) < -x := sin_lt hx_pos'
      have h2 : -x - (-x) ^ 3 / 4 < sin (-x) := sin_gt_sub_cube hx_pos' hx''
      -- sin x = -sin(-x), so sin x - x = -sin(-x) - x
      -- From h1: sin(-x) < -x, so sin(-x) + x < 0
      -- Therefore -sin(-x) - x = -(sin(-x) + x) > 0
      rw [abs_of_nonpos hx_neg]
      have hsinx : sin x = -sin (-x) := by simp [sin_neg]
      rw [hsinx]
      have hsum_pos : 0 < -sin (-x) - x := by linarith
      rw [abs_of_pos hsum_pos]
      -- Goal: -sin(-x) - x ≤ (-x) ^ 3 / 4
      -- From h2: sin(-x) > -x - (-x)^3/4, so -sin(-x) < x + (-x)^3/4
      -- Therefore -sin(-x) - x < (-x)^3/4
      linarith
  · -- Case x > 0
    have hx' : x ≤ 1 := by rwa [abs_of_pos hx_pos] at hx
    have h1 : sin x < x := sin_lt hx_pos
    have h2 : x - x ^ 3 / 4 < sin x := sin_gt_sub_cube hx_pos hx'
    rw [abs_of_pos hx_pos]
    have hsub_pos : 0 < x - sin x := by linarith
    rw [abs_of_neg (by linarith : sin x - x < 0)]
    linarith

/-- The derivative of sinc at 0 is 0.

The proof uses the squeeze theorem with the bound `|sinc x - 1| ≤ |x|² / 4`,
which follows from sin bounds in Mathlib. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Sinc/Variant1c67f1b16758d97d0106e58f2d1b7b2270009d30393788a4e13240490d165f12.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c155e15f1b59fe5465099559191856416a60cfd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

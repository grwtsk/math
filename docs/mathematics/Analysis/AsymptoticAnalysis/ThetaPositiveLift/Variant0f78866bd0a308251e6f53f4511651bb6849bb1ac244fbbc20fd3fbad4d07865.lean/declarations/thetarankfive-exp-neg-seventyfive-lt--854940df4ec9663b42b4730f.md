# thetaRankFive_exp_neg_seventyFive_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:111f41e6-25d7-de8f-6870-ebfd512766b6",
  "kind": "theorem",
  "lexical_name": "thetaRankFive_exp_neg_seventyFive_lt",
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
  "slug": "thetarankfive-exp-neg-seventyfive-lt--854940df4ec9663b42b4730f",
  "source": {
    "blob": "89b02f0366a2bf2f0fe7fd6537c1cc94e4423cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 41,
    "line": 29,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:854940df4ec9663b42b4730f4b10e9a5680a9b3451493ada33fa8adf534c059a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111f41e6-25d7-de8f-6870-ebfd512766b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–41.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaRankFive_exp_neg_seventyFive_lt :
    Real.exp (-75 : ℝ) < 3 / 10 ^ 33 := by
  have h := pow_lt_pow_left₀ thetaExpThree_gt_twenty
    (by norm_num : (0 : ℝ) ≤ 20) (by decide : (25 : ℕ) ≠ 0)
  have he : Real.exp (75 : ℝ) = Real.exp 3 ^ 25 := by
    convert! Real.exp_nat_mul (3 : ℝ) 25 using 1
    norm_num
  rw [Real.exp_neg, he]
  rw [← one_div]
  apply (div_lt_iff₀ (by positivity)).mpr
  norm_num at h ⊢
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant0f78866bd0a308251e6f53f4511651bb6849bb1ac244fbbc20fd3fbad4d07865.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89b02f0366a2bf2f0fe7fd6537c1cc94e4423cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

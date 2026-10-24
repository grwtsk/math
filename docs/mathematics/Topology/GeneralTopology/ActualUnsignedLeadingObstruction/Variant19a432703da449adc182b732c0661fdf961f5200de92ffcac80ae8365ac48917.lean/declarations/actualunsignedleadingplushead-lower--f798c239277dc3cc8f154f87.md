# actualUnsignedLeadingPlusHead_lower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bd920895-81ed-16f6-93a1-2022d4fb4137",
  "kind": "theorem",
  "lexical_name": "actualUnsignedLeadingPlusHead_lower",
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
  "slug": "actualunsignedleadingplushead-lower--f798c239277dc3cc8f154f87",
  "source": {
    "blob": "09259c6b072cf8f5b1fed6a9a991f542346f6190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 41,
    "path": "GRWTSK/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f798c239277dc3cc8f154f87e8add06037705ab5206956668ccc556b6dfb367b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bd920895-81ed-16f6-93a1-2022d4fb4137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualUnsignedLeadingPlusHead_lower {A : ℝ} (hA : 25600 ≤ A) :
    (2 / 9 : ℝ) * A - 35 / 6 ≤ actualUnsignedLeadingPlusHead A := by
  have hm := actualMoebiusSqrtMass_lower_at_source_cutoff hA
  have hs := actualCutoff_sqrt_lower hA
  have he := complementaryEarlyBaseline_lower_neg_scale_sub_four hA
  have hmass : 0 ≤ ∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
      |realMoebius d| / Real.sqrt (d : ℝ) := by
    apply Finset.sum_nonneg
    intro d _
    exact div_nonneg (abs_nonneg _) (Real.sqrt_nonneg _)
  have hk := mul_le_mul_of_nonneg_right actualFullPositiveKappa_one_bounds.1 hmass
  have hb := mul_le_mul_of_nonneg_left hm (show (0 : ℝ) ≤ 2 by norm_num)
  unfold actualUnsignedLeadingPlusHead
  linarith

/-- The genuine unsigned leading-plus-head budget diverges along real source scales. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualUnsignedLeadingObstruction/Variant19a432703da449adc182b732c0661fdf961f5200de92ffcac80ae8365ac48917.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09259c6b072cf8f5b1fed6a9a991f542346f6190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

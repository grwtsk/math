# CurveIntegrable.intervalIntegrable_curveIntegralFun_trans_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97b438b1-7877-7cf9-dbd5-03f06edffa8e",
  "kind": "theorem",
  "lexical_name": "CurveIntegrable.intervalIntegrable_curveIntegralFun_trans_right",
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
  "slug": "curveintegrable-intervalintegrable-curveintegralfun-trans-right--369bf8ccdff8d8d133cf0af2",
  "source": {
    "blob": "4aed310ab03c116d9bcf1e5d107ea9c524cca901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 276,
    "line": 271,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:369bf8ccdff8d8d133cf0af2eae36ae59824bcd34faf9aa7384f1091d0b10de7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97b438b1-7877-7cf9-dbd5-03f06edffa8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–276.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CurveIntegrable.intervalIntegrable_curveIntegralFun_trans_right
    (γab : Path a b) (h : CurveIntegrable ω γbc) :
    IntervalIntegrable (curveIntegralFun ω (γab.trans γbc)) volume (1 / 2) 1 := by
  refine .congr_ae ?_ (curveIntegralFun_trans_aeeq_right _ _ _).symm
  simpa [ofNat_smul_eq_nsmul] using! h.comp_sub_right 1 |>.comp_mul_left (c := 2) |>.smul (2 : 𝕜)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant8fcca14a93bbd8fda781d8f92ea4a6ace1721c8e460d7b7cfc32afff4a31c5d5.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4aed310ab03c116d9bcf1e5d107ea9c524cca901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

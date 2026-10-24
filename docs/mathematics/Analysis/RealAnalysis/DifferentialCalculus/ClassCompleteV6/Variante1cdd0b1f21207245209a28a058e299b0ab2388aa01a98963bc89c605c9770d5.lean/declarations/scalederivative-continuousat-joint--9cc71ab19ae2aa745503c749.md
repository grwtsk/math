# scaleDerivative_continuousAt_joint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:beae29ef-f3a7-9b2c-58f7-6485e166498b",
  "kind": "theorem",
  "lexical_name": "scaleDerivative_continuousAt_joint",
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
  "slug": "scalederivative-continuousat-joint--9cc71ab19ae2aa745503c749",
  "source": {
    "blob": "623c56bc23a158f9025fbbd0520f8dffc5b33d84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cc71ab19ae2aa745503c7499be08fa14bb1869aad18fadcf7e26735273ec26a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:beae29ef-f3a7-9b2c-58f7-6485e166498b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaleDerivative_continuousAt_joint {z : ℝ × ℝ} (hz : 0 < z.1) :
    ContinuousAt (fun y : ℝ × ℝ => scaleDerivative y.1 y.2) z := by
  have h0 := sourceBump_contDiff_three.continuous
  have hd1 : ContDiff ℝ 2 (deriv sourceBump) := sourceBump_contDiff_three.deriv'
  have hd2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) := hd1.deriv'
  have h1 := hd1.continuous
  have h2 := hd2.continuous
  have h3 := hd2.continuous_deriv_one
  have hn := sourceNormalization_pos hz
  unfold scaleDerivative scaleAmplitude normalizationDerivative scaleProfile sourceNormalization
  fun_prop (disch := first | positivity | exact hz.ne' | exact hn.ne')

/-- The joint derivative field is continuous, including all moving support seams. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ClassCompleteV6/Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623c56bc23a158f9025fbbd0520f8dffc5b33d84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# stageThreeSixteenGap_integral_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ce5044e-0b2a-e374-39f1-363fb151a657",
  "kind": "theorem",
  "lexical_name": "stageThreeSixteenGap_integral_pos",
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
  "slug": "stagethreesixteengap-integral-pos--fbe6abd44a5a967fbfd879e9",
  "source": {
    "blob": "2307c891dbac3423ff70f1f1b53920948d254153",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 27,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegralPositive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fbe6abd44a5a967fbfd879e91a734af1605022b980052c6c70ae6cf2ff5ff2ab",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegralPositive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ce5044e-0b2a-e374-39f1-363fb151a657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 27–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stageThreeSixteenGap_integral_pos :
    0 < ∫ x in Set.Ioi (0 : ℝ), stageThreeSixteenGap x := by
  refine (setIntegral_pos_iff_support_of_nonneg_ae ?_
    stageThreeSixteenGap_integrableOn).2 ?_
  · filter_upwards [self_mem_ae_restrict measurableSet_Ioi] with x hx
    exact stageThreeSixteenGap_nonnegative hx
  · have hs :
        Set.Ioo (9 : ℝ) 16 ⊆
          Function.support stageThreeSixteenGap ∩ Set.Ioi (0 : ℝ) := by
      intro x hx
      constructor
      · rw [Function.mem_support]
        exact ne_of_gt (stageThreeSixteenGap_pos hx)
      · exact lt_trans (by norm_num) hx.1
    have hv : 0 < volume (Set.Ioo (9 : ℝ) 16) := by
      rw [Real.volume_Ioo]
      exact ENNReal.ofReal_pos.mpr (by norm_num)
    exact hv.trans_le (measure_mono hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegralPositive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentSixteenGapIntegralPositive.lean#L27).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2307c891dbac3423ff70f1f1b53920948d254153` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

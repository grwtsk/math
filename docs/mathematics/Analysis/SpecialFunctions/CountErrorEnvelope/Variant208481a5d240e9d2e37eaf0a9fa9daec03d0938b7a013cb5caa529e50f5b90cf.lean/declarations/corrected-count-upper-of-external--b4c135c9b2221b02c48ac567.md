# corrected_count_upper_of_external

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bebe7e04-7f21-4dbb-1536-dea2fb9fab59",
  "kind": "theorem",
  "lexical_name": "corrected_count_upper_of_external",
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
  "slug": "corrected-count-upper-of-external--b4c135c9b2221b02c48ac567",
  "source": {
    "blob": "4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 51,
    "path": "GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4c135c9b2221b02c48ac567db2c17a4cca7d018b125e8f6386c9363cda2b348",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bebe7e04-7f21-4dbb-1536-dea2fb9fab59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corrected_count_upper_of_external (hBW : CorrectedBellottiWongCount)
    (T t : ℝ) (hT : Real.exp 1 ≤ T) (ht : T ≤ t) :
    actualPositiveZeroCount t ≤ zeroCountMain t + correctedBellottiWongError T +
      ((11200/100000 : ℝ) + (12567/100000 : ℝ)/Real.log T)*Real.log (t/T) := by
  have h1 : 1 < T := (Real.one_lt_exp_iff.mpr (by norm_num : (0 : ℝ) < 1)).trans_le hT
  have hc := (le_abs_self (actualPositiveZeroCount t-zeroCountMain t)).trans (hBW t (hT.trans ht))
  have he := corrected_count_error_tangent_upper T t h1 ht
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/CountErrorEnvelope/Variant208481a5d240e9d2e37eaf0a9fa9daec03d0938b7a013cb5caa529e50f5b90cf.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d2b395b7a75e3e6c9988b3360f08ab6b00cff1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actualTwistedTimeDensity_integral_eq_mean_traces

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ebac94-0572-8c3a-6c49-fbe334d38774",
  "kind": "theorem",
  "lexical_name": "actualTwistedTimeDensity_integral_eq_mean_traces",
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
  "slug": "actualtwistedtimedensity-integral-eq-mean-traces--03f51494c4399d9df21ca70e",
  "source": {
    "blob": "f842b32bf74386c78e82b1cb7aba9f2a15b49da0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 73,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant07512bbecbfdab12f03e79efb77a992402571cfddf4ab0596c48e80e6c6f3cee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f51494c4399d9df21ca70ed665c60ba09ccf628a949f790e966bd0be53b4db",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant07512bbecbfdab12f03e79efb77a992402571cfddf4ab0596c48e80e6c6f3cee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ebac94-0572-8c3a-6c49-fbe334d38774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTwistedTimeDensity_integral_eq_mean_traces {A : ℝ} (hA : 0 < A)
    (t l b : ℝ) :
    (∫ s in l..b, actualTwistedTimeDensity A t s) =
      actualRetainedMeanSourcePrimitive A t b - actualRetainedMeanSourcePrimitive A t l := by
  have hc := actual_correlation_contDiff_four A hA
  have h1 := hc.continuous_iteratedDeriv 1 (by norm_num)
  have h3 := hc.continuous_iteratedDeriv 3 (by norm_num)
  have ht : Continuous (actualTwistedTimeDensity A t) := by
    unfold actualTwistedTimeDensity
    fun_prop
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ => actualRetainedMeanSourcePrimitive_hasDerivAt hA t s) (ht.intervalIntegrable l b)

/-- This primitive vanishes only at the true closed upper support, including its source jets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant07512bbecbfdab12f03e79efb77a992402571cfddf4ab0596c48e80e6c6f3cee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RootActualRetainedMeanTrace/Variant07512bbecbfdab12f03e79efb77a992402571cfddf4ab0596c48e80e6c6f3cee.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f842b32bf74386c78e82b1cb7aba9f2a15b49da0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

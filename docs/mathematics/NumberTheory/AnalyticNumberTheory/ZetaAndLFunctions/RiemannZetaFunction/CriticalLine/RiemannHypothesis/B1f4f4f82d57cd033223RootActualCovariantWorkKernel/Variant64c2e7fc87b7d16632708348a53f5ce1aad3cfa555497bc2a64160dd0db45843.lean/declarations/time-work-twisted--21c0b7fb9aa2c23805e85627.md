# time_work_twisted

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:78f56bda-c11e-49a1-b13c-a84f9bcb1b3c",
  "kind": "theorem",
  "lexical_name": "time_work_twisted",
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
  "slug": "time-work-twisted--21c0b7fb9aa2c23805e85627",
  "source": {
    "blob": "fed3f4c8d20c7bb2cb410c6ef06e0f7c728f14f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21c0b7fb9aa2c23805e856273ea31b8f536982a1ababd95290e074fe3a68fba7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:78f56bda-c11e-49a1-b13c-a84f9bcb1b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem time_work_twisted (A : ℝ) (hA : 0 < A) (t s : ℝ) :
    deriv (fun x => actualLogMixedDensity A x s) t - actualLogMixedDensity A t s / 2 =
      twistedTimeWork A t s := by
  have h0 := (jet_hasDerivAt A hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h2 := (jet_hasDerivAt A hA 2 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hh := he.mul (h2.sub (h0.div_const 4))
  have hd : HasDerivAt (fun x => actualLogMixedDensity A x s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) / 2 -
            iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) / 4 -
              sourceCorrelation explicitSecondDerivative A (t + s) / 8)) t := by
    convert hh using 1 <;> try rfl
    simp only [Function.comp_apply, iteratedDeriv_zero,
      id_eq, Pi.sub_apply]
    ring
  rw [hd.deriv]
  simp only [actualLogMixedDensity, twistedTimeWork]
  ring

/-- The adjoint operator on the actual original mixed work leaves its second-jet sector. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/B1f4f4f82d57cd033223RootActualCovariantWorkKernel/Variant64c2e7fc87b7d16632708348a53f5ce1aad3cfa555497bc2a64160dd0db45843.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fed3f4c8d20c7bb2cb410c6ef06e0f7c728f14f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

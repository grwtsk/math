# actualPeriodMeanTimeTest_covariant_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0209c6fc-9596-6f75-c58b-146a56e91416",
  "kind": "theorem",
  "lexical_name": "actualPeriodMeanTimeTest_covariant_deriv",
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
  "slug": "actualperiodmeantimetest-covariant-deriv--9f2cc06b325c25088e2ee051",
  "source": {
    "blob": "cd46be83760a7d9de4b6576a9a853ee7796246da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantde2a0dcd302c492c5ff970f46bd0f0b0ebaef3f74019d89749f5d3907c68eff2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f2cc06b325c25088e2ee051b296b586c9c3e79f821614abf9d5a282230f1ce5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantde2a0dcd302c492c5ff970f46bd0f0b0ebaef3f74019d89749f5d3907c68eff2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0209c6fc-9596-6f75-c58b-146a56e91416`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPeriodMeanTimeTest_covariant_deriv {A : ℝ} (hA : 0 < A) (s t : ℝ) :
    deriv (actualPeriodMeanTimeTest A s) t - actualPeriodMeanTimeTest A s t / 2 =
      actualRetainedMeanSourcePrimitive A t s := by
  have h0 := (jet_hasDerivAt hA 0 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have h1 := (jet_hasDerivAt hA 1 (by norm_num) (t + s)).comp t
    ((hasDerivAt_id t).add_const s)
  have he := (((hasDerivAt_id t).div_const 2).exp).mul_const (Real.exp (-s / 2))
  have hd := he.mul (h1.add (h0.div_const 2))
  have hde : HasDerivAt (actualPeriodMeanTimeTest A s)
      (Real.exp (t / 2) * Real.exp (-s / 2) *
        (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A) (t + s) +
          iteratedDeriv 1 (sourceCorrelation explicitSecondDerivative A) (t + s) +
            sourceCorrelation explicitSecondDerivative A (t + s) / 4)) t := by
    convert hd using 1 <;> try rfl
    simp only [actualPeriodMeanTimeTest, Function.comp_apply, iteratedDeriv_zero, id_eq,
      Pi.add_apply, mul_one]
    ring
  rw [hde.deriv]
  unfold actualPeriodMeanTimeTest actualRetainedMeanSourcePrimitive
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantde2a0dcd302c492c5ff970f46bd0f0b0ebaef3f74019d89749f5d3907c68eff2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt01/Variantde2a0dcd302c492c5ff970f46bd0f0b0ebaef3f74019d89749f5d3907c68eff2.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd46be83760a7d9de4b6576a9a853ee7796246da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

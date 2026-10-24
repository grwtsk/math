# passive_source_readout_eq_twice_residual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fa2296e-91bc-7624-56cf-5d6ecaa0c9ec",
  "kind": "theorem",
  "lexical_name": "passive_source_readout_eq_twice_residual",
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
  "slug": "passive-source-readout-eq-twice-residual--a472c5761d098f0b268c9d96",
  "source": {
    "blob": "d55823b436f0ffcea26241a39eefef8633083a07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 160,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceOperatorObservableVerified/Variant76fcfd94d07dd9649310976c7476521e31ded190f1afd90002ebba92109c1be9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a472c5761d098f0b268c9d9697e0555aeb9142b34e661c74872b981c74b7075b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceOperatorObservableVerified/Variant76fcfd94d07dd9649310976c7476521e31ded190f1afd90002ebba92109c1be9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fa2296e-91bc-7624-56cf-5d6ecaa0c9ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem passive_source_readout_eq_twice_residual (A : ℝ) (hA : 1 ≤ A)
    (P : (Matrix (SourceIndex A) (SourceIndex A) ℝ)ˣ) :
    quadratic (pullback (sourceSignedOperator A) (P : Matrix (SourceIndex A) (SourceIndex A) ℝ))
      ((↑(P⁻¹) : Matrix (SourceIndex A) (SourceIndex A) ℝ).mulVec (sourceJointVector A)) =
        2 * mertensResidual A := by
  rw [passive_source_readout, sourceOperatorValue_eq_twice_residual A hA]

end FormalResearch.RiemannHypothesis.SourceOperatorObservable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceOperatorObservableVerified/Variant76fcfd94d07dd9649310976c7476521e31ded190f1afd90002ebba92109c1be9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceOperatorObservableVerified/Variant76fcfd94d07dd9649310976c7476521e31ded190f1afd90002ebba92109c1be9.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55823b436f0ffcea26241a39eefef8633083a07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

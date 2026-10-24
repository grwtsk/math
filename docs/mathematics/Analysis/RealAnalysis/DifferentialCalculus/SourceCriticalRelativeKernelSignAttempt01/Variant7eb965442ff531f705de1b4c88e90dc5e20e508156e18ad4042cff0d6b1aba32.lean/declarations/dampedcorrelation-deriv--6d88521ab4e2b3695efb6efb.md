# dampedCorrelation_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a265abd2-8fd7-80cb-7175-b6cfc82520ca",
  "kind": "theorem",
  "lexical_name": "dampedCorrelation_deriv",
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
  "slug": "dampedcorrelation-deriv--6d88521ab4e2b3695efb6efb",
  "source": {
    "blob": "064fb4a76126914d0d1bf369486f3eea5af5b0fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 29,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt01/Variant7eb965442ff531f705de1b4c88e90dc5e20e508156e18ad4042cff0d6b1aba32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d88521ab4e2b3695efb6efbbd6241b4762480b0085574512aa8593b630d242f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt01/Variant7eb965442ff531f705de1b4c88e90dc5e20e508156e18ad4042cff0d6b1aba32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a265abd2-8fd7-80cb-7175-b6cfc82520ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dampedCorrelation_deriv {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (dampedCorrelation A) t = -Real.exp (-t / 2) * criticalWeight A t := by
  have he : HasDerivAt (fun u : ℝ => Real.exp (-u / 2))
      (-Real.exp (-t / 2) / 2) t := by
    convert (Real.hasDerivAt_exp (-t / 2)).comp t
      ((hasDerivAt_id t).neg.div_const 2) using 1 <;> ring
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 t).hasDerivAt
  have hh := (he.mul hc).deriv
  change deriv (fun u => Real.exp (-u / 2) *
    sourceCorrelation explicitSecondDerivative A u) t = _
  rw [hh]
  unfold criticalWeight
  ring

/-- Both signs occur in the strict physical half-support at every actual real scale. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt01/Variant7eb965442ff531f705de1b4c88e90dc5e20e508156e18ad4042cff0d6b1aba32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalRelativeKernelSignAttempt01/Variant7eb965442ff531f705de1b4c88e90dc5e20e508156e18ad4042cff0d6b1aba32.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `064fb4a76126914d0d1bf369486f3eea5af5b0fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

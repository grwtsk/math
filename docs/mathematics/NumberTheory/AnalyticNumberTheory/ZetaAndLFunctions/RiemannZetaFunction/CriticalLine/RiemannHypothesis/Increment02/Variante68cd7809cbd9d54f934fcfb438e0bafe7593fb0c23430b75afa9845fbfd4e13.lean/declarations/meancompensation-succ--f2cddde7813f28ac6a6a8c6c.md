# meanCompensation_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f4e685a-59b0-ab61-0538-94f14085ab99",
  "kind": "theorem",
  "lexical_name": "meanCompensation_succ",
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
  "slug": "meancompensation-succ--f2cddde7813f28ac6a6a8c6c",
  "source": {
    "blob": "ce5eec6232a65dc14bb18f372c614a0f4dd0ad70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 342,
    "line": 333,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2cddde7813f28ac6a6a8c6cc8fa8e0dd9b5c9d666a9e961189eb23a2d6d126e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f4e685a-59b0-ab61-0538-94f14085ab99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–342.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meanCompensation_succ (A : ℝ) (U N : ℕ) (hUN : U < N) :
    alpha (U + 1) * plainOffAt A (U + 1) N - alpha U * plainOffAt A U N =
      (moebius (U + 1) : ℝ) / (U + 1 : ℕ) * plainOffAt A (U + 1) N -
        alpha U * boundaryAt A U N (fun _ ↦ 1) := by
  rw [alpha_succ]
  have h := plainOffAt_succ A U N hUN
  linear_combination alpha U * h

end
end FormalResearch.RiemannHypothesis.SourceCutoffFlux
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Increment02/Variante68cd7809cbd9d54f934fcfb438e0bafe7593fb0c23430b75afa9845fbfd4e13.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce5eec6232a65dc14bb18f372c614a0f4dd0ad70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

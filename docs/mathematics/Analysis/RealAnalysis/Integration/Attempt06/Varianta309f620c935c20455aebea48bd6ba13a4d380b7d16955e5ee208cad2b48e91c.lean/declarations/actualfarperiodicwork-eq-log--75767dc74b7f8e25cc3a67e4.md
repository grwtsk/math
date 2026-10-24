# actualFarPeriodicWork_eq_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c3aa90ae-e58b-fc97-f58f-b381eff5b19f",
  "kind": "theorem",
  "lexical_name": "actualFarPeriodicWork_eq_log",
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
  "slug": "actualfarperiodicwork-eq-log--75767dc74b7f8e25cc3a67e4",
  "source": {
    "blob": "ad27d873ad1b8bbf9a032db4ba1a16ea01d4690f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 415,
    "line": 399,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:75767dc74b7f8e25cc3a67e42036cfd8259fdcfcb90cb8fae3043b4f48dae051",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3aa90ae-e58b-fc97-f58f-b381eff5b19f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–415.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFarPeriodicWork_eq_log {A l : ℝ} (hl : 0 < l)
    (hlK : l ≤ ((sourceKernelCutoff A / (vaughanCutoff A + 1) : ℕ) : ℝ)) :
    actualFarPeriodicWork A l =
      ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t *
          ∫ s in Real.log l..actualColumnUpper A,
            (actualLogColumnPrefix A s - actualCenteredPrefixPeriodMean (vaughanCutoff A)) *
              actualTwistedTimeDensity A t s := by
  unfold actualFarPeriodicWork
  apply intervalIntegral.integral_congr
  intro t _
  dsimp only
  rw [actualPhysicalPeriodicPrefixRow_eq_log hl hlK]
  rfl

end
end FormalResearch.RiemannHypothesis.SourceActualFarPeriodicWorkDecay
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Attempt06/Varianta309f620c935c20455aebea48bd6ba13a4d380b7d16955e5ee208cad2b48e91c.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad27d873ad1b8bbf9a032db4ba1a16ea01d4690f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

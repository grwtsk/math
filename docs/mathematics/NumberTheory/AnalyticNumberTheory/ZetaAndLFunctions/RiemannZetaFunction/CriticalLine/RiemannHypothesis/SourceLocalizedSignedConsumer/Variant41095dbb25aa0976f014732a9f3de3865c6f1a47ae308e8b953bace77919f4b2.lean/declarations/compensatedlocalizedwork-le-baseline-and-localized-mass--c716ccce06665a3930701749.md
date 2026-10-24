# compensatedLocalizedWork_le_baseline_and_localized_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ecb995ba-4f15-4096-91bc-3eab4bc3b9cd",
  "kind": "theorem",
  "lexical_name": "compensatedLocalizedWork_le_baseline_and_localized_mass",
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
  "slug": "compensatedlocalizedwork-le-baseline-and-localized-mass--c716ccce06665a3930701749",
  "source": {
    "blob": "b69dbcb6bff658ae68143fce7c79471e7105f06b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedSignedConsumer/Variant41095dbb25aa0976f014732a9f3de3865c6f1a47ae308e8b953bace77919f4b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c716ccce06665a3930701749e65940563b66618cb99afd898ae54e28a9f8214f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedSignedConsumer/Variant41095dbb25aa0976f014732a9f3de3865c6f1a47ae308e8b953bace77919f4b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ecb995ba-4f15-4096-91bc-3eab4bc3b9cd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedLocalizedWork_le_baseline_and_localized_mass (A : ℝ) (hA : 1 ≤ A) :
    compensatedLocalizedWork A ≤
      (∫ t in Real.log (vaughanCutoff A : ℝ)..Real.log (sourceKernelCutoff A : ℝ),
        jointMangoldtTestProfile A t) - centeredDeletedDiagonal A - independentMainTerm A +
      (162826 / (7623 * A ^ 2) + 1 / 4) *
        localizedCenteredErrorExpMass A
          (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) * columnEnvelopeMass A := by
  have he := centeredErrorWork_abs_le_localized_mass A
    (mangoldtLogError (Real.log (vaughanCutoff A : ℝ))) hA
  have hl := (abs_le.mp he).1
  rw [centeredErrorWork_eq_support_integral A _ hA] at hl
  unfold compensatedLocalizedWork
  linarith

end
end FormalResearch.RiemannHypothesis.SourceLocalizedSignedConsumer
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedSignedConsumer/Variant41095dbb25aa0976f014732a9f3de3865c6f1a47ae308e8b953bace77919f4b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceLocalizedSignedConsumer/Variant41095dbb25aa0976f014732a9f3de3865c6f1a47ae308e8b953bace77919f4b2.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b69dbcb6bff658ae68143fce7c79471e7105f06b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

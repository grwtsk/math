# compensatedLocalizedWork_le_baseline_and_localized_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5341f0995029605c0bee8b9fe119e93f12d6a0ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5c56fb28-8db4-970e-c9c6-91bb8bbead4a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9f306992-aff7-bb62-9206-a5cb75bc3820",
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
  "slug": "compensatedlocalizedwork-le-baseline-and-localized-mass--84896bf0b3cf2c5a5047a6a5",
  "source": {
    "blob": "5341f0995029605c0bee8b9fe119e93f12d6a0ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3584e0963e5abc910dcfSourceLocalizedSignedConsumer/Variant3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:84896bf0b3cf2c5a5047a6a52a4d4371ffc3eff492c210e1e3fa96927577e7eb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3584e0963e5abc910dcfSourceLocalizedSignedConsumer/Variant3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f306992-aff7-bb62-9206-a5cb75bc3820`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–85.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3584e0963e5abc910dcfSourceLocalizedSignedConsumer/Variant3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/3584e0963e5abc910dcfSourceLocalizedSignedConsumer/Variant3584e0963e5abc910dcf1d67e7a8586e00bc8f029343edf6001554e04f0921de.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5341f0995029605c0bee8b9fe119e93f12d6a0ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

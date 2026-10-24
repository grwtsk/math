# weightedSource_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9410890a-d240-daea-3252-7262d2b61b3a",
  "kind": "theorem",
  "lexical_name": "weightedSource_integrable",
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
  "slug": "weightedsource-integrable--ddf4c68f0f6066c9c9949955",
  "source": {
    "blob": "37e03688cb4d9fa6cfcea6a16396cadafe82e43d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 198,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddf4c68f0f6066c9c994995562eef7e68971c4d1fa77b0e8a4b63ee76ee9be18",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9410890a-d240-daea-3252-7262d2b61b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedSource_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (fun x ↦ Real.exp (-x / 2) * normalizedTest explicitSecondDerivative A x) :=
  ((Real.continuous_exp.comp (continuous_id.neg.div_const 2)).mul
    (normalizedTest_contDiff A hA).continuous).integrable_of_hasCompactSupport
      (normalizedTest_hasCompactSupport A hA).mul_left

/-- Every closed-half-line tail is genuinely integrable before applying FTC. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceCausalEnergy/Variant03e98f11d9dde7c85a54a2eff70695698d42a5646b02565e4c5702482bcea529.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37e03688cb4d9fa6cfcea6a16396cadafe82e43d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

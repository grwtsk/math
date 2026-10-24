# literal_cutoff_seven_halves_fixed_source_increases

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92ea8188-b7dc-4b6b-fe57-bbc8f519a145",
  "kind": "theorem",
  "lexical_name": "literal_cutoff_seven_halves_fixed_source_increases",
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
  "slug": "literal-cutoff-seven-halves-fixed-source-increases--d566d8517c83f041d874c270",
  "source": {
    "blob": "a2c68bca55b0acf818ee7dda13229f78e8bac240",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 67,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPositiveCutoffFluxFixtures/Variantd9b5440b61c431740dd8bb72010e9f96d5c0b386df02875c662e21c9331776f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d566d8517c83f041d874c270291b53560a904db1f8f88d353ce1a3c33e3fc3f4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPositiveCutoffFluxFixtures/Variantd9b5440b61c431740dd8bb72010e9f96d5c0b386df02875c662e21c9331776f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92ea8188-b7dc-4b6b-fe57-bbc8f519a145`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem literal_cutoff_seven_halves_fixed_source_increases :
    jointAt (7 / 2 : ℝ) 11 (sourceKernelCutoff (7 / 2)) <
      jointAt (7 / 2 : ℝ) 12 (sourceKernelCutoff (7 / 2)) := by
  have hU : vaughanCutoff (7 / 2 : ℝ) = 12 := by
    unfold vaughanCutoff
    apply (Nat.floor_eq_iff (sq_nonneg (7 / 2 : ℝ))).2
    constructor <;> norm_num
  exact literal_cutoff_twelve_fixed_source_increases (by norm_num) hU

end

end FormalResearch.RiemannHypothesis.ActualPositiveCutoffFluxFixtures
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPositiveCutoffFluxFixtures/Variantd9b5440b61c431740dd8bb72010e9f96d5c0b386df02875c662e21c9331776f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPositiveCutoffFluxFixtures/Variantd9b5440b61c431740dd8bb72010e9f96d5c0b386df02875c662e21c9331776f3.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a2c68bca55b0acf818ee7dda13229f78e8bac240` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

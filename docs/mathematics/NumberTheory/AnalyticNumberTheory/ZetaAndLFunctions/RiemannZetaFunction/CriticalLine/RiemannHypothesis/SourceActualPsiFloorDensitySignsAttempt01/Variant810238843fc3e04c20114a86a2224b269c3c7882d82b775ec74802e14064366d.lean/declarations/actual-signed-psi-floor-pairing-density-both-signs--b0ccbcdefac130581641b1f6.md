# actual_signed_psi_floor_pairing_density_both_signs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3e91130-748c-1ee6-2ac7-634082e6735c",
  "kind": "theorem",
  "lexical_name": "actual_signed_psi_floor_pairing_density_both_signs",
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
  "slug": "actual-signed-psi-floor-pairing-density-both-signs--b0ccbcdefac130581641b1f6",
  "source": {
    "blob": "fac6df6e58ca873f0409e36f8d524cc469112452",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySignsAttempt01/Variant810238843fc3e04c20114a86a2224b269c3c7882d82b775ec74802e14064366d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0ccbcdefac130581641b1f6d6e914cb153d2fdc1d7e0544bd6426c7e566336b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySignsAttempt01/Variant810238843fc3e04c20114a86a2224b269c3c7882d82b775ec74802e14064366d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3e91130-748c-1ee6-2ac7-634082e6735c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_psi_floor_pairing_density_both_signs {A : ℝ} (hA : 91 ≤ A) :
    (∃ x ∈ Ioo (1 : ℝ) (Real.exp (2 * A)), 0 < -actualPsiFloorDensity A x) ∧
      (∃ x ∈ Ioo (1 : ℝ) (Real.exp (2 * A)), -actualPsiFloorDensity A x < 0) := by
  have he := Real.add_one_le_exp (2 * A)
  constructor
  · refine ⟨19, ⟨by norm_num, by linarith⟩, ?_⟩
    exact actual_signed_psi_floor_positive_block hA (by norm_num) (by norm_num)
  · refine ⟨6, ⟨by norm_num, by linarith⟩, ?_⟩
    exact actual_signed_psi_floor_negative_block hA (by norm_num) (by norm_num)

end
end FormalResearch.RiemannHypothesis.SourceActualPsiFloorDensitySigns
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySignsAttempt01/Variant810238843fc3e04c20114a86a2224b269c3c7882d82b775ec74802e14064366d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualPsiFloorDensitySignsAttempt01/Variant810238843fc3e04c20114a86a2224b269c3c7882d82b775ec74802e14064366d.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac6df6e58ca873f0409e36f8d524cc469112452` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

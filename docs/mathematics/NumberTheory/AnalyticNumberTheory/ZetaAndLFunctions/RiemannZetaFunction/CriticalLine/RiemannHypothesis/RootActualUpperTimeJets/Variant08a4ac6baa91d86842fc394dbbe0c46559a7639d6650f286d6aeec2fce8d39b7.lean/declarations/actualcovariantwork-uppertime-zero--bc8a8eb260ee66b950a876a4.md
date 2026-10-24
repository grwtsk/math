# actualCovariantWork_upperTime_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8107d853-9f72-e1f2-2d47-1e4edda95de9",
  "kind": "theorem",
  "lexical_name": "actualCovariantWork_upperTime_zero",
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
  "slug": "actualcovariantwork-uppertime-zero--bc8a8eb260ee66b950a876a4",
  "source": {
    "blob": "7988e9043a4de76af545773ff4d54f51d174dfdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperTimeJets/Variant08a4ac6baa91d86842fc394dbbe0c46559a7639d6650f286d6aeec2fce8d39b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc8a8eb260ee66b950a876a475c97b1b2b602692aef4534ff95b7f6fe6180b6c",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperTimeJets/Variant08a4ac6baa91d86842fc394dbbe0c46559a7639d6650f286d6aeec2fce8d39b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8107d853-9f72-e1f2-2d47-1e4edda95de9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCovariantWork_upperTime_zero (A : ℝ) (hA : 1 ≤ A) (s : ℝ)
    (hs : Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ) ≤ s) :
    covariantMixedDerivative (actualLogMixedDensity A)
      (Real.log (sourceKernelCutoff A : ℝ)) s = 0 := by
  rw [actual_covariant_ordinary_work_kernel A (by linarith) _ _]
  have h2 := actualUpperTimeJet_zero A hA ⟨2, by norm_num⟩ s hs
  have h4 := actualUpperTimeJet_zero A hA ⟨4, by norm_num⟩ s hs
  simp only [h2, h4, zero_div, sub_zero, mul_zero]

end
end FormalResearch.RiemannHypothesis.RootActualUpperTimeJets
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperTimeJets/Variant08a4ac6baa91d86842fc394dbbe0c46559a7639d6650f286d6aeec2fce8d39b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RootActualUpperTimeJets/Variant08a4ac6baa91d86842fc394dbbe0c46559a7639d6650f286d6aeec2fce8d39b7.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7988e9043a4de76af545773ff4d54f51d174dfdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

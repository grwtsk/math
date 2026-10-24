# actual_residual_upper_sharp_primitive_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "358201e4ebc8f731f7bd55afdf3bf3172c6a60fa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 120,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fa/fad5f934c04d9a343a338391cc79b38704ee980298c5c8e02f2b6be67bfd7257.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:add2a5ae-905d-8f45-211f-861d738a95ff",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d7c51787-734c-b62d-8af1-61e78d02d400",
  "kind": "theorem",
  "lexical_name": "actual_residual_upper_sharp_primitive_budget",
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
  "slug": "actual-residual-upper-sharp-primitive-budget--531bcef349b5b31ee215ad80",
  "source": {
    "blob": "358201e4ebc8f731f7bd55afdf3bf3172c6a60fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 120,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt01/Variantfad5f934c04d9a343a338391cc79b38704ee980298c5c8e02f2b6be67bfd7257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:531bcef349b5b31ee215ad8057818cc8ebab3ef1701d383c7daf1a29adc6b072",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt01/Variantfad5f934c04d9a343a338391cc79b38704ee980298c5c8e02f2b6be67bfd7257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d7c51787-734c-b62d-8af1-61e78d02d400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_residual_upper_sharp_primitive_budget (M : ℝ) (hM : 0 ≤ M)
    (hF : ∀ t : ℝ, 0 ≤ t → |criticalPrimitive t| ≤ M)
    (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A < -Real.eulerMascheroniConstant +
      M * (2 * (162826 / 7623 : ℝ) / A + Real.sqrt (162826 / 7623 : ℝ)) := by
  rw [actual_residual_primitive_reconstruction A hA]
  have hw := (abs_le.mp (actual_primitive_sharp_work_bound M hM hF A hA)).2
  have hc := criticalContinuousMoment_lt_zero hA
  linarith

end
end RH16IndependentChallengeNext
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt01/Variantfad5f934c04d9a343a338391cc79b38704ee980298c5c8e02f2b6be67bfd7257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualPrimitiveKernelChallengeAttempt01/Variantfad5f934c04d9a343a338391cc79b38704ee980298c5c8e02f2b6be67bfd7257.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `358201e4ebc8f731f7bd55afdf3bf3172c6a60fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

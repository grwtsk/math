# complete_complement_lower_of_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa9109e6-4013-f2fe-46fd-ac4c8e430d4b",
  "kind": "theorem",
  "lexical_name": "complete_complement_lower_of_tail",
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
  "slug": "complete-complement-lower-of-tail--91ca9e3e0889b1de55301371",
  "source": {
    "blob": "ea89734f3e29cefdcc008fb61feeb7d903a0536c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 35,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant2887ad4084b54f8b95cddac4b5eb275d07b24e17878b863a0ada8ce063042a3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91ca9e3e0889b1de55301371cc9c848def82ba378223a78d0194a8dc37377595",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant2887ad4084b54f8b95cddac4b5eb275d07b24e17878b863a0ada8ce063042a3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa9109e6-4013-f2fe-46fd-ac4c8e430d4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem complete_complement_lower_of_tail (K A : ℝ) (hA : 40 ≤ A)
    (htail : -K ≤ completeXiTail A) :
    -(fixedFrontBudget + K) ≤ completeXiComplement A := by
  have hf := actual_transformed_front_integral_lower A hA
  unfold completeXiComplement completeXiTail at *
  linarith only [hf, htail]

/-- The actual uniform tail premise would supply the exact requested atom-work witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant2887ad4084b54f8b95cddac4b5eb275d07b24e17878b863a0ada8ce063042a3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/6e44fe6db302d8f03402c5f5afb7e69a4976d25def2c65cc2c84bc1e4fa182bdSourceCompleteXi/Variant2887ad4084b54f8b95cddac4b5eb275d07b24e17878b863a0ada8ce063042a3d.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea89734f3e29cefdcc008fb61feeb7d903a0536c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

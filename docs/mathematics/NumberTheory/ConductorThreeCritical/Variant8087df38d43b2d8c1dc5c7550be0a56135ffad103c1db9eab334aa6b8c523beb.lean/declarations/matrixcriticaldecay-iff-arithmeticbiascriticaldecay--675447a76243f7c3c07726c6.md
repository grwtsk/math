# matrixCriticalDecay_iff_arithmeticBiasCriticalDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:663a8e5f-f143-10bf-4491-9ebb4e755ad4",
  "kind": "theorem",
  "lexical_name": "matrixCriticalDecay_iff_arithmeticBiasCriticalDecay",
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
  "slug": "matrixcriticaldecay-iff-arithmeticbiascriticaldecay--675447a76243f7c3c07726c6",
  "source": {
    "blob": "6491cb0add3b59228adbbdaf113ef9b36dffb978",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 291,
    "path": "GRWTSK/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:675447a76243f7c3c07726c6c13b0aeee89373f69f4207e37ffc2db802e19a2a",
  "verification": {
    "reference": "docs/verification/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:663a8e5f-f143-10bf-4491-9ebb4e755ad4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem matrixCriticalDecay_iff_arithmeticBiasCriticalDecay
    (counts : ResidueSixCounts) :
    MatrixCriticalDecay counts ↔ ArithmeticBiasCriticalDecay counts := by
  constructor
  · rintro ⟨C, hC, hEventually⟩
    refine ⟨C, hC, ?_⟩
    filter_upwards [hEventually] with K hK
    calc
      |indexedArithmeticBias counts K| ≤
          sqrtThree * |indexedArithmeticBias counts K| := by
            exact le_mul_of_one_le_left (abs_nonneg _) one_le_sqrtThree
      _ = ‖indexedDiscrepancyOperator counts K‖ :=
        (indexedDiscrepancyOperator_norm counts K).symm
      _ ≤ C * conductorThreeCriticalRate K := hK
  · rintro ⟨C, hC, hEventually⟩
    refine ⟨sqrtThree * C, mul_nonneg (Real.sqrt_nonneg 3) hC, ?_⟩
    filter_upwards [hEventually] with K hK
    rw [indexedDiscrepancyOperator_norm]
    calc
      sqrtThree * |indexedArithmeticBias counts K| ≤
          sqrtThree * (C * conductorThreeCriticalRate K) :=
        mul_le_mul_of_nonneg_left hK (Real.sqrt_nonneg 3)
      _ = (sqrtThree * C) * conductorThreeCriticalRate K := by ring

end

end Surface.Core.ConductorThreeCritical
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ConductorThreeCritical/Variant8087df38d43b2d8c1dc5c7550be0a56135ffad103c1db9eab334aa6b8c523beb.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6491cb0add3b59228adbbdaf113ef9b36dffb978` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

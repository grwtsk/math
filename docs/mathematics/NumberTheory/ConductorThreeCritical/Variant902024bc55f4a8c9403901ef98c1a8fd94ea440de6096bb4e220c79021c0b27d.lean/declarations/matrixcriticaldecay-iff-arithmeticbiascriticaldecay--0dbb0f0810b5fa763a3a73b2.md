# matrixCriticalDecay_iff_arithmeticBiasCriticalDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f8ee1980d1dc64b45fc45b454199ba6683879e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 283,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fdda1794-32c4-a9d7-e698-7edf3b7da58a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7bcb08d5-5403-464d-e95a-e4e3be7e3b8d",
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
  "slug": "matrixcriticaldecay-iff-arithmeticbiascriticaldecay--0dbb0f0810b5fa763a3a73b2",
  "source": {
    "blob": "9f8ee1980d1dc64b45fc45b454199ba6683879e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 309,
    "line": 283,
    "path": "GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dbb0f0810b5fa763a3a73b29253c66ea55054c3fd4f5ad8c64111411f4eeb71",
  "verification": {
    "reference": "docs/verification/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bcb08d5-5403-464d-e95a-e4e3be7e3b8d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–309.

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

[Verification target and public status](../../../../../verification/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ConductorThreeCritical/Variant902024bc55f4a8c9403901ef98c1a8fd94ea440de6096bb4e220c79021c0b27d.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8ee1980d1dc64b45fc45b454199ba6683879e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

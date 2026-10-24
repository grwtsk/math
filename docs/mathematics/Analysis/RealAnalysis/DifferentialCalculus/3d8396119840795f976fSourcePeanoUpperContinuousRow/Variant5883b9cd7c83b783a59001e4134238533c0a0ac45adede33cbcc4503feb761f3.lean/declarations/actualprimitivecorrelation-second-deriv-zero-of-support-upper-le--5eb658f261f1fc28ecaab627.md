# actualPrimitiveCorrelation_second_deriv_zero_of_support_upper_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eefffcb7-985a-087c-e3aa-b2c88f194988",
  "kind": "theorem",
  "lexical_name": "actualPrimitiveCorrelation_second_deriv_zero_of_support_upper_le",
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
  "slug": "actualprimitivecorrelation-second-deriv-zero-of-support-upper-le--5eb658f261f1fc28ecaab627",
  "source": {
    "blob": "760ded0a1517b9f3f4c72664342e82a6235f12bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 74,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5eb658f261f1fc28ecaab6273b2955d18b126f5be2ea6cdd8077f79f87484cd1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eefffcb7-985a-087c-e3aa-b2c88f194988`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPrimitiveCorrelation_second_deriv_zero_of_support_upper_le {A t : ℝ}
    (hA : 0 < A) (ht : 2 * A ≤ t) : deriv (deriv (primitiveCorrelationZero A)) t = 0 := by
  have hz : ∀ y ∈ Ici t, deriv (primitiveCorrelationZero A) y = 0 := by
    intro y hy
    exact actualPrimitiveCorrelation_deriv_zero_of_support_upper_le hA (ht.trans hy)
  have hd : HasDerivWithinAt (deriv (primitiveCorrelationZero A)) 0 (Ici t) t :=
    (hasDerivWithinAt_const t (Ici t) (0 : ℝ)).congr
      (fun y hy => hz y hy) (hz t self_mem_Ici)
  exact hd.deriv_eq_zero (uniqueDiffWithinAt_Ici t)

/-- The actual Peano primitive vanishes at and beyond the upper seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/3d8396119840795f976fSourcePeanoUpperContinuousRow/Variant5883b9cd7c83b783a59001e4134238533c0a0ac45adede33cbcc4503feb761f3.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760ded0a1517b9f3f4c72664342e82a6235f12bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# actualBumpTwoTail_movingHeight_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06d3509d-3f0c-18b8-e027-db765d61c1b6",
  "kind": "theorem",
  "lexical_name": "actualBumpTwoTail_movingHeight_norm_le",
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
  "slug": "actualbumptwotail-movingheight-norm-le--b1cc8d99d1273ae8f24716ca",
  "source": {
    "blob": "7cfe1e19cc052c450e3bcf398564ae0191db7559",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1cc8d99d1273ae8f24716cab0921238c11cf83e711b5979329e7d936d29d7db",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06d3509d-3f0c-18b8-e027-db765d61c1b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBumpTwoTail_movingHeight_norm_le (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    ‖actualBumpTwoTail A c (actualBumpMovingHeight A c)‖ ≤
      actualBumpMovingTailConstant c / A ^ 9 := by
  have hb := actualBumpTwoTail_norm_le A c (actualBumpMovingHeight A c) hA hc
    (actualBumpMovingHeight_ge_one A c hA hc)
  have hp : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hD := actualRightLineMass_nonneg c
  have ht : actualBumpMovingHeight A c ^ 5 = Real.exp ((2 * c - 1) * A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : actualRightBumpTailNumerator A c /
      (5 * Real.pi * actualBumpMovingHeight A c ^ 5) =
      (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * sourceNormalization A * A ^ 9) := by
    rw [ht]
    unfold actualRightBumpTailNumerator
    field_simp
  rw [he] at hb
  apply hb.trans
  have hden : 5 * Real.pi * (4096 / 109395 : ℝ) * A ^ 9 ≤
      5 * Real.pi * sourceNormalization A * A ^ 9 := by
    gcongr
    exact actualBumpNormalization_lower A hA
  calc
    _ ≤ (actualRightLineMass c * (204288 : ℝ) ^ 2 * (1 + c ^ 2) *
        (1 + (c - 1) ^ 2)) / (5 * Real.pi * (4096 / 109395) * A ^ 9) :=
      div_le_div_of_nonneg_left (by positivity) (by positivity) hden
    _ = _ := by unfold actualBumpMovingTailConstant; ring

end
end FormalResearch.RiemannHypothesis.SourceActualBumpMovingHeight
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualBumpMovingHeightNative1/Variant4b7e5377d76985ccf381c7c2291c32b334e526d786c5df5b50b13331f377ae98.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7cfe1e19cc052c450e3bcf398564ae0191db7559` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

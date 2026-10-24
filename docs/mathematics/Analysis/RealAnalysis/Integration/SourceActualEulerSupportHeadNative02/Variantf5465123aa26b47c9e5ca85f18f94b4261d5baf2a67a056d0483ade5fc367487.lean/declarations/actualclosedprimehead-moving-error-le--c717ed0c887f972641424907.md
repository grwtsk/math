# actualClosedPrimeHead_moving_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e9b6515-306a-6aca-e908-8e02d646cbc4",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_moving_error_le",
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
  "slug": "actualclosedprimehead-moving-error-le--c717ed0c887f972641424907",
  "source": {
    "blob": "a3a01750a985702740580726447ce138aaf43731",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 366,
    "line": 333,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variantf5465123aa26b47c9e5ca85f18f94b4261d5baf2a67a056d0483ade5fc367487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c717ed0c887f97264142490738fb0d1d7e1f3609a6ed8d6e940278550c803f72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variantf5465123aa26b47c9e5ca85f18f94b4261d5baf2a67a056d0483ade5fc367487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e9b6515-306a-6aca-e908-8e02d646cbc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–366.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_moving_error_le (A c d : ℝ) (hA : 1 ≤ A)
    (hd : 1 < d) (hdc : d < c) :
    ‖actualInitialPrimeHead A c (actualBumpMovingHeight A c) -
      actualClosedPrimeHead A c (actualBumpMovingHeight A c)‖ ≤
      actualClosedPrimeHeadErrorConstant c d*Real.exp (-2*(c-d)*A)/A^9 := by
  have hb := actualClosedPrimeHead_error_le A c d (actualBumpMovingHeight A c) hA hd hdc
    (actualBumpMovingHeight_ge_one A c hA (by linarith))
  have hp : 0 < A := by linarith
  have hZ := source_normalization_pos A hA
  have hD := actualRightLineMass_nonneg d
  have ht : actualBumpMovingHeight A c^5 = Real.exp ((2*c-1)*A) := by
    unfold actualBumpMovingHeight
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have he : exteriorTailNumerator A c d/(5*Real.pi*actualBumpMovingHeight A c^5) =
      (actualRightLineMass d*(204288:ℝ)^2*(1+c^2)*(1+(c-1)^2)*Real.exp (-2*(c-d)*A))/
        (5*Real.pi*sourceNormalization A*A^9) := by
    rw [ht]
    unfold exteriorTailNumerator
    field_simp
  rw [he] at hb
  apply hb.trans
  have hden : 5*Real.pi*(4096/109395:ℝ)*A^9 ≤ 5*Real.pi*sourceNormalization A*A^9 := by
    gcongr
    exact actualBumpNormalization_lower A hA
  calc
    _ ≤ (actualRightLineMass d*(204288:ℝ)^2*(1+c^2)*(1+(c-1)^2)*Real.exp (-2*(c-d)*A))/
        (5*Real.pi*(4096/109395)*A^9) :=
      div_le_div_of_nonneg_left (by positivity) (by positivity) hden
    _ = _ := by unfold actualClosedPrimeHeadErrorConstant; ring

end
end FormalResearch.RiemannHypothesis.SourceActualEulerSupportHead
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variantf5465123aa26b47c9e5ca85f18f94b4261d5baf2a67a056d0483ade5fc367487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerSupportHeadNative02/Variantf5465123aa26b47c9e5ca85f18f94b4261d5baf2a67a056d0483ade5fc367487.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3a01750a985702740580726447ce138aaf43731` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

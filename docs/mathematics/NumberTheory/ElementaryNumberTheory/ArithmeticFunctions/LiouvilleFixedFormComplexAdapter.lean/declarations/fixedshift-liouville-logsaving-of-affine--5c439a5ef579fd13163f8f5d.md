# fixedShift_liouville_logSaving_of_affine

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:083778b8-cbd6-91ed-69bc-0e3e7faf74f4",
  "kind": "theorem",
  "lexical_name": "fixedShift_liouville_logSaving_of_affine",
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
  "slug": "fixedshift-liouville-logsaving-of-affine--5c439a5ef579fd13163f8f5d",
  "source": {
    "blob": "1d6501c4118d9795a840281520d2020789881349",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 136,
    "path": "GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5c439a5ef579fd13163f8f5d507f2a5b178a228858ee599fa9477698a813cd9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:083778b8-cbd6-91ed-69bc-0e3e7faf74f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedShift_liouville_logSaving_of_affine
    (source : FixedNonproportionalAffineLogSaving) :
    ∃ c : ℝ, 0 < c ∧
      ∀ h : ℕ, 0 < h →
        ∃ C : ℝ, 0 < C ∧
          ∀ X : ℝ, 3 ≤ X →
            |((∑ n ∈ Finset.range ⌊X⌋₊,
                 fixedShiftTerm h n : ℤ) : ℝ)| ≤
              C * X / Real.rpow (Real.log X) c := by
  obtain ⟨c, hc, hsource⟩ := source
  refine ⟨c, hc, ?_⟩
  intro h hh
  obtain ⟨C, hC, hb⟩ :=
    hsource 1 1 0 h (by norm_num) (by norm_num)
      (directAffine_nonproportional h hh)
  refine ⟨C, hC, ?_⟩
  intro X hX
  simpa only [complexAffine_norm_eq_fixedShift_abs] using hb X hX

/-- Independently of any fixed-form statement, the zero-shift
normalized correlation stays exactly one in absolute value.
This hostile control cannot be discharged by nonproportionality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ArithmeticFunctions/LiouvilleFixedFormComplexAdapter.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d6501c4118d9795a840281520d2020789881349` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

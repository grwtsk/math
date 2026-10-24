# seminormFromBounded_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c02dca83-04c3-4cdc-326f-2ea20a876edd",
  "kind": "theorem",
  "lexical_name": "seminormFromBounded_mul",
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
  "slug": "seminormfrombounded-mul--f9aecbf10f9544334f232b8c",
  "source": {
    "blob": "fa0531987e900b40adafdf9149a529c2a2dafdbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 179,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9aecbf10f9544334f232b8c53266f0df4ec73f951258e2e59e919c7bbe47f98",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c02dca83-04c3-4cdc-326f-2ea20a876edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminormFromBounded_mul (f_nonneg : 0 ≤ f)
    (f_mul : ∀ x y : R, f (x * y) ≤ c * f x * f y) (x y : R) :
    seminormFromBounded' f (x * y) ≤ seminormFromBounded' f x * seminormFromBounded' f y := by
  apply ciSup_le
  by_cases hy : seminormFromBounded' f y = 0
  · rw [seminormFromBounded_eq_zero_iff f_nonneg f_mul] at hy
    intro z
    rw [mul_comm x y, mul_assoc, map_mul_zero_of_map_zero f_nonneg f_mul hy (x * z), zero_div]
    exact mul_nonneg (seminormFromBounded_nonneg f_nonneg f_mul x)
      (seminormFromBounded_nonneg f_nonneg f_mul y)
  · intro z
    rw [← div_le_iff₀ (lt_of_le_of_ne' (seminormFromBounded_nonneg f_nonneg f_mul _) hy)]
    apply le_ciSup_of_le (seminormFromBounded_bddAbove_range f_nonneg f_mul x) z
    rw [div_le_iff₀ (lt_of_le_of_ne' (seminormFromBounded_nonneg f_nonneg f_mul _) hy),
      div_mul_eq_mul_div]
    by_cases hz : f z = 0
    · have hxyz : f (z * (x * y)) = 0 := map_mul_zero_of_map_zero f_nonneg f_mul hz _
      simp_rw [mul_comm, hxyz, zero_div]
      exact div_nonneg (mul_nonneg (seminormFromBounded_nonneg f_nonneg f_mul y) (f_nonneg _))
        (f_nonneg _)
    · rw [div_le_div_iff_of_pos_right (lt_of_le_of_ne' (f_nonneg _) hz), mul_comm (f (x * z))]
      by_cases hxz : f (x * z) = 0
      · rw [mul_comm x y, mul_assoc, mul_comm y, map_mul_zero_of_map_zero f_nonneg f_mul hxz y]
        exact mul_nonneg (seminormFromBounded_nonneg f_nonneg f_mul y) (f_nonneg _)
      · rw [← div_le_iff₀ (lt_of_le_of_ne' (f_nonneg _) hxz)]
        apply le_ciSup_of_le (seminormFromBounded_bddAbove_range f_nonneg f_mul y) (x * z)
        rw [div_le_div_iff_of_pos_right (lt_of_le_of_ne' (f_nonneg _) hxz), mul_comm x y, mul_assoc]

/-- If `f : R → ℝ` is a nonzero, nonnegative, multiplicatively bounded function, then
  `seminormFromBounded' f 1 = 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa0531987e900b40adafdf9149a529c2a2dafdbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

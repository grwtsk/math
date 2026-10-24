# seminormFromBounded_of_mul_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:87bfc010-c27c-36a3-5d21-09f0d8b3d621",
  "kind": "theorem",
  "lexical_name": "seminormFromBounded_of_mul_le",
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
  "slug": "seminormfrombounded-of-mul-le--6ee5c96f705684e796ac6134",
  "source": {
    "blob": "fa0531987e900b40adafdf9149a529c2a2dafdbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 308,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ee5c96f705684e796ac6134947ad689b13b8127b64ce6843a1765b28d2cd861",
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

Occurrence: `result:87bfc010-c27c-36a3-5d21-09f0d8b3d621`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminormFromBounded_of_mul_le (f_nonneg : 0 ≤ f) {x : R}
    (hx : ∀ y : R, f (x * y) ≤ f x * f y) (h_one : f 1 ≤ 1) : seminormFromBounded' f x = f x := by
  simp_rw [seminormFromBounded']
  apply le_antisymm
  · refine ciSup_le (fun y ↦ ?_)
    by_cases hy : f y = 0
    · rw [hy, div_zero]; exact f_nonneg _
    · rw [div_le_iff₀ (lt_of_le_of_ne' (f_nonneg _) hy)]; exact hx _
  · have h_bdd : BddAbove (Set.range fun y ↦ f (x * y) / f y) := by
      use f x
      rintro r ⟨y, rfl⟩
      by_cases hy0 : f y = 0
      · simp only [hy0, div_zero]
        exact f_nonneg _
      · rw [← mul_one (f x), ← div_self hy0, ← mul_div_assoc,
          div_le_iff₀ (lt_of_le_of_ne' (f_nonneg _) hy0), mul_div_assoc, div_self hy0, mul_one]
        exact hx y
    convert le_ciSup h_bdd (1 : R)
    by_cases h0 : f x = 0
    · rw [mul_one, h0, zero_div]
    · have heq : f 1 = 1 := by
        apply h_one.antisymm
        specialize hx 1
        rw [mul_one, le_mul_iff_one_le_right (lt_of_le_of_ne (f_nonneg _) (Ne.symm h0))] at hx
        exact hx
      rw [heq, mul_one, div_one]

/-- If `f : R → ℝ` is a nonzero, nonnegative, multiplicatively bounded function, then
  `seminormFromBounded' f` is nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variantb7516d4da12112593a5ef9e99745191da9f52b4461a38d8e2ca2c70bd49af181.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa0531987e900b40adafdf9149a529c2a2dafdbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

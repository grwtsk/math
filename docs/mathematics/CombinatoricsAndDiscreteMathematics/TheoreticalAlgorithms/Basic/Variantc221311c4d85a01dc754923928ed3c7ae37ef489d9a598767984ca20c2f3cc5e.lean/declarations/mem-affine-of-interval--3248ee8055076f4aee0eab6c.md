# mem_affine_of_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b0ed518-d2bb-04b2-f258-3e3f12f8910c",
  "kind": "theorem",
  "lexical_name": "mem_affine_of_interval",
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
  "slug": "mem-affine-of-interval--3248ee8055076f4aee0eab6c",
  "source": {
    "blob": "a3c906d8899028f064ac01abf4b1db912db27469",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 750,
    "line": 714,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3248ee8055076f4aee0eab6cfb47550f4c1a1e57ad1cf3e853f5ec25a7255b89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b0ed518-d2bb-04b2-f258-3e3f12f8910c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 714–750.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_affine_of_interval {I : IntervalRat} {eps : NoiseAssignment} {x : ℝ}
    (hx : x ∈ I) :
    mem_affine
      { c0 := (I.lo + I.hi) / 2
        coeffs := []
        r := |(I.hi - I.lo) / 2|
        r_nonneg := abs_nonneg _ } eps x := by
  let mid : ℚ := (I.lo + I.hi) / 2
  let rad : ℚ := (I.hi - I.lo) / 2
  have hx' : (I.lo : ℝ) ≤ x ∧ x ≤ I.hi := by
    simpa [IntervalRat.mem_def] using hx
  have hrad_nonneg : 0 ≤ rad := by
    simp [rad]
    linarith [I.le]
  have habs_eq : |rad| = rad := abs_of_nonneg hrad_nonneg
  simp only [mem_affine, evalLinear, linearSum, List.zipWith, List.sum_nil, add_zero]
  use x - (mid : ℝ)
  constructor
  · rw [habs_eq, abs_le]
    have hmid_val : (mid : ℝ) = ((I.lo : ℝ) + I.hi) / 2 := by
      simp only [mid]; push_cast; ring
    constructor
    · calc -((rad : ℚ) : ℝ)
          = (I.lo : ℝ) - ((I.lo : ℝ) + I.hi) / 2 := by
              simp only [rad]; push_cast; ring
        _ = (I.lo : ℝ) - (mid : ℝ) := by rw [hmid_val]
        _ ≤ x - (mid : ℝ) := by linarith [hx'.1]
    · calc x - (mid : ℝ)
          ≤ (I.hi : ℝ) - (mid : ℝ) := by linarith [hx'.2]
        _ = (I.hi : ℝ) - ((I.lo : ℝ) + I.hi) / 2 := by rw [hmid_val]
        _ = ((I.hi : ℝ) - I.lo) / 2 := by ring
        _ = ((rad : ℚ) : ℝ) := by simp only [rad]; push_cast; ring
  · ring

end AffineForm

end LeanCert.Engine.Affine
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantc221311c4d85a01dc754923928ed3c7ae37ef489d9a598767984ca20c2f3cc5e.lean#L714).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3c906d8899028f064ac01abf4b1db912db27469` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

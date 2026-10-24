# abs_centeredDivisibilityTail_le_quotient_mul_log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b24c4cf0-b151-6d89-caf4-c72705804137",
  "kind": "theorem",
  "lexical_name": "abs_centeredDivisibilityTail_le_quotient_mul_log",
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
  "slug": "abs-centereddivisibilitytail-le-quotient-mul-log--bcad67de437c5f424e87cd07",
  "source": {
    "blob": "2642927ce9edc1680b15c445153abd720c29efed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 255,
    "path": "GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bcad67de437c5f424e87cd0731a0a4577927d5d314d6ea1043c79a08b75acff2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b24c4cf0-b151-6d89-caf4-c72705804137`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abs_centeredDivisibilityTail_le_quotient_mul_log
    {X r : ℕ}
    (hX : 1 ≤ X)
    (hr : 1 < r)
    {w : ℕ → ℝ}
    (hw : ∀ n ∈ octaveIndexSet X,
      w n ∈ Set.Icc (0 : ℝ) 1) :
    |centeredDivisibilityTail X w r| ≤
      ((4 * X / r : ℕ) : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by
  rw [centeredDivisibilityTail_eq_weighted_restrictedBlocks hr w]
  have hlognonneg :
      0 ≤ Real.log ((4 * X : ℕ) : ℝ) :=
    Real.log_nonneg
      (by exact_mod_cast (show 1 ≤ 4 * X by omega))
  have hcard :=
    divisibleOctaveIndexSet_card_le
      (X := X) (r := r) (lt_trans Nat.zero_lt_one hr)
  calc
    |∑ n ∈ divisibleOctaveIndexSet X r,
        w n * restrictedProductMobiusLogBlock r (n / r)| ≤
      ∑ n ∈ divisibleOctaveIndexSet X r,
        |w n * restrictedProductMobiusLogBlock r (n / r)| := by
          exact Finset.abs_sum_le_sum_abs _ _
    _ ≤
      ∑ _n ∈ divisibleOctaveIndexSet X r,
        Real.log ((4 * X : ℕ) : ℝ) := by
          exact Finset.sum_le_sum fun n hn =>
            abs_weighted_restrictedBlock_le_log_four_mul_scale
              hX hw hn (lt_trans Nat.zero_lt_one hr)
    _ = ((divisibleOctaveIndexSet X r).card : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by simp
    _ ≤ ((4 * X / r : ℕ) : ℝ) *
        Real.log ((4 * X : ℕ) : ℝ) := by
          exact mul_le_mul_of_nonneg_right
            (by exact_mod_cast hcard) hlognonneg

end GRWTSK.NumberTheory.Moebius.CenteredLowGCD
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CenteredLowGCDSharpDivisibilityTail.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2642927ce9edc1680b15c445153abd720c29efed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

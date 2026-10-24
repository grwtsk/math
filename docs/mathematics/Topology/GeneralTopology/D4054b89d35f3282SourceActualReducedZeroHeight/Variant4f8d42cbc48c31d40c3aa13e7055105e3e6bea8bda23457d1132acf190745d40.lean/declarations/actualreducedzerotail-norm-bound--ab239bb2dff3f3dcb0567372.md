# actualReducedZeroTail_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:034ae2fc-44a7-f6ff-41d8-918ba4b85ac0",
  "kind": "theorem",
  "lexical_name": "actualReducedZeroTail_norm_bound",
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
  "slug": "actualreducedzerotail-norm-bound--ab239bb2dff3f3dcb0567372",
  "source": {
    "blob": "d7e5b8346bc0c5c7e81d46199fc3678d26ebe913",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab239bb2dff3f3dcb05673725aa2104947ca1dc7b78bc8c66e0532509de13a08",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:034ae2fc-44a7-f6ff-41d8-918ba4b85ac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualReducedZeroTail_norm_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A : ℝ, 200 ≤ A →
      ‖actualZeroHeightTail A (actualReducedZeroHeight A)‖ ≤
        actualReducedZeroEnvelope A0 A := by
  obtain ⟨A0,hA0,hbound⟩ := actualZeroHeightTail_norm_bound
  refine ⟨A0,hA0,fun A hA => ?_⟩
  have hp : 0 < A := by linarith
  have hA1 : 1 ≤ A := by linarith
  have hheight : 0 < actualReducedZeroHeight A := by
    unfold actualReducedZeroHeight
    positivity
  have ht := hbound A (actualReducedZeroHeight A) hA1 (actualReducedZeroHeight_ge_four hA)
  have he : actualReducedZeroHeight A ^ 5 = Real.exp A / A^5 := by
    unfold actualReducedZeroHeight
    rw [div_pow, ← Real.exp_nat_mul]
    congr 2
    ring
  have hl : Real.log (actualReducedZeroHeight A) ≤ A / 5 := by
    unfold actualReducedZeroHeight
    rw [Real.log_div (Real.exp_pos _).ne' hp.ne', Real.log_exp]
    linarith [Real.log_nonneg hA1]
  calc
    _ ≤ 2 * actualZeroTailWeightConstant * A0 * Real.exp A *
        (A / 5 + 2) / (A^9 * actualReducedZeroHeight A ^ 5) := by
      apply ht.trans
      apply div_le_div_of_nonneg_right _ (by positivity)
      apply mul_le_mul_of_nonneg_left (by linarith :
        Real.log (actualReducedZeroHeight A) + 2 ≤ A / 5 + 2)
      unfold actualZeroTailWeightConstant
      positivity
    _ = actualReducedZeroEnvelope A0 A := by
      rw [he]
      unfold actualReducedZeroEnvelope
      field_simp

/-- The complete actual zero tail vanishes on the whole real scale axis at the smaller height. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/D4054b89d35f3282SourceActualReducedZeroHeight/Variant4f8d42cbc48c31d40c3aa13e7055105e3e6bea8bda23457d1132acf190745d40.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d7e5b8346bc0c5c7e81d46199fc3678d26ebe913` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

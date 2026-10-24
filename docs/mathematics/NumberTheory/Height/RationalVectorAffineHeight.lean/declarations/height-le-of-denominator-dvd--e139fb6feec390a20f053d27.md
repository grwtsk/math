# height_le_of_denominator_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5df68307-73e5-00a6-43f6-99d64fee4109",
  "kind": "theorem",
  "lexical_name": "height_le_of_denominator_dvd",
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
  "slug": "height-le-of-denominator-dvd--e139fb6feec390a20f053d27",
  "source": {
    "blob": "08bf6ec91f9a7815932c3a245b5d5132fb986135",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 219,
    "path": "GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e139fb6feec390a20f053d27cbfe6e1d996c4aa0276448c83a32021f8b66c1ca",
  "verification": {
    "reference": "docs/verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5df68307-73e5-00a6-43f6-99d64fee4109`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem height_le_of_denominator_dvd (x : ι → ℚ) (y : κ → ℚ) (C : ℕ) (hC : 0 < C)
    (B : ℚ) (hB : 1 ≤ B) (hd : denominator y ∣ C * denominator x)
    (hm : maxAbs y ≤ B * maxAbs x) : height y ≤ (C : ℚ) * B * height x := by
  have hD : (denominator y : ℚ) ≤ (C : ℚ) * (denominator x : ℚ) := by
    exact_mod_cast (Nat.le_of_dvd (Nat.mul_pos hC (Nat.pos_of_ne_zero (denominator_ne_zero x))) hd)
  have hM : max 1 (maxAbs y) ≤ B * max 1 (maxAbs x) := by
    apply max_le
    · have h : B ≤ B * max 1 (maxAbs x) := by
        simpa only [mul_one] using
          mul_le_mul_of_nonneg_left (le_max_left (1 : ℚ) (maxAbs x)) (by linarith : 0 ≤ B)
      exact hB.trans h
    · exact hm.trans (mul_le_mul_of_nonneg_left (le_max_right (1 : ℚ) (maxAbs x)) (by linarith))
  calc
    height y ≤ ((C : ℚ) * (denominator x : ℚ)) * (B * max 1 (maxAbs x)) :=
      mul_le_mul hD hM (le_trans (by norm_num) (le_max_left _ _)) (by positivity)
    _ = (C : ℚ) * B * height x := by unfold height; ring

/-- Exact logarithmic consequence in the affine, not homogeneous-projective convention. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Height/RationalVectorAffineHeight.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Height/RationalVectorAffineHeight.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08bf6ec91f9a7815932c3a245b5d5132fb986135` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

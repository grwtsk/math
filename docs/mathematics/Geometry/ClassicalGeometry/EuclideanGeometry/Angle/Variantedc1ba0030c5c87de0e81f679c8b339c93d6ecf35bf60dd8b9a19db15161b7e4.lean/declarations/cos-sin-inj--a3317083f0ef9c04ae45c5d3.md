# cos_sin_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7bd7e42-3009-e4e4-aace-2130dd77708e",
  "kind": "theorem",
  "lexical_name": "cos_sin_inj",
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
  "slug": "cos-sin-inj--a3317083f0ef9c04ae45c5d3",
  "source": {
    "blob": "69368b88c5b14c8e2d8ddd8da3fc1dbd608dc285",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 247,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3317083f0ef9c04ae45c5d3f71574176b364aacbeb2581427176f2ec38d5f7d",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7bd7e42-3009-e4e4-aace-2130dd77708e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cos_sin_inj {θ ψ : ℝ} (Hcos : cos θ = cos ψ) (Hsin : sin θ = sin ψ) : (θ : Angle) = ψ := by
  rcases cos_eq_iff_coe_eq_or_eq_neg.mp Hcos with hc | hc; · exact hc
  rcases sin_eq_iff_coe_eq_or_add_eq_pi.mp Hsin with hs | hs; · exact hs
  rw [eq_neg_iff_add_eq_zero, hs] at hc
  obtain ⟨n, hn⟩ : ∃ n, n • _ = _ := QuotientAddGroup.leftRel_apply.mp (Quotient.exact' hc)
  rw [← neg_one_mul, add_zero, ← sub_eq_zero, zsmul_eq_mul, ← mul_assoc, ← sub_mul, mul_eq_zero,
    eq_false (ne_of_gt pi_pos), or_false, sub_neg_eq_add, ← Int.cast_zero, ← Int.cast_one,
    ← Int.cast_ofNat, ← Int.cast_mul, ← Int.cast_add, Int.cast_inj] at hn
  have : (n * 2 + 1) % (2 : ℤ) = 0 % (2 : ℤ) := congr_arg (· % (2 : ℤ)) hn
  rw [add_comm, Int.add_mul_emod_self_right] at this
  exact absurd this one_ne_zero

/-- The sine of a `Real.Angle`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Angle/Variantedc1ba0030c5c87de0e81f679c8b339c93d6ecf35bf60dd8b9a19db15161b7e4.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69368b88c5b14c8e2d8ddd8da3fc1dbd608dc285` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

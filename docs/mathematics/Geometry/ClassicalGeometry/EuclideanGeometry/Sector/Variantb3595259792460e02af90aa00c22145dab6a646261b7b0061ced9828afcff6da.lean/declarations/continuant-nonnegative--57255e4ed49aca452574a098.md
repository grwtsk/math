# continuant_nonnegative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:895455b4-c52f-e2c5-8881-cdbfa91b3531",
  "kind": "theorem",
  "lexical_name": "continuant_nonnegative",
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
  "slug": "continuant-nonnegative--57255e4ed49aca452574a098",
  "source": {
    "blob": "cb9d7be2cf37d2007777bd4522afa6ca9242d437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 117,
    "line": 97,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57255e4ed49aca452574a09869329ccf5140dcadc542138959bce34ba7950ced",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:895455b4-c52f-e2c5-8881-cdbfa91b3531`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–117.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuant_nonnegative (η θ : ℝ) (R n : ℕ)
    (hη : 0 ≤ η) (hθ : 0 ≤ θ) (hR : 1 ≤ R)
    (hsector : ((R : ℝ) + 1) * θ ≤ Real.pi) (hn : n ≤ R) :
    0 ≤ continuant (2 * η * Real.cos θ) (η ^ 2) n := by
  rcases eq_or_lt_of_le hθ with he | hp
  · have hθ0 : θ = 0 := he.symm
    rw [hθ0, Real.cos_zero, mul_one, continuant_zero_angle]
    positivity
  · have hRreal : (1 : ℝ) ≤ R := by exact_mod_cast hR
    have hπ : θ < Real.pi := by nlinarith
    have hs := Real.sin_pos_of_pos_of_lt_pi hp hπ
    rw [continuant_eq_sine_ratio η θ n (ne_of_gt hs)]
    apply div_nonneg
    · apply mul_nonneg (pow_nonneg hη n)
      apply Real.sin_nonneg_of_nonneg_of_le_pi
      · positivity
      · have hnreal : (n : ℝ) ≤ R := by exact_mod_cast hn
        nlinarith
    · exact hs.le

/-- Every minor, not just each continuant, satisfies the finite-order sector bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Sector/Variantb3595259792460e02af90aa00c22145dab6a646261b7b0061ced9828afcff6da.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb9d7be2cf37d2007777bd4522afa6ca9242d437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# cubic_equation_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4646044f-0cd4-1b38-35bf-ff6b74602f28",
  "kind": "theorem",
  "lexical_name": "cubic_equation_iff",
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
  "slug": "cubic-equation-iff--e9532da5aac08062485d631b",
  "source": {
    "blob": "eccdce322f9011544c39df1331a1e90ad7bcb957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9532da5aac08062485d631bb2900009976957d645c11fa96e89f1551e965982",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4646044f-0cd4-1b38-35bf-ff6b74602f28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cubic_equation_iff (A B a g : R) :
    (X : R[X])^4 ∣ cubicResidual A B a g ↔ B*a=1 ∧ B*g=a := by
  rw [cubic_residual_expansion,X_pow_dvd_iff]
  constructor
  · intro h
    have h2 := h 2 (by decide)
    have h3 := h 3 (by decide)
    simp only [coeff_add,coeff_C_mul_X_pow,coeff_X_pow_mul'] at h2 h3
    norm_num at h2 h3
    exact ⟨(sub_eq_zero.mp h2).symm,(sub_eq_zero.mp h3).symm⟩
  · rintro ⟨h2,h3⟩ n hn
    interval_cases n <;> simp [coeff_X_pow_mul',h2,h3]

/-- Denominator SQUARING is forced at third order; no inverse-index surrogate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassMixedLift.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eccdce322f9011544c39df1331a1e90ad7bcb957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

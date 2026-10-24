# equation_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d82c97e4-621c-1ffa-1150-bc9324e9083e",
  "kind": "theorem",
  "lexical_name": "equation_iff",
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
  "slug": "equation-iff--4dc24f15e1842852bc2110b1",
  "source": {
    "blob": "5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 167,
    "path": "GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4dc24f15e1842852bc2110b1b69aab7f9c177a8866181684b7311c0cf27acc3a",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d82c97e4-621c-1ffa-1150-bc9324e9083e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 167–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equation_iff (A B u v a b : R) :
    ((model R A B).map (scalar R)).toAffine.Equation
      (jet R 0 u a) (jet R 0 v b) ↔
        B*u=0 ∧ B*a=v^2+u*v-A*u^2 := by
  change ((model R A B).map (scalar R)).toAffine.polynomial.evalEval
    (jet R 0 u a) (jet R 0 v b)=0 ↔ _
  rw [← mapped_residual, jetMap_zero_iff, X_pow_dvd_iff]
  obtain ⟨h0,h1,h2⟩ := residual_coefficients R A B u v a b
  constructor
  · intro h
    have hu := h 1 (by decide)
    have ha := h 2 (by decide)
    rw [h1] at hu
    rw [h2] at ha
    exact ⟨by simpa only [neg_mul, neg_eq_zero] using hu,
      (sub_eq_zero.mp ha).symm⟩
  · rintro ⟨hu,ha⟩ n hn
    interval_cases n
    · exact h0
    · simpa only [h1,neg_mul,hu,neg_zero]
    · rw [h2,ha,sub_self]

/-- Exhaustive lift criterion: arbitrary quotient coordinates, not an ansatz. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/EllipticCurve/WeierstrassSecondJet.lean#L167).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5995cf8be35a9b679171d7c5fe31ef4fbe0fbd19` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

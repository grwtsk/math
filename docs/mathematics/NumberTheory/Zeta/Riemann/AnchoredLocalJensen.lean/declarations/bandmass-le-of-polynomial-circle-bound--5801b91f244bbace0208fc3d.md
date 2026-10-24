# bandMass_le_of_polynomial_circle_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9cb8200-6f15-0299-020b-b6735e6dc558",
  "kind": "theorem",
  "lexical_name": "bandMass_le_of_polynomial_circle_bound",
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
  "slug": "bandmass-le-of-polynomial-circle-bound--5801b91f244bbace0208fc3d",
  "source": {
    "blob": "f0597066244f0ecde390467f535b4c76acb9be81",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5801b91f244bbace0208fc3df3449a2bffc5014df067df040c8679aeb710ed32",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9cb8200-6f15-0299-020b-b6735e6dc558`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bandMass_le_of_polynomial_circle_bound (N : ℕ) (hN : 2 ≤ N)
    (C : ℝ) (hC : 1 ≤ C) (d : ℕ)
    (hp : ∀ z ∈ sphere (upperCenter N) (3 : ℝ),
      ‖riemannZeta z‖ ≤ C * ((N : ℝ) + 2) ^ d)
    (hm : ∀ z ∈ sphere (lowerCenter N) (3 : ℝ),
      ‖riemannZeta z‖ ≤ C * ((N : ℝ) + 2) ^ d) :
    (bandMass N : ℝ) ≤
      2 * (Real.log (4 * C) + (d : ℝ) * Real.log ((N : ℝ) + 2)) / Real.log (6 / 5 : ℝ) := by
  have hC0 : 0 < C := lt_of_lt_of_le zero_lt_one hC
  have hbase : (1 : ℝ) ≤ (N : ℝ) + 2 := by linarith [Nat.cast_nonneg (α := ℝ) N]
  have hpow : (1 : ℝ) ≤ ((N : ℝ) + 2) ^ d := one_le_pow₀ hbase
  have hM : (1 : ℝ) ≤ C * ((N : ℝ) + 2) ^ d := by
    simpa only [one_mul] using mul_le_mul hC hpow zero_le_one hC0.le
  have hb := bandMass_le_of_circle_bound N hN (C * ((N : ℝ) + 2) ^ d) hM hp hm
  have he : Real.log (4 * (C * ((N : ℝ) + 2) ^ d)) =
      Real.log (4 * C) + (d : ℝ) * Real.log ((N : ℝ) + 2) := by
    rw [← mul_assoc, Real.log_mul (by positivity) (by positivity), Real.log_pow]
  simpa only [he] using hb

/-- The maintained selection receives the count estimate without a new zero family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/AnchoredLocalJensen.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0597066244f0ecde390467f535b4c76acb9be81` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

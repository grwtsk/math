# fourier_periodFourX_lattice_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05c68d0b-c608-447e-6802-c6d30071d688",
  "kind": "theorem",
  "lexical_name": "fourier_periodFourX_lattice_eq_pow",
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
  "slug": "fourier-periodfourx-lattice-eq-pow--50609ff7ed7808742b90703e",
  "source": {
    "blob": "a82c9eaacd10878a14fb5c3eccf9247dce4b1aa3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 62,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50609ff7ed7808742b90703e68e4a7b79b5b6ffc6d633cb8a143da16364b4b81",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05c68d0b-c608-447e-6802-c6d30071d688`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourier_periodFourX_lattice_eq_pow
    {X : ℕ} (hX : 0 < X)
    (k : ℤ) (r : ℕ) :
    fourier k
        ((((r : ℝ) /
          ((fejerOctavePeriod X : ℕ) : ℝ))) :
          AddCircle (1 : ℝ)) =
      (periodFourXModeRatio X k) ^ r := by
  rw [fourier_coe_apply]
  unfold periodFourXModeRatio
  rw [← Complex.exp_nat_mul]
  have hLc : ((fejerOctavePeriod X : ℕ) : ℂ) ≠ 0 := by
    unfold fejerOctavePeriod
    exact_mod_cast (by omega : (4 * X : ℕ) ≠ 0)
  congr 1
  push_cast
  field_simp [hLc]
  ring

/-- Every nonzero Fourier index in Icc(-N,N) remains nonzero modulo 4X when
N < 4X. This covers the formal endpoint frequencies ±N as well. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFiniteOrthogonality.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a82c9eaacd10878a14fb5c3eccf9247dce4b1aa3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

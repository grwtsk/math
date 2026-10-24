# norm_moebius_laplace_term_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f7402ade-36cd-2316-25fd-d9089e07e549",
  "kind": "theorem",
  "lexical_name": "norm_moebius_laplace_term_le",
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
  "slug": "norm-moebius-laplace-term-le--6b76c493e86db21ed9ae6505",
  "source": {
    "blob": "bf694380e233e32eeb49979931e72540d598cfbb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 73,
    "path": "GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b76c493e86db21ed9ae6505c3063a9670c87db393d5fd22c8cfcdf669acedd7",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7402ade-36cd-2316-25fd-d9089e07e549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_moebius_laplace_term_le {n : ℕ} (hn : 1 ≤ n) (z : ℂ) (t : ℝ) :
    ‖moebiusLaplaceTerm n z t‖ ≤ atomMajorant n z.re t := by
  rcases lt_trichotomy t (Real.log (n : ℝ)) with before | touching | after
  · rw [show moebiusLaplaceTerm n z t = 0 by
      simp [moebiusLaplaceTerm, laplaceResponse,
        response_of_not_arrived (not_le.mpr before)]]
    simp [atomMajorant, Set.indicator, not_lt.mpr before.le]
  · subst t
    simp [moebiusLaplaceTerm, laplaceResponse, response_touching_atom_zero hn,
      atomMajorant]
  · have normIdentity : ‖moebiusLaplaceTerm n z t‖ =
        |moebiusCoefficient n| * (Real.exp (-z.re * t) * response n t) := by
      simp [moebiusLaplaceTerm, laplaceResponse, Complex.norm_exp,
        Complex.norm_real, Real.norm_of_nonneg (response_nonnegative hn t)]
    rw [normIdentity]
    simp only [atomMajorant, Set.indicator, Set.mem_Ioi, if_pos after]
    calc
      _ ≤ 1 * (Real.exp (-z.re * t) * response n t) :=
        mul_le_mul_of_nonneg_right (moebius_coefficient_abs_le_one n)
          (mul_nonneg (Real.exp_pos _).le (response_nonnegative hn t))
      _ ≤ 2 * atomInverseHalf n * Real.exp (-z.re * t) := by
        have h := mul_le_mul_of_nonneg_left (response_upper hn t)
          (Real.exp_pos (-z.re * t)).le
        simpa only [one_mul, mul_comm, mul_left_comm, mul_assoc] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf694380e233e32eeb49979931e72540d598cfbb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

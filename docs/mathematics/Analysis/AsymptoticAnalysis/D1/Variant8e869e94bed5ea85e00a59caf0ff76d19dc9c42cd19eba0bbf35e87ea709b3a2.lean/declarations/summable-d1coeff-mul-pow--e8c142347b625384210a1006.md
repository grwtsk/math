# summable_D1coeff_mul_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:641ca2ea-d5a0-cc0e-9fdb-4c19f707b850",
  "kind": "theorem",
  "lexical_name": "summable_D1coeff_mul_pow",
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
  "slug": "summable-d1coeff-mul-pow--e8c142347b625384210a1006",
  "source": {
    "blob": "036f84b7cb8355e2f941db818033eff3ba55d236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 142,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8c142347b625384210a1006ef313305987c2170a36c893c14c7e06cf573b321",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:641ca2ea-d5a0-cc0e-9fdb-4c19f707b850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_D1coeff_mul_pow (R : ℝ) : Summable (fun k => D1coeff k * R ^ (2 * k + 3)) := by
  have hexp : Summable (fun n : ℕ => (4 * R ^ 2) ^ n / (Nat.factorial n : ℝ)) :=
    Real.summable_pow_div_factorial (4 * R ^ 2)
  have hexp1 : Summable (fun k : ℕ => (4 * R ^ 2) ^ (k + 1) / (Nat.factorial (k + 1) : ℝ)) :=
    (summable_nat_add_iff 1).mpr hexp
  have hg : Summable (fun k : ℕ => 2 * |R| * ((4 * R ^ 2) ^ (k + 1) / (Nat.factorial (k + 1) : ℝ))) :=
    hexp1.mul_left _
  refine Summable.of_norm_bounded hg fun k => ?_
  rw [Real.norm_eq_abs, abs_mul, abs_of_pos (D1coeff_pos k), abs_pow]
  have hpow : |R| ^ (2 * k + 3) = |R| * (R ^ 2) ^ (k + 1) := by
    rw [← sq_abs R, ← pow_mul]
    ring
  rw [hpow]
  have hfac : (0 : ℝ) < Nat.factorial (k + 1) := by positivity
  calc D1coeff k * (|R| * (R ^ 2) ^ (k + 1))
      ≤ (2 * 4 ^ (k + 1) / (Nat.factorial (k + 1) : ℝ)) * (|R| * (R ^ 2) ^ (k + 1)) :=
        mul_le_mul_of_nonneg_right (D1coeff_le k) (by positivity)
    _ = 2 * |R| * ((4 * R ^ 2) ^ (k + 1) / (Nat.factorial (k + 1) : ℝ)) := by
        rw [mul_pow]; field_simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f84b7cb8355e2f941db818033eff3ba55d236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

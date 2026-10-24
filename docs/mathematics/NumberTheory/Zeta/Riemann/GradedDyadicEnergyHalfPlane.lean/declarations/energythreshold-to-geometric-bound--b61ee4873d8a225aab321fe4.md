# energyThreshold_to_geometric_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e7d04f9-410a-9199-5b94-0189797b9ef1",
  "kind": "theorem",
  "lexical_name": "energyThreshold_to_geometric_bound",
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
  "slug": "energythreshold-to-geometric-bound--b61ee4873d8a225aab321fe4",
  "source": {
    "blob": "2f36b892e40998d0c900fb474617b9677ae19e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 133,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b61ee4873d8a225aab321fe4a978d741448c9fb902364c31b1088d70cd90a999",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e7d04f9-410a-9199-5b94-0189797b9ef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem energyThreshold_to_geometric_bound
    {X : ℕ} (hX : 0 < X)
    {s : ℂ} {ρ σ η C M : ℝ}
    (hC : 0 ≤ C) (hM : 0 ≤ M)
    (hs : ‖s‖ ≤ M) (hσ : σ ≤ s.re)
    (hE : augmentedEnergy X ≤
      C * Real.exp
        ((-2 * (1 - ρ) + η) * Real.log X)) :
    ‖dirichletBlock X s‖ ≤
      (Real.sqrt C * Real.sqrt (radiusBudget M)) *
        Real.exp
          (-(σ - ρ - η / 2) * Real.log X) := by
  have hlog : 0 ≤ Real.log (X : ℝ) :=
    Real.log_nonneg (by exact_mod_cast hX)
  let q : ℝ :=
    (-(1 - ρ) + η / 2) * Real.log X
  have hexpsq :
      (Real.exp q)^2 =
        Real.exp
          ((-2 * (1 - ρ) + η) * Real.log X) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    dsimp [q]
    ring
  have hsqrt :
      Real.sqrt (augmentedEnergy X) ≤
        Real.sqrt C * Real.exp q := by
    have hsq := Real.sq_sqrt (augmentedEnergy_nonneg X)
    have hrootsq :
        (Real.sqrt C * Real.exp q)^2 =
          C * Real.exp
            ((-2 * (1 - ρ) + η) * Real.log X) := by
      rw [mul_pow, Real.sq_sqrt hC, hexpsq]
    have hp : 0 ≤ Real.sqrt C * Real.exp q := by positivity
    nlinarith [Real.sqrt_nonneg (augmentedEnergy X)]
  have hexp :
      Real.exp ((1 - s.re) * Real.log X) ≤
        Real.exp ((1 - σ) * Real.log X) := by
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonneg_right (by linarith) hlog
  calc
    ‖dirichletBlock X s‖
        ≤ Real.exp ((1 - s.re) * Real.log X) *
            (Real.sqrt (augmentedEnergy X) *
              Real.sqrt (radiusBudget M)) :=
      dirichletBlock_norm_bound hX hM hs
    _ ≤ Real.exp ((1 - σ) * Real.log X) *
        ((Real.sqrt C * Real.exp q) *
          Real.sqrt (radiusBudget M)) := by
      exact mul_le_mul hexp
        (mul_le_mul_of_nonneg_right hsqrt
          (Real.sqrt_nonneg _))
        (by positivity)
        (Real.exp_pos _).le
    _ = _ := by
      calc
        _ =
          (Real.sqrt C * Real.sqrt (radiusBudget M)) *
            (Real.exp ((1 - σ) * Real.log X) *
              Real.exp q) := by ring
        _ = _ := by
          rw [← Real.exp_add]
          congr 2
          dsimp [q]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f36b892e40998d0c900fb474617b9677ae19e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

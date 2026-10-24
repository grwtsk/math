# pickupTriangle_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cada9318-3aa9-7574-e6b8-54cb1a323c25",
  "kind": "theorem",
  "lexical_name": "pickupTriangle_integrable",
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
  "slug": "pickuptriangle-integrable--a114762c649e3beee4f53604",
  "source": {
    "blob": "a3bc2e035926b4bcec8faff5f06a23eebb11a38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 143,
    "path": "GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a114762c649e3beee4f5360444c6bc9a30ce7f1608f19a1f4c4022efba3b1fee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cada9318-3aa9-7574-e6b8-54cb1a323c25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupTriangle_integrable {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    Integrable (pickupTriangle z)
      ((volume.restrict (Ioi (0 : ℝ))).prod (volume.restrict (Ioi (0 : ℝ)))) := by
  let ε : ℝ := (z.re - 1 / 2) / 2
  have hε : 0 < ε := by dsimp [ε]; linarith
  have heq : z.re = 1 / 2 + 2 * ε := by dsimp [ε]; ring
  have ht := integrableOn_exp_mul_Ioi (a := -ε) (by linarith) 0
  apply (ht.mul_prod ht).mono' (pickupTriangle_measurable z).aestronglyMeasurable
  apply ae_of_all
  intro p
  by_cases hp : p.2 ≤ p.1
  · have hp' : p ∈ {p : ℝ × ℝ | p.2 ≤ p.1} := hp
    rw [pickupTriangle, Set.indicator_of_mem hp']
    calc
      ‖Complex.exp (-z * p.1) * (pickupVelocity p.2 : ℂ)‖ =
          Real.exp (-z.re * p.1) * |pickupVelocity p.2| := by
        simp [Complex.norm_exp, Complex.mul_re, Complex.norm_real, Real.norm_eq_abs]
      _ ≤ Real.exp (-z.re * p.1) * Real.exp (p.2 / 2) :=
        mul_le_mul_of_nonneg_left (pickupVelocity_abs_le p.2) (Real.exp_pos _).le
      _ ≤ Real.exp (-ε * p.1) * Real.exp (-ε * p.2) := by
        rw [← Real.exp_add, ← Real.exp_add]
        apply Real.exp_le_exp.mpr
        have hm : 0 ≤ (1 / 2 + ε) * (p.1 - p.2) :=
          mul_nonneg (by linarith) (sub_nonneg.mpr hp)
        rw [heq]
        nlinarith
  · have hp' : p ∉ {p : ℝ × ℝ | p.2 ≤ p.1} := hp
    rw [pickupTriangle, Set.indicator_of_notMem hp', norm_zero]
    positivity

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/DirichletLaplaceIdentity.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3bc2e035926b4bcec8faff5f06a23eebb11a38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

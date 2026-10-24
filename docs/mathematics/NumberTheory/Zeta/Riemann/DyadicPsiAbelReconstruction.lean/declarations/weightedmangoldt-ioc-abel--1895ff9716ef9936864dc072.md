# weightedMangoldt_Ioc_abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:11886b1e-7ec6-f993-3b02-c18601b8916e",
  "kind": "theorem",
  "lexical_name": "weightedMangoldt_Ioc_abel",
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
  "slug": "weightedmangoldt-ioc-abel--1895ff9716ef9936864dc072",
  "source": {
    "blob": "9d0848b6c414d19057d9738771f5225587186cd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 48,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1895ff9716ef9936864dc0722d563bd94762f375fb51a70e0e4dd17c798b355f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11886b1e-7ec6-f993-3b02-c18601b8916e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedMangoldt_Ioc_abel
    {X Y : ℕ} (hX : 2 ≤ X) (hXY : X ≤ Y) :
    (∑ n ∈ Finset.Ioc X Y, coefficient n) =
      ψ (Y : ℝ) / (Y : ℝ) -
        ψ (X : ℝ) / (X : ℝ) +
        ∫ u in (X : ℝ)..(Y : ℝ), ψ u / u^2 := by
  let f : ℝ → ℝ := fun u => u⁻¹
  have hdiff :
      ∀ u ∈ Set.Icc (X : ℝ) (Y : ℝ), DifferentiableAt ℝ f u := by
    intro u hu
    dsimp [f]
    have hXp : (0 : ℝ) < X := by exact_mod_cast (show 0 < X by omega)
    exact differentiableAt_inv (ne_of_gt (hXp.trans_le hu.1))
  have hint :
      IntegrableOn (deriv f) (Set.Icc (X : ℝ) (Y : ℝ)) := by
    have hcont :
        ContinuousOn (fun u : ℝ => -(u^2)⁻¹)
          (Set.Icc (X : ℝ) (Y : ℝ)) := by
      apply ContinuousOn.neg
      apply ContinuousOn.inv₀ (continuousOn_id.pow 2)
      intro u hu
      apply pow_ne_zero
      have : (0 : ℝ) < X := by exact_mod_cast (show 0 < X by omega)
      exact ne_of_gt (this.trans_le hu.1)
    exact hcont.integrableOn_Icc.congr_fun (by intro u hu; simp [f, deriv_inv]) measurableSet_Icc
  have h :=
    sum_mul_eq_sub_sub_integral_mul'
      (c := fun n => mangoldt n) hXY hdiff hint
  rw [← intervalIntegral.integral_of_le (by exact_mod_cast hXY)] at h
  simpa [f, coefficient, mangoldt, Chebyshev.psi_eq_sum_Icc, deriv_inv,
    div_eq_mul_inv, mul_comm, mul_left_comm, mul_assoc] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicPsiAbelReconstruction.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d0848b6c414d19057d9738771f5225587186cd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

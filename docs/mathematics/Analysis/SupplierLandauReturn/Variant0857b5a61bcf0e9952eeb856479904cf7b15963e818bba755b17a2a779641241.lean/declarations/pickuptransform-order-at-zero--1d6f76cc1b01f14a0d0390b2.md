# pickupTransform_order_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d259415-80a2-10f6-ca5a-34fc4213e41b",
  "kind": "theorem",
  "lexical_name": "pickupTransform_order_at_zero",
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
  "slug": "pickuptransform-order-at-zero--1d6f76cc1b01f14a0d0390b2",
  "source": {
    "blob": "1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 119,
    "path": "GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d6f76cc1b01f14a0d0390b2d1ae9e976162d76aefadf61e0caa341c9480e413",
  "verification": {
    "reference": "docs/verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d259415-80a2-10f6-ca5a-34fc4213e41b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupTransform_order_at_zero
    {ρ : ℂ} (hρ : NontrivialZetaZero ρ) (hr : 1 / 2 < ρ.re) :
    meromorphicOrderAt pickupTransform (ρ - 1 / 2) =
      -((analyticOrderNatAt riemannZeta ρ : ℤ) : WithTop ℤ) := by
  have hc : ρ - (1 / 2 : ℂ) ≠ 0 := by
    intro h
    have hh := congrArg Complex.re h
    norm_num at hh
    linarith
  have hρ0 : ρ ≠ 0 := hρ.ne_zero
  have hg : AnalyticAt ℂ (fun z : ℂ ↦ z * (z + 1 / 2)) (ρ - 1 / 2) := by
    fun_prop
  have hgne : (ρ - 1 / 2) * ((ρ - 1 / 2) + 1 / 2) ≠ 0 := by
    simpa only [sub_add_cancel] using mul_ne_zero hc hρ0
  have horder :
      meromorphicOrderAt (fun z : ℂ ↦ z * (z + 1 / 2) * riemannZeta (z + 1 / 2))
          (ρ - 1 / 2) =
        ((analyticOrderNatAt riemannZeta ρ : ℤ) : WithTop ℤ) := by
    calc
      _ = meromorphicOrderAt (fun z : ℂ ↦ riemannZeta (z + 1 / 2)) (ρ - 1 / 2) :=
        meromorphicOrderAt_mul_of_ne_zero hg hgne
      _ = meromorphicOrderAt riemannZeta ρ := by
        simpa only [sub_add_cancel] using
          (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
            (f := riemannZeta) (x := ρ - 1 / 2) (c := 1 / 2))
      _ = ((analyticOrderNatAt riemannZeta ρ : ℤ) : WithTop ℤ) := by
        rw [(analyticOn_riemannZeta ρ hρ.2.2).meromorphicOrderAt_eq,
          ← Nat.cast_analyticOrderNatAt (zeta_order_finite hρ.2.2)]
        simp
  have hfun : pickupTransform =
      (fun z : ℂ ↦ (z * (z + 1 / 2) * riemannZeta (z + 1 / 2))⁻¹) := by
    funext z
    simp only [pickupTransform, one_div]
  rw [hfun]
  change meromorphicOrderAt
      ((fun z : ℂ ↦ z * (z + 1 / 2) * riemannZeta (z + 1 / 2))⁻¹)
      (ρ - 1 / 2) = _
  rw [meromorphicOrderAt_inv, horder]

/-- Normalization at the zeta pole does not change a nontrivial-zero germ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SupplierLandauReturn/Variant0857b5a61bcf0e9952eeb856479904cf7b15963e818bba755b17a2a779641241.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ba8dd9c2c9e3dff8a6985c04a7a77bb9428ca57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

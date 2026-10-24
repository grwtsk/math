# pickup_laplace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4390c753-2c47-736e-c289-8638b771e9cb",
  "kind": "theorem",
  "lexical_name": "pickup_laplace",
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
  "slug": "pickup-laplace--f84b3cef3ed08a590c8478e8",
  "source": {
    "blob": "ee5f8f7b558558efc67fb6d3ed965de56892e501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 203,
    "path": "GRWTSK/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f84b3cef3ed08a590c8478e8ef7362a33df35d6d1946c6310ce45a5f692c342d",
  "verification": {
    "reference": "docs/verification/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4390c753-2c47-736e-c289-8638b771e9cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_laplace {z : ℂ} (hz : (1 / 2 : ℝ) < z.re) :
    (∫ t in Ioi (0 : ℝ), Complex.exp (-z * t) * (pickup t : ℂ)) =
      1 / (z * (z + 1 / 2) * riemannZeta (z + 1 / 2)) := by
  have hs := integral_integral_swap (f := fun t u : ℝ => pickupTriangle z (t, u))
    (pickupTriangle_integrable hz)
  change (∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
    (∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) at hs
  have hleft : (∫ t in Ioi (0 : ℝ), ∫ u in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      (∫ t in Ioi (0 : ℝ), Complex.exp (-z * t) * (pickup t : ℂ)) :=
    setIntegral_congr_fun measurableSet_Ioi (fun t ht => pickupTriangle_time_integral z t ht)
  have hright : (∫ u in Ioi (0 : ℝ), ∫ t in Ioi (0 : ℝ), pickupTriangle z (t, u)) =
      z⁻¹ * (∫ u in Ioi (0 : ℝ), Complex.exp (-z * u) * (pickupDensity u : ℂ)) := by
    rw [← integral_const_mul]
    exact setIntegral_congr_fun measurableSet_Ioi
      (fun u hu => pickupTriangle_density_integral hz u hu)
  rw [hleft, hright, pickupDensity_laplace hz] at hs
  exact hs.trans (by simp [div_eq_mul_inv, mul_inv_rev, mul_comm, mul_left_comm])

end FormalResearch.RiemannHypothesis.Conversation.SupplierInitialTransform
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/SupplierInitialTransform/Variant5ab83a4e0d6c38fe8da5acf8651a0cb978d63b8248838756a31bbd365754529d.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee5f8f7b558558efc67fb6d3ed965de56892e501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

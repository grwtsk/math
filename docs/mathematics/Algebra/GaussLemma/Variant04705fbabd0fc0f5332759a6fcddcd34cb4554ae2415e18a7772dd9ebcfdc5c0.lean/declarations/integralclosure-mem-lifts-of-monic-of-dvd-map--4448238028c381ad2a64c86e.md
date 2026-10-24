# integralClosure.mem_lifts_of_monic_of_dvd_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf6e4f9e-724d-ca80-9ed6-b055409657db",
  "kind": "theorem",
  "lexical_name": "integralClosure.mem_lifts_of_monic_of_dvd_map",
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
  "slug": "integralclosure-mem-lifts-of-monic-of-dvd-map--4448238028c381ad2a64c86e",
  "source": {
    "blob": "c2d0fb579acaad2a9f9ca13a1ec38d477d798578",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 62,
    "path": "GRWTSK/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4448238028c381ad2a64c86e9accc6785a28d593656352787daeb3c4d94b1819",
  "verification": {
    "reference": "docs/verification/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf6e4f9e-724d-ca80-9ed6-b055409657db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integralClosure.mem_lifts_of_monic_of_dvd_map {f : R[X]} (hf : f.Monic) {g : K[X]}
    (hg : g.Monic) (hd : g ∣ f.map (algebraMap R K)) :
    g ∈ lifts (algebraMap (integralClosure R K) K) := by
  have := mem_lift_of_splits_of_roots_mem_range (integralClosure R g.SplittingField)
    ((splits_id_iff_splits _).2 <| SplittingField.splits g) (hg.map _) fun a ha =>
      (SetLike.ext_iff.mp (integralClosure R g.SplittingField).range_algebraMap _).mpr <|
        roots_mem_integralClosure hf ?_
  · rw [lifts_iff_coeff_lifts, ← RingHom.coe_range, Subalgebra.range_algebraMap] at this
    refine' (lifts_iff_coeff_lifts _).2 fun n => _
    rw [← RingHom.coe_range, Subalgebra.range_algebraMap]
    obtain ⟨p, hp, he⟩ := SetLike.mem_coe.mp (this n); use p, hp
    rw [IsScalarTower.algebraMap_eq R K, coeff_map, ← eval₂_map, eval₂_at_apply] at he
    rw [eval₂_eq_eval_map]; apply (injective_iff_map_eq_zero _).1 _ _ he
    · apply RingHom.injective
  rw [IsScalarTower.algebraMap_eq R K _, ← map_map]
  refine' Multiset.mem_of_le (roots.le_of_dvd ((hf.map _).map _).ne_zero _) ha
  exact map_dvd (algebraMap K g.SplittingField) hd
#align integral_closure.mem_lifts_of_monic_of_dvd_map integralClosure.mem_lifts_of_monic_of_dvd_map

variable [IsDomain R] [IsFractionRing R K]

/-- If `K = Frac(R)` and `g : K[X]` divides a monic polynomial with coefficients in `R`, then
    `g * (C g.leadingCoeff⁻¹)` has coefficients in `R` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GaussLemma/Variant04705fbabd0fc0f5332759a6fcddcd34cb4554ae2415e18a7772dd9ebcfdc5c0.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2d0fb579acaad2a9f9ca13a1ec38d477d798578` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

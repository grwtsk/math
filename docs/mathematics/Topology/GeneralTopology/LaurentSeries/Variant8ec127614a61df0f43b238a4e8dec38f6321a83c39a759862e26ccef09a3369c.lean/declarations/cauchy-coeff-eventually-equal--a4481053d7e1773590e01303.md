# Cauchy.coeff_eventually_equal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0e382bb-0678-caf4-c1ab-2e67122e465e",
  "kind": "theorem",
  "lexical_name": "Cauchy.coeff_eventually_equal",
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
  "slug": "cauchy-coeff-eventually-equal--a4481053d7e1773590e01303",
  "source": {
    "blob": "9c5f98b1cf2470ff5595b1cc5786a8f0b072677b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 862,
    "line": 826,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4481053d7e1773590e01303167012fa4c024bfe193d9db33cc2786509301f3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0e382bb-0678-caf4-c1ab-2e67122e465e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 826–862.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cauchy.coeff_eventually_equal {ℱ : Filter K⸨X⸩} (hℱ : Cauchy ℱ) {D : ℤ} :
    ∀ᶠ f : K⸨X⸩ in ℱ, ∀ d, d < D → coeff hℱ d = f.coeff d := by
  -- `φ` sends `d` to the set of Laurent Series having `d`th coefficient equal to `ℱ.coeff`.
  let φ : ℤ → Set K⸨X⸩ := fun d ↦ {f | coeff hℱ d = f.coeff d}
  have intersec₁ :
    (⋂ n ∈ Set.Iio D, φ n) ⊆ {x : K⸨X⸩ | ∀ d : ℤ, d < D → coeff hℱ d = x.coeff d} := by
    intro _ hf
    simpa only [Set.mem_iInter] using hf
  -- The goal is now to show that the intersection of all `φ d` (for `d < D`) is in `ℱ`.
  let ℓ := (exists_lb_coeff_ne hℱ).choose
  let N := max ℓ D
  have intersec₂ : ⋂ n ∈ Set.Iio D, φ n ⊇ (⋂ n ∈ Set.Iio ℓ, φ n) ∩ (⋂ n ∈ Set.Icc ℓ N, φ n) := by
    simp only [Set.mem_Iio, Set.mem_Icc, Set.subset_iInter_iff]
    intro i hi x hx
    simp only [Set.mem_inter_iff, Set.mem_iInter, and_imp] at hx
    by_cases H : i < ℓ
    exacts [hx.1 _ H, hx.2 _ (le_of_not_lt H) <| le_of_lt <| lt_max_of_lt_right hi]
  suffices (⋂ n ∈ Set.Iio ℓ, φ n) ∩ (⋂ n ∈ Set.Icc ℓ N, φ n) ∈ ℱ by
    exact ℱ.sets_of_superset this <| intersec₂.trans intersec₁
  /- To show that the intersection we have in sight is in `ℱ`, we use that it contains a double
  intersection (an infinite and a finite one): by general properties of filters, we are reduced
  to show that both terms are in `ℱ`, which is easy in light of their definition. -/
  · simp only [Set.mem_Iio, Set.mem_Ico, inter_mem_iff]
    constructor
    · have := (exists_lb_coeff_ne hℱ).choose_spec
      rw [Filter.eventually_iff] at this
      convert this
      ext
      simp only [Set.mem_iInter, Set.mem_setOf_eq]; rfl
    · rw [biInter_mem (Set.finite_Icc ℓ N)]
      intro _ _
      apply coeff_tendsto hℱ
      simp only [principal_singleton, mem_pure]; rfl

open scoped Topology

/- The main result showing that the Cauchy filter tends to the `Cauchy.limit` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant8ec127614a61df0f43b238a4e8dec38f6321a83c39a759862e26ccef09a3369c.lean#L826).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c5f98b1cf2470ff5595b1cc5786a8f0b072677b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# higherPrimePowerMangoldtWindowMass_le_psi_sub_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67a2b1e6-ec79-708c-18ca-b35c77459219",
  "kind": "theorem",
  "lexical_name": "higherPrimePowerMangoldtWindowMass_le_psi_sub_theta",
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
  "slug": "higherprimepowermangoldtwindowmass-le-psi-sub-theta--037d8997b8ebf2de87cef45b",
  "source": {
    "blob": "fd67f27f123229da4af05b526af8ad5c39554669",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:037d8997b8ebf2de87cef45b41ba9aa910a3403b043c1e977a25ef2b597ced9d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67a2b1e6-ec79-708c-18ca-b35c77459219`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem higherPrimePowerMangoldtWindowMass_le_psi_sub_theta
    (X : ℕ) :
    higherPrimePowerMangoldtWindowMass X ≤
      ψ ((2 * X : ℕ) : ℝ) - θ ((2 * X : ℕ) : ℝ) := by
  have hsub :
      (window X).filter (fun n => ¬ n.Prime) ⊆
        (Finset.Ioc 0 (2 * X)).filter (fun n => ¬ n.Prime) := by
    intro n hn
    have hwin := (Finset.mem_filter.mp hn).1
    have hnp := (Finset.mem_filter.mp hn).2
    exact Finset.mem_filter.mpr
      ⟨Finset.mem_Ioc.mpr
        ⟨Nat.zero_lt_of_lt (window_lower hwin), window_upper hwin⟩,
        hnp⟩
  have hsum :
      higherPrimePowerMangoldtWindowMass X ≤
        ∑ n ∈ (Finset.Ioc 0 (2 * X)).filter (fun n => ¬ n.Prime),
          mangoldt n := by
    unfold higherPrimePowerMangoldtWindowMass
    exact Finset.sum_le_sum_of_subset_of_nonneg hsub
      (fun n hn hnot => by
        unfold mangoldt
        exact ArithmeticFunction.vonMangoldt_nonneg)
  calc
    higherPrimePowerMangoldtWindowMass X
        ≤ ∑ n ∈ (Finset.Ioc 0 (2 * X)).filter (fun n => ¬ n.Prime),
            mangoldt n := hsum
    _ = ψ ((2 * X : ℕ) : ℝ) - θ ((2 * X : ℕ) : ℝ) := by
      rw [Chebyshev.psi_sub_theta_eq_sum_not_prime]
      simp only [mangoldt, Nat.floor_natCast]

/-- Exact square-root source bound inherited from pinned Chebyshev. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/DyadicHigherPrimePowerDFTRemainder.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd67f27f123229da4af05b526af8ad5c39554669` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

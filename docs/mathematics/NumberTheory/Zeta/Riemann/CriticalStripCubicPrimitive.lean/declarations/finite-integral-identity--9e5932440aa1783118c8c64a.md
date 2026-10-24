# finite_integral_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1949365-1830-8a6f-419b-d1419341721d",
  "kind": "lemma",
  "lexical_name": "finite_integral_identity",
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
  "slug": "finite-integral-identity--9e5932440aa1783118c8c64a",
  "source": {
    "blob": "9f8e9045130f5c155966f2e920d03f508ae13011",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 297,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e5932440aa1783118c8c64acc4bd1d288ecceb969828f421d3a75abb2e1fdd4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1949365-1830-8a6f-419b-d1419341721d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 297–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma finite_integral_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    (∫ t : ℝ in (1 : ℝ)..(N : ℝ), adjustedIntegrand s t) =
      (s + 2) * ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t := by
  have hA := adjusted_integrable (T := 1) le_rfl hs
  have hQ := integrand_integrable (T := 1) le_rfl hs
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNN : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ N
    calc
      (∫ t : ℝ in (1 : ℝ)..((N + 1 : ℕ) : ℝ), adjustedIntegrand s t) =
          (∫ t : ℝ in (1 : ℝ)..(N : ℝ), adjustedIntegrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), adjustedIntegrand s t :=
        (intervalIntegral.integral_add_adjacent_intervals
          (QuadraticPrimitive.intervalIntegrable_of_tail hA le_rfl hNR)
          (QuadraticPrimitive.intervalIntegrable_of_tail hA hNR hNN)).symm
      _ = (s + 2) * ((∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), integrand s t) := by
        rw [ih, cell_integral_identity hN hs]; ring
      _ = _ := by rw [intervalIntegral.integral_add_adjacent_intervals
        (QuadraticPrimitive.intervalIntegrable_of_tail hQ le_rfl hNR)
        (QuadraticPrimitive.intervalIntegrable_of_tail hQ hNR hNN)]

/-- Full equality from finite telescoping and independently convergent tails. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCubicPrimitive.lean#L297).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f8e9045130f5c155966f2e920d03f508ae13011` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

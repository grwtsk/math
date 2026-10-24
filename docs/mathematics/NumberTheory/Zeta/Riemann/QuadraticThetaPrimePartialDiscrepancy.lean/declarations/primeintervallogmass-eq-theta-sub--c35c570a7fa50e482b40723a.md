# primeIntervalLogMass_eq_theta_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f08ce4eb-c719-86f0-c7ab-b2c8c44d0610",
  "kind": "theorem",
  "lexical_name": "primeIntervalLogMass_eq_theta_sub",
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
  "slug": "primeintervallogmass-eq-theta-sub--c35c570a7fa50e482b40723a",
  "source": {
    "blob": "da9233bebfd17871dc9b69af072e9108a0904490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 55,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c35c570a7fa50e482b40723a08d908fc1d3e9899a3b0e236eeb60e1b5e93ae5c",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f08ce4eb-c719-86f0-c7ab-b2c8c44d0610`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeIntervalLogMass_eq_theta_sub
    {A B : ℕ} (hAB : A ≤ B) :
    primeIntervalLogMass A B =
      θ (B : ℝ) - θ (A : ℝ) := by
  unfold primeIntervalLogMass Chebyshev.theta
  simp only [floor_natCast]
  have h0A : 0 ≤ A := Nat.zero_le A
  have hunion :
      (Finset.Ioc 0 A).filter Nat.Prime ∪
          (Finset.Ioc A B).filter Nat.Prime =
        (Finset.Ioc 0 B).filter Nat.Prime := by
    rw [← Finset.filter_union,
      Finset.Ioc_union_Ioc_eq_Ioc h0A hAB]
  have hdisjoint :
      Disjoint
        ((Finset.Ioc 0 A).filter Nat.Prime)
        ((Finset.Ioc A B).filter Nat.Prime) := by
    exact
      (Finset.Ioc_disjoint_Ioc_of_le
        (a := 0) (d := B) le_rfl).mono
        (Finset.filter_subset _ _)
        (Finset.filter_subset _ _)
  have hsum :
      (∑ p ∈ (Finset.Ioc 0 A).filter Nat.Prime, Real.log p) +
          (∑ p ∈ (Finset.Ioc A B).filter Nat.Prime, Real.log p) =
        ∑ p ∈ (Finset.Ioc 0 B).filter Nat.Prime, Real.log p := by
    rw [← Finset.sum_union hdisjoint, hunion]
  linarith

/-- Exact theta-error increment equals prime mass minus interval length. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimePartialDiscrepancy.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da9233bebfd17871dc9b69af072e9108a0904490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

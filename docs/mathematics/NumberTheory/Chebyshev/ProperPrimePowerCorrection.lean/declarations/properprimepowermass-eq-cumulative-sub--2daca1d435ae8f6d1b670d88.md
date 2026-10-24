# properPrimePowerMass_eq_cumulative_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:59a048be-5230-cd25-8140-eb0ee958432f",
  "kind": "theorem",
  "lexical_name": "properPrimePowerMass_eq_cumulative_sub",
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
  "slug": "properprimepowermass-eq-cumulative-sub--2daca1d435ae8f6d1b670d88",
  "source": {
    "blob": "f0608838559f5b7cac636f47b233c385eb9d97fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 86,
    "path": "GRWTSK/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2daca1d435ae8f6d1b670d88807b99f91204c36878c790d7b0a8f7a3dbaf73c1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:59a048be-5230-cd25-8140-eb0ee958432f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPrimePowerMass_eq_cumulative_sub (a b : ℕ) (hab : a ≤ b) :
    properPrimePowerMass a b =
      (Chebyshev.psi (b : ℝ) - Chebyshev.theta (b : ℝ)) -
      (Chebyshev.psi (a : ℝ) - Chebyshev.theta (a : ℝ)) := by
  classical
  rw [Chebyshev.psi_sub_theta_eq_sum_not_prime,
    Chebyshev.psi_sub_theta_eq_sum_not_prime]
  simp only [properPrimePowerMass, Nat.floor_natCast, Finset.sum_filter]
  have h := Finset.sum_Ioc_consecutive
    (fun m : ℕ => if ¬ Nat.Prime m then ArithmeticFunction.vonMangoldt m else 0)
    (Nat.zero_le a) hab
  linarith

/-- Exact source = prime-only interval mass + the full proper-prime-power correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0608838559f5b7cac636f47b233c385eb9d97fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

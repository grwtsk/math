# chebyshevPsi_nat_prime_jump

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8817625-9a4a-7146-75ae-07409892bd82",
  "kind": "theorem",
  "lexical_name": "chebyshevPsi_nat_prime_jump",
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
  "slug": "chebyshevpsi-nat-prime-jump--fb463971063d52364c586658",
  "source": {
    "blob": "b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 43,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb463971063d52364c586658e4ebe0ef7a534b91c4061a3dbd1f215d1e0d2eee",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8817625-9a4a-7146-75ae-07409892bd82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chebyshevPsi_nat_prime_jump
    {p : ℕ} (hp : p.Prime) :
    ψ (p : ℝ) - ψ ((p - 1 : ℕ) : ℝ) =
      Real.log (p : ℝ) := by
  have hpred : p - 1 + 1 = p := by
    have := hp.one_le
    omega
  have hset :
      Finset.Ioc 0 p =
        insert p (Finset.Ioc 0 (p - 1)) := by
    have hs :=
      (Finset.insert_Ioc_right_eq_Ioc_succ
        (a := (0 : ℕ)) (b := p - 1)
        (by omega : (0 : ℕ) ≤ p - 1)).symm
    simpa [hpred] using hs
  have hnot : p ∉ Finset.Ioc 0 (p - 1) := by
    simp only [Finset.mem_Ioc]
    omega
  unfold Chebyshev.psi
  simp only [Nat.floor_natCast]
  rw [hset, Finset.sum_insert hnot]
  rw [ArithmeticFunction.vonMangoldt_apply_prime hp]
  ring

/-- Subtracting the consecutive integer arguments changes the psi jump
by exactly one. The -1 must not be attached to Lambda(p). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

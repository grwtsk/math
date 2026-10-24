# unboundedAdjacentPsiJump_of_bertrand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d1d1776-5428-b668-15ea-9072f6cb7c6f",
  "kind": "theorem",
  "lexical_name": "unboundedAdjacentPsiJump_of_bertrand",
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
  "slug": "unboundedadjacentpsijump-of-bertrand--08c746a79783953dc63d278f",
  "source": {
    "blob": "b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08c746a79783953dc63d278fa639f0e6c3630fd9339f8035b873d5556bb877bb",
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

Occurrence: `result:5d1d1776-5428-b668-15ea-9072f6cb7c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unboundedAdjacentPsiJump_of_bertrand :
    UnboundedAdjacentPsiJump := by
  intro D j₀
  obtain ⟨j, hj, p, hp, hlow, hhigh, hlog⟩ :=
    exists_dyadic_bertrandPrime_log_gt (2 * D + 1) j₀
  let m : ℕ := p - 1
  have hpred : m + 1 = p := by
    dsimp [m]
    have := hp.one_le
    omega
  have hmlow : 2 * dyadicScale j ≤ m := by
    dsimp [m]
    omega
  have hmhigh : m + 1 ≤ 4 * dyadicScale j := by
    rw [hpred]
    exact hhigh
  have hjump :
      2 * D <
        psiError ((m + 1 : ℕ) : ℝ) -
          psiError (m : ℝ) := by
    rw [hpred]
    dsimp [m]
    rw [psiError_nat_prime_jump hp]
    linarith
  refine ⟨j, hj, m, hmlow, hmhigh, ?_⟩
  exact hjump.trans_le (le_abs_self _)

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/PinnedPrimeWeightUnboundedPrimeJump.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7bc717e32b7cdfaff56d5258e6c98093ed9f9ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

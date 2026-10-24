# sourcePrimePrefix_eq_theta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1146b1e2-15e2-81d7-bfa1-02d607c4a469",
  "kind": "theorem",
  "lexical_name": "sourcePrimePrefix_eq_theta",
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
  "slug": "sourceprimeprefix-eq-theta--27e564513b0565bd77f29a76",
  "source": {
    "blob": "a5519e889510ec94c21d6792e35e1d4828337f8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27e564513b0565bd77f29a765afe1f8ea3abebf7baf2a9df1c9c6f16287b8a04",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1146b1e2-15e2-81d7-bfa1-02d607c4a469`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePrimePrefix_eq_theta (x : ℝ) :
    sourcePrimePrefix x = Chebyshev.theta x := by
  rw [sourcePrimePrefix, Chebyshev.theta_eq_sum_Icc]
  calc
    _ = ∑ n ∈ (Finset.Icc 2 ⌊x⌋₊).filter Nat.Prime, Real.log (n : ℝ) := by
      apply Finset.sum_congr rfl
      intro n hn
      exact ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hn).2
    _ = _ := by
      apply Finset.sum_subset
      · intro n hn
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨Nat.zero_le n, (Finset.mem_Icc.mp hn).2⟩, hp⟩
      · intro n hn hn'
        obtain ⟨hn, hp⟩ := Finset.mem_filter.mp hn
        exact False.elim (hn' (Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr
          ⟨hp.two_le, (Finset.mem_Icc.mp hn).2⟩, hp⟩))

/-- The actual prime prefix error in logarithmic coordinates, with its centering retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ThetaErrorMoments/Variant3c353cbb2a46e98e3265a9c70896d55555b7bf681c7df95e040a12e32afc4fb6.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a5519e889510ec94c21d6792e35e1d4828337f8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

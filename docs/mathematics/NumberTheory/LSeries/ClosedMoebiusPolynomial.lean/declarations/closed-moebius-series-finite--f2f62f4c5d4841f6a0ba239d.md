# closed_moebius_series_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cb23e6d-ab14-d3d3-048a-c298e00dba8e",
  "kind": "theorem",
  "lexical_name": "closed_moebius_series_finite",
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
  "slug": "closed-moebius-series-finite--f2f62f4c5d4841f6a0ba239d",
  "source": {
    "blob": "0c3a3052330aeaac88775840489ff6922f8c2958",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 44,
    "line": 20,
    "path": "GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f62f4c5d4841f6a0ba239dcede99e96bfad5eac46600a8b203d4e80ddef727",
  "verification": {
    "reference": "docs/verification/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cb23e6d-ab14-d3d3-048a-c298e00dba8e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–44.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closed_moebius_series_finite (U : ℕ) (s : ℂ) :
    closedMoebiusSeries U s =
      ∑ n ∈ Finset.Icc 1 U, (μ n : ℂ) / (n : ℂ) ^ s := by
  have hsupport : ∀ n ∉ Finset.Icc 1 U,
      LSeries.term (closedArithmeticCutoff (μ : ArithmeticFunction ℂ) U) s n = 0 := by
    intro n hn
    by_cases h0 : n = 0
    · subst n
      exact LSeries.term_zero _ _
    · have hnU : ¬n ≤ U := by
        intro h
        exact hn (Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr h0, h⟩)
      rw [LSeries.term_of_ne_zero h0]
      change (if n ≤ U then (μ n : ℂ) else 0) / (n : ℂ) ^ s = 0
      simp [hnU]
  unfold closedMoebiusSeries LSeries
  rw [tsum_eq_sum hsupport]
  apply Finset.sum_congr rfl
  intro n hn
  obtain ⟨hn1, hnU⟩ := Finset.mem_Icc.mp hn
  rw [LSeries.term_of_ne_zero (Nat.ne_zero_of_lt hn1)]
  change (if n ≤ U then (μ n : ℂ) else 0) / (n : ℂ) ^ s = _
  simp [hnU]

/-- Exponential form with the complex logarithm of each positive integer base. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LSeries/ClosedMoebiusPolynomial.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c3a3052330aeaac88775840489ff6922f8c2958` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

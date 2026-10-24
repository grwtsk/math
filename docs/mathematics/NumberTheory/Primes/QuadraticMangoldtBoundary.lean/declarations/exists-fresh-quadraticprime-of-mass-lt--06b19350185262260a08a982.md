# exists_fresh_quadraticPrime_of_mass_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:03a697ec-02e9-deb2-d7d3-c440dd5d0a76",
  "kind": "theorem",
  "lexical_name": "exists_fresh_quadraticPrime_of_mass_lt",
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
  "slug": "exists-fresh-quadraticprime-of-mass-lt--06b19350185262260a08a982",
  "source": {
    "blob": "0a5afbdd1849db36b31d7a3b8589bb1fbf01e4c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Primes/QuadraticMangoldtBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06b19350185262260a08a98201258c11f094347a52f9009c5d78f1ca9271037a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:03a697ec-02e9-deb2-d7d3-c440dd5d0a76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_fresh_quadraticPrime_of_mass_lt {B X : ℕ} (hBX : B ≤ X)
    (hmass : quadraticPrimeLogMass B < quadraticPrimeLogMass X) :
    ∃ n : ℕ, B < n ∧ n ≤ X ∧ 1 ≤ n ∧ Nat.Prime (n ^ 2 + 1) := by
  by_contra hnone
  have hsubset : Finset.Icc 1 B ⊆ Finset.Icc 1 X := by
    intro n hn
    exact Finset.mem_Icc.mpr ⟨(Finset.mem_Icc.mp hn).1,
      (Finset.mem_Icc.mp hn).2.trans hBX⟩
  have heq : quadraticPrimeLogMass B = quadraticPrimeLogMass X := by
    unfold quadraticPrimeLogMass
    apply Finset.sum_subset hsubset
    intro n hn hnB
    have hn1 : 1 ≤ n := (Finset.mem_Icc.mp hn).1
    have hnX : n ≤ X := (Finset.mem_Icc.mp hn).2
    have hBn : B < n := by
      simp only [Finset.mem_Icc, hn1, true_and] at hnB
      omega
    have hp : ¬ Nat.Prime (n ^ 2 + 1) := by
      intro hprime
      exact hnone ⟨n, hBn, hnX, hn1, hprime⟩
    simp [quadraticPrimeLogWeight, hp]
  linarith

/-- The fresh-index margin pays the entire old prime mass as well as the
complete proper-power correction. Equality does not suffice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/QuadraticMangoldtBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/QuadraticMangoldtBoundary.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5afbdd1849db36b31d7a3b8589bb1fbf01e4c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

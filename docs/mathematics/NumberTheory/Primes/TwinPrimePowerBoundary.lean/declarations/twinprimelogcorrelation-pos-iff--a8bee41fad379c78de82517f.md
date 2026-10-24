# twinPrimeLogCorrelation_pos_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c2b75f2a-e73f-a609-127e-d6f471c5d360",
  "kind": "theorem",
  "lexical_name": "twinPrimeLogCorrelation_pos_iff",
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
  "slug": "twinprimelogcorrelation-pos-iff--a8bee41fad379c78de82517f",
  "source": {
    "blob": "0b2fac581ef0b3d2f816849aef39ff39d101994b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 66,
    "path": "GRWTSK/NumberTheory/Primes/TwinPrimePowerBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8bee41fad379c78de82517f178df131d08d6751c4806e4cb36e560d2eee7101",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/TwinPrimePowerBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2b75f2a-e73f-a609-127e-d6f471c5d360`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem twinPrimeLogCorrelation_pos_iff
    (X : ℕ) :
    0 < twinPrimeLogCorrelation X ↔
      0 < twinCount X := by
  constructor
  · intro hcorr
    by_contra hcount
    have hnoexist :
        ¬ ∃ p, p ≤ X ∧ Nat.Prime p ∧ Nat.Prime (p + 2) := by
      intro hex
      exact hcount ((twinCount_pos_iff X).2 hex)
    have hzero : twinPrimeLogCorrelation X = 0 := by
      unfold twinPrimeLogCorrelation
      apply Finset.sum_eq_zero
      intro n hn
      have hnotpair :
          ¬ (Nat.Prime n ∧ Nat.Prime (n + 2)) := by
        intro hpair
        exact hnoexist
          ⟨n, (Finset.mem_Icc.mp hn).2,
            hpair.1, hpair.2⟩
      simp [twinPrimePairLogWeight, hnotpair]
    linarith
  · intro hcount
    rcases (twinCount_pos_iff X).1 hcount with
      ⟨p, hpX, hp, hp2⟩
    have hp_mem : p ∈ Finset.Icc 1 X :=
      Finset.mem_Icc.mpr ⟨hp.one_le, hpX⟩
    have hsingle :
        twinPrimePairLogWeight p ≤
          twinPrimeLogCorrelation X := by
      unfold twinPrimeLogCorrelation
      exact Finset.single_le_sum
        (fun n hn => twinPrimePairLogWeight_nonneg n)
        hp_mem
    exact lt_of_lt_of_le
      (twinPrimePairLogWeight_pos hp hp2) hsingle

/-- The prime-only source never exceeds the complete Mangoldt source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/TwinPrimePowerBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/TwinPrimePowerBoundary.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b2fac581ef0b3d2f816849aef39ff39d101994b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

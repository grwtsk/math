# integerSolution_to_naturalSolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0b389738-21f3-e9af-82d6-e8b4e9e5290c",
  "kind": "theorem",
  "lexical_name": "integerSolution_to_naturalSolution",
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
  "slug": "integersolution-to-naturalsolution--ba392bf7ab5a76450e38322d",
  "source": {
    "blob": "8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 102,
    "path": "GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba392bf7ab5a76450e38322d3a95c3e52d8f20b33715d40dac5bf6682c122ff1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0b389738-21f3-e9af-82d6-e8b4e9e5290c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integerSolution_to_naturalSolution
    {d e : ℕ} (hd : 0 < d) (he : 0 < e) :
    TwinShiftTwoIntegerSolution d e →
      TwinShiftTwoNaturalSolution d e := by
  rintro ⟨z, hdz, hez⟩
  let t : ℕ := z.natAbs + 1
  let w : ℤ :=
    z + (t : ℤ) * ((d : ℤ) * (e : ℤ))
  have hdepos :
      (0 : ℤ) < (d : ℤ) * (e : ℤ) := by
    exact mul_pos (by exact_mod_cast hd) (by exact_mod_cast he)
  have hdeone :
      (1 : ℤ) ≤ (d : ℤ) * (e : ℤ) := by
    omega
  have hzlower :
      -(z.natAbs : ℤ) ≤ z := by
    have h := Int.le_natAbs (a := -z)
    have hneg := neg_le_neg h
    simpa using hneg
  have htbound :
      (z.natAbs : ℤ) ≤
        (t : ℤ) * ((d : ℤ) * (e : ℤ)) := by
    have ht0 : (0 : ℤ) ≤ (t : ℤ) := by positivity
    dsimp [t]
    nlinarith
  have hw : 0 ≤ w := by
    dsimp [w]
    linarith
  let n : ℕ := w.toNat
  have hncast : (n : ℤ) = w := by
    dsimp [n]
    exact Int.toNat_of_nonneg hw
  refine ⟨n, ?_, ?_⟩
  · have hdperiod :
        (d : ℤ) ∣
          (t : ℤ) * ((d : ℤ) * (e : ℤ)) := by
      refine ⟨(t : ℤ) * (e : ℤ), ?_⟩
      ring
    have hdw : (d : ℤ) ∣ w := by
      dsimp [w]
      exact dvd_add hdz hdperiod
    have hdnZ : (d : ℤ) ∣ (n : ℤ) := by
      simpa [hncast] using hdw
    exact_mod_cast hdnZ
  · have heperiod :
        (e : ℤ) ∣
          (t : ℤ) * ((d : ℤ) * (e : ℤ)) := by
      refine ⟨(t : ℤ) * (d : ℤ), ?_⟩
      ring
    have hew : (e : ℤ) ∣ w + 2 := by
      have hadd := dvd_add hez heperiod
      dsimp [w] at ⊢
      simpa only [add_assoc, add_comm, add_left_comm] using hadd
    have henZ : (e : ℤ) ∣ ((n + 2 : ℕ) : ℤ) := by
      simpa [hncast] using hew
    exact_mod_cast henZ

/-- Exact positive-modulus CRT criterion for the shift-two system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/TwinShiftTwoCRT.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/TwinShiftTwoCRT.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6287ffb38838f8d9b2e7eeadd2de64ad4542d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

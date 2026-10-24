# primeHarmonicPrefix_eq_threshold_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c96c52f-9c1d-a0dd-5758-e34792d1391a",
  "kind": "theorem",
  "lexical_name": "primeHarmonicPrefix_eq_threshold_sum",
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
  "slug": "primeharmonicprefix-eq-threshold-sum--4ab584243b1fcb19f4fa9aa4",
  "source": {
    "blob": "2a784c05d3092f4296615592e3c99e847fa5bd5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ab584243b1fcb19f4fa9aa46ed825943e7f1eaebee5f9daa6e716089d4faf23",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c96c52f-9c1d-a0dd-5758-e34792d1391a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHarmonicPrefix_eq_threshold_sum (A u : ℝ) (hu : u ≤ A) :
    primeHarmonicPrefix u =
      ∑ p ∈ (Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime,
        if Real.log (p : ℝ) ≤ u then Real.log (p : ℝ) / (p : ℝ) else 0 := by
  classical
  rw [primeHarmonicPrefix_eq_log_sum]
  have hs : (Finset.Icc 2 ⌊Real.exp u⌋₊).filter Nat.Prime =
      ((Finset.Icc 2 ⌊Real.exp A⌋₊).filter Nat.Prime).filter
        (fun p : ℕ ↦ Real.log (p : ℝ) ≤ u) := by
    ext p
    simp only [Finset.mem_filter, Finset.mem_Icc]
    constructor
    · rintro ⟨⟨hp2, hpU⟩, hp⟩
      have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
      exact ⟨⟨⟨hp2, hpU.trans (Nat.floor_mono (Real.exp_le_exp.mpr hu))⟩, hp⟩,
        (Real.log_le_iff_le_exp hp0).mpr ((Nat.le_floor_iff (Real.exp_pos u).le).mp hpU)⟩
    · rintro ⟨⟨⟨hp2, _⟩, hp⟩, hpU⟩
      have hp0 : (0 : ℝ) < p := by exact_mod_cast hp.pos
      exact ⟨⟨hp2, (Nat.le_floor_iff (Real.exp_pos u).le).mpr
        ((Real.log_le_iff_le_exp hp0).mp hpU)⟩, hp⟩
  rw [hs, Finset.sum_filter]

/-- Every retained prime's log belongs to the exact finite integration interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAbelStatements/Variantcdc15a19bd6cbf998ad63ede378bc442ffea83313931eb0f6b701f782bc3f33e.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a784c05d3092f4296615592e3c99e847fa5bd5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

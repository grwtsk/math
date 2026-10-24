# zero_frequency_contractive

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "05e1a51bbfa26b4b737be01071b9b6d9d8b486de",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 159,
      "path": "GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb87f07e-a214-3623-2fc3-e7f8780b0c6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd1af38b-f027-571f-857d-6d4bda1bbb9e",
  "kind": "theorem",
  "lexical_name": "zero_frequency_contractive",
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
  "slug": "zero-frequency-contractive--fa9e36991893b04e06ab57e9",
  "source": {
    "blob": "05e1a51bbfa26b4b737be01071b9b6d9d8b486de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 159,
    "path": "GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa9e36991893b04e06ab57e9092c97a9259dc6feeaa9d21876d739abcd8a52b7",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd1af38b-f027-571f-857d-6d4bda1bbb9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero_frequency_contractive (B : Finset ℕ)
    (hB : ∀ p ∈ B, Nat.Prime p) : ‖blockMultiplier B 0‖ ^ 2 ≤ 1 := by
  have hfactor : ∀ p ∈ B, ‖1 - (primeWeight p : ℂ) * primePhase p 0‖ ≤ 1 := by
    intro p hp
    have hw := primeWeight_nonneg p
    have hw1 := primeWeight_lt_one p (hB p hp)
    simp only [primePhase, zero_mul, neg_zero, Complex.ofReal_zero,
      zero_mul, Complex.exp_zero, mul_one]
    rw [← Complex.ofReal_one, ← Complex.ofReal_sub, Complex.norm_real,
      Real.norm_eq_abs, abs_of_nonneg (by linarith)]
    linarith
  have hnorm : ‖blockMultiplier B 0‖ ≤ 1 := by
    calc
      ‖blockMultiplier B 0‖ = ∏ p ∈ B, ‖1 - (primeWeight p : ℂ) * primePhase p 0‖ := by
        simp only [blockMultiplier, norm_prod]
      _ ≤ ∏ _p ∈ B, (1 : ℝ) :=
        Finset.prod_le_prod (fun p hp => norm_nonneg _) hfactor
      _ = 1 := by simp
  nlinarith [norm_nonneg (blockMultiplier B 0)]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e1a51bbfa26b4b737be01071b9b6d9d8b486de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

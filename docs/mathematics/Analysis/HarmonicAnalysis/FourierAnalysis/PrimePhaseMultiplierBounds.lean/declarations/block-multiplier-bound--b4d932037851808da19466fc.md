# block_multiplier_bound

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
      "line": 93,
      "path": "GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9fffdcf0-3099-4234-55b7-03bc325e60db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4e347d22-55d2-4539-4169-7efdd2d958e5",
  "kind": "theorem",
  "lexical_name": "block_multiplier_bound",
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
  "slug": "block-multiplier-bound--b4d932037851808da19466fc",
  "source": {
    "blob": "05e1a51bbfa26b4b737be01071b9b6d9d8b486de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 93,
    "path": "GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d932037851808da19466fc623336f84465389e1c82b4f27cf3ea89139ea86f",
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

Occurrence: `result:4e347d22-55d2-4539-4169-7efdd2d958e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem block_multiplier_bound (B : Finset ℕ) (ξ : ℝ) :
    ‖blockMultiplier B ξ‖ ^ 2 ≤
      Real.exp (-2 * (primeField B ξ).re + harmonicMass B) := by
  have hsum :
      (∑ p ∈ B, (-2 * ((primeWeight p : ℂ) * primePhase p ξ).re +
        primeWeight p ^ 2)) = -2 * (primeField B ξ).re + harmonicMass B := by
    simp only [primeField, harmonicMass, Complex.re_sum, primeWeight_sq,
      Finset.sum_add_distrib, Finset.mul_sum]
  calc
    ‖blockMultiplier B ξ‖ ^ 2 =
        ∏ p ∈ B, ‖1 - (primeWeight p : ℂ) * primePhase p ξ‖ ^ 2 := by
      simp [blockMultiplier, norm_prod, Finset.prod_pow]
    _ ≤ ∏ p ∈ B, Real.exp (-2 * ((primeWeight p : ℂ) * primePhase p ξ).re +
        primeWeight p ^ 2) := by
      apply Finset.prod_le_prod
      · intro p hp
        positivity
      · intro p hp
        exact one_sub_unit_bound _ _ (primePhase_norm p ξ)
    _ = Real.exp (-2 * (primeField B ξ).re + harmonicMass B) := by
      rw [← Real.exp_sum, hsum]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/PrimePhaseMultiplierBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/PrimePhaseMultiplierBounds.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `05e1a51bbfa26b4b737be01071b9b6d9d8b486de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

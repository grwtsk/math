# summable_successor_power_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0833d66da06bc96a11e965debccacf6306db5cb8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 18,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/GRWTSK/Analysis/LaplaceTransform/PolynomialEnergyHolomorphy.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3db98c5e-0308-0b7d-4c5d-f00dcd18f109",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2ca63b27-ed19-0414-70b0-480d79842b55",
  "kind": "theorem",
  "lexical_name": "summable_successor_power_exp",
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
  "slug": "summable-successor-power-exp--6202f3572595874d85f4b32b",
  "source": {
    "blob": "0833d66da06bc96a11e965debccacf6306db5cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 18,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6202f3572595874d85f4b32baec3c3f3dc57060c588253d8fb723f6b8e65813f",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ca63b27-ed19-0414-70b0-480d79842b55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem summable_successor_power_exp (k : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    Summable (fun n : ℕ => ((n : ℝ) + 1) ^ k * Real.exp (-σ * n)) := by
  have h := (Real.summable_pow_mul_exp_neg_nat_mul k hσ).comp_injective Nat.succ_injective
  have hs := h.mul_left (Real.exp σ)
  apply hs.congr
  intro n
  simp only [Function.comp_apply, Nat.cast_succ]
  calc
    Real.exp σ * (((n : ℝ) + 1) ^ k * Real.exp (-σ * ((n : ℝ) + 1))) =
        ((n : ℝ) + 1) ^ k * Real.exp (σ + (-σ * ((n : ℝ) + 1))) := by
          rw [Real.exp_add]
          ring
    _ = _ := by congr 2; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/PolynomialEnergyHolomorphy/Variant6636d630ba3c72ccfa714f701db566191aa9c8deb3a21c37911da38f24a9d3cf.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0833d66da06bc96a11e965debccacf6306db5cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

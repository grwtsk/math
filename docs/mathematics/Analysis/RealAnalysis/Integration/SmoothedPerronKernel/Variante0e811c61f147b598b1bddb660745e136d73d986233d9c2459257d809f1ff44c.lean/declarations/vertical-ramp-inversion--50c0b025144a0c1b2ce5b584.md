# vertical_ramp_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "466f88a40275564abf7b79356ff47b938e9b6ac9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64ab8296-a395-e6d6-e236-cbe554dddc7b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae35ad65-0796-ffd4-d6d4-5edd85173af0",
  "kind": "theorem",
  "lexical_name": "vertical_ramp_inversion",
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
  "slug": "vertical-ramp-inversion--50c0b025144a0c1b2ce5b584",
  "source": {
    "blob": "466f88a40275564abf7b79356ff47b938e9b6ac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:50c0b025144a0c1b2ce5b5845875536bfa907a5b0c5ae7d2106a8317629ef807",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae35ad65-0796-ffd4-d6d4-5edd85173af0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertical_ramp_inversion (c L : ℝ) (hc : 0 < c) :
    (1 / (2 * Real.pi) : ℝ) •
      (∫ t : ℝ, Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) = dampedRamp c L := by
  have h := (dampedRamp_integrable c hc).fourierInv_fourier_eq
    (v := L) (dampedRamp_fourier_integrable c hc) (dampedRamp_continuous c).continuousAt
  calc
    _ = ∫ ξ : ℝ, Complex.exp (((2 * Real.pi * ξ : ℝ) : ℂ) * (L : ℂ) * Complex.I) /
        ((c : ℂ) + ((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) ^ 2 := by
      convert (Measure.integral_comp_mul_left
        (fun t : ℝ => Complex.exp ((t : ℂ) * (L : ℂ) * Complex.I) /
          ((c : ℂ) + (t : ℂ) * Complex.I) ^ 2) (2 * Real.pi)).symm using 1
      rw [abs_of_pos (inv_pos.mpr (by positivity : 0 < 2 * Real.pi))]
      simp only [one_div]
    _ = 𝓕⁻ (𝓕 (dampedRamp c)) L := by
      rw [Real.fourierInv_eq']
      apply integral_congr_ae
      filter_upwards [] with ξ
      rw [dampedRamp_fourier c hc]
      simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial, mul_one_div]
      congr 2
      push_cast
      ring
    _ = _ := h

/-- The exact smoothed Perron kernel, including the zero value at the cutoff x=1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SmoothedPerronKernel/Variante0e811c61f147b598b1bddb660745e136d73d986233d9c2459257d809f1ff44c.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `466f88a40275564abf7b79356ff47b938e9b6ac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

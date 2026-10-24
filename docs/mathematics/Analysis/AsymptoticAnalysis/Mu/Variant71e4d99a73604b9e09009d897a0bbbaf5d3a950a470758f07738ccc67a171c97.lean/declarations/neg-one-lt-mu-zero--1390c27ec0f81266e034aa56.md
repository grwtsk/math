# neg_one_lt_mu_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "744e30031e69bfe25e10559ca71b12a53ccc1c14",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb98c427-6a83-5952-615f-1b70960d92a1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:720990d4-53d0-2ebe-9a9c-24c53afe0da8",
  "kind": "theorem",
  "lexical_name": "neg_one_lt_mu_zero",
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
  "slug": "neg-one-lt-mu-zero--1390c27ec0f81266e034aa56",
  "source": {
    "blob": "744e30031e69bfe25e10559ca71b12a53ccc1c14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 162,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1390c27ec0f81266e034aa5619a91464d5756290bd940aed730d6afa28022878",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:720990d4-53d0-2ebe-9a9c-24c53afe0da8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_one_lt_mu_zero : (-1 : ℝ) < Zeta23.mu 0 := by
  rw [mu_eq]
  rw [show ((0 : ℝ) / 2 : ℝ) = (0 : ℝ) by norm_num]
  have hre := re_digamma_vertical (a := 1 / 4) (by norm_num) (by norm_num) 0
  rw [hre]
  have hS : (0 : ℝ) ≤ ∑' n : ℕ,
      (1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + 1 / 4) / (((n : ℝ) + 1 + 1 / 4) ^ 2 + (0 : ℝ) ^ 2)) := by
    refine tsum_nonneg fun n => ?_
    have hna : (0 : ℝ) < (n : ℝ) + 1 + 1 / 4 := by positivity
    have h1 : ((n : ℝ) + 1 + 1 / 4) / (((n : ℝ) + 1 + 1 / 4) ^ 2 + (0 : ℝ) ^ 2)
        = 1 / ((n : ℝ) + 1 + 1 / 4) := by
      rw [show (((n : ℝ) + 1 + 1 / 4) ^ 2 + (0 : ℝ) ^ 2) = ((n : ℝ) + 1 + 1 / 4) ^ 2 by ring]
      rw [sq]
      rw [div_mul_eq_div_div]
      rw [div_self hna.ne']
    rw [h1]
    have h2 : (0 : ℝ) < (n : ℝ) + 1 := by positivity
    have h3 : 1 / ((n : ℝ) + 1 + 1 / 4) ≤ 1 / ((n : ℝ) + 1) :=
      one_div_le_one_div_of_le h2 (by linarith)
    linarith
  have hγ : Real.eulerMascheroniConstant < 2 / 3 := Real.eulerMascheroniConstant_lt_two_thirds
  have hπ3 : (3.14 : ℝ) < Real.pi := Real.pi_gt_d2
  have hπ4 : Real.pi < 4 := Real.pi_lt_four
  have hlogπ : Real.log Real.pi < 1.4 := by
    have h1 : Real.log Real.pi < Real.log 4 := Real.log_lt_log Real.pi_pos hπ4
    have h2 : Real.log 4 = 2 * Real.log 2 := by
      rw [show (4 : ℝ) = 2 ^ 2 by norm_num, Real.log_pow]
      push_cast
      ring
    have h3 := Real.log_two_lt_d9
    nlinarith
  have hquarter : (1 / 4 : ℝ) / ((1 / 4 : ℝ) ^ 2 + (0 : ℝ) ^ 2) = 4 := by norm_num
  rw [hquarter]
  set S : ℝ := ∑' n : ℕ,
    (1 / ((n : ℝ) + 1) - ((n : ℝ) + 1 + 1 / 4) / (((n : ℝ) + 1 + 1 / 4) ^ 2 + (0 : ℝ) ^ 2))
    with hSdef
  have hform : 1 / (2 * Real.pi) * (-Real.eulerMascheroniConstant - 4 + S)
        - Real.log Real.pi / (2 * Real.pi)
      = (-Real.eulerMascheroniConstant - 4 + S - Real.log Real.pi) * (1 / (2 * Real.pi)) := by
    ring
  rw [hform]
  have hX : -(2 * Real.pi)
      < -Real.eulerMascheroniConstant - 4 + S - Real.log Real.pi := by
    have hnorm : (1.4 : ℝ) = 14 / 10 := by norm_num
    linarith
  calc (-1 : ℝ) = -(2 * Real.pi) * (1 / (2 * Real.pi)) := by
        field_simp
    _ < (-Real.eulerMascheroniConstant - 4 + S - Real.log Real.pi) * (1 / (2 * Real.pi)) :=
        mul_lt_mul_of_pos_right hX (by positivity)

/-! ### The derivative bound μ′ ≪ 1/|τ|  (via the trigamma series) -/

/-- Trigamma tail bound on the quarter line: Σ'ₙ ((1/4+n)² + t²)⁻¹ ≤ 12/|t| for |t| ≥ 1/2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Mu/Variant71e4d99a73604b9e09009d897a0bbbaf5d3a950a470758f07738ccc67a171c97.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `744e30031e69bfe25e10559ca71b12a53ccc1c14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

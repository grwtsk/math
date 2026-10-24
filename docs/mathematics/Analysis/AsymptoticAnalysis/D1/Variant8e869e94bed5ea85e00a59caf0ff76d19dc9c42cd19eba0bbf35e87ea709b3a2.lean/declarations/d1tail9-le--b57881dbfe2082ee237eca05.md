# D1tail9_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4017e1e8-85da-5173-335d-06fd38d154ce",
  "kind": "theorem",
  "lexical_name": "D1tail9_le",
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
  "slug": "d1tail9-le--b57881dbfe2082ee237eca05",
  "source": {
    "blob": "036f84b7cb8355e2f941db818033eff3ba55d236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 239,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b57881dbfe2082ee237eca05a3b94732f0b4f092b5c6f1a2340572eda5d070be",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4017e1e8-85da-5173-335d-06fd38d154ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem D1tail9_le {s : ℝ} (hs0 : 0 ≤ s) (hs1 : s ≤ 1) : ∑' k, D1term (k + 9) s ≤ eps9 := by
  have hgeo : Summable (fun j : ℕ => D1coeff 9 * (20 / 231 : ℝ) ^ j) :=
    (summable_geometric_of_lt_one (by norm_num) (by norm_num)).mul_left _
  have hle : ∀ j, D1term (j + 9) s ≤ D1coeff 9 * (20 / 231 : ℝ) ^ j := by
    intro j
    unfold D1term
    have hp : s ^ (2 * (j + 9) + 3) ≤ 1 := pow_le_one₀ hs0 hs1
    calc D1coeff (j + 9) * s ^ (2 * (j + 9) + 3)
        ≤ D1coeff (j + 9) * 1 := mul_le_mul_of_nonneg_left hp (D1coeff_nonneg _)
      _ = D1coeff (9 + j) := by rw [mul_one, add_comm]
      _ ≤ D1coeff 9 * (20 / 231) ^ j := D1coeff_tail_le j
  have hsum : Summable (fun j => D1term (j + 9) s) := (summable_nat_add_iff 9).mpr (summable_D1term s)
  calc ∑' j, D1term (j + 9) s ≤ ∑' j, D1coeff 9 * (20 / 231 : ℝ) ^ j := hsum.tsum_le_tsum hle hgeo
    _ = D1coeff 9 * ∑' j, (20 / 231 : ℝ) ^ j := tsum_mul_left
    _ = D1coeff 9 * (1 - 20 / 231)⁻¹ := by rw [tsum_geometric_of_lt_one (by norm_num) (by norm_num)]
    _ = eps9 := eps9_eq.symm

/-- **the certified two-sided control of D₁ on [0,1]:**  D1trunc 9 ≤ D₁ ≤ D1trunc 9 + ε₉. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/D1/Variant8e869e94bed5ea85e00a59caf0ff76d19dc9c42cd19eba0bbf35e87ea709b3a2.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `036f84b7cb8355e2f941db818033eff3ba55d236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# hasSum_nat_completedCosZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a2147d0f-d7b9-cb0e-1fb9-078bf1b0906e",
  "kind": "lemma",
  "lexical_name": "hasSum_nat_completedCosZeta",
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
  "slug": "hassum-nat-completedcoszeta--160203e9d0fc07e1fda0ef8e",
  "source": {
    "blob": "013f2bdf9dd03263486c1491a907da39bbde1132",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 537,
    "line": 522,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:160203e9d0fc07e1fda0ef8e39e9d3a2b1d551b681580ab585b969d640aa984a",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2147d0f-d7b9-cb0e-1fb9-078bf1b0906e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 522–537.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_nat_completedCosZeta (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℕ ↦ if n = 0 then 0 else Gammaℝ s * Real.cos (2 * π * a * n) / (n : ℂ) ^ s)
    (completedCosZeta a s) := by
  have aux : ((|0| : ℤ) : ℂ) ^ s = 0 := by
    rw [abs_zero, Int.cast_zero, zero_cpow (ne_zero_of_one_lt_re hs)]
  have hint := (hasSum_int_completedCosZeta a hs).nat_add_neg
  rw [aux, div_zero, zero_div, add_zero] at hint
  refine hint.congr_fun fun n ↦ ?_
  split_ifs with h
  · simp only [h, Nat.cast_zero, aux, div_zero, zero_div, neg_zero, zero_add]
  · simp only [ofReal_cos, ofReal_mul, ofReal_ofNat, ofReal_natCast, Complex.cos,
      show 2 * π * a * n * I = 2 * π * I * a * n by ring, neg_mul, mul_div_assoc,
      div_right_comm _ (2 : ℂ), Int.cast_natCast, Nat.abs_cast, Int.cast_neg, mul_neg, abs_neg, ←
      mul_add, ← add_div]

/-- Formula for `completedHurwitzZetaEven` as a Dirichlet series in the convergence range. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variant940dc7add0f24136e3ad465aee8983b4a7f723a3b3b9d8327844c2b8b28fd625.lean#L522).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `013f2bdf9dd03263486c1491a907da39bbde1132` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

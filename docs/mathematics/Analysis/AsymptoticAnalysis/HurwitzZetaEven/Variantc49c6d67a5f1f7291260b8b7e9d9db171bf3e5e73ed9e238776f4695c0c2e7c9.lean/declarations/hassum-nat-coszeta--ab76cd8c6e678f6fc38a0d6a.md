# hasSum_nat_cosZeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d2a977dd5866de26258a555078d8377ab4c4bea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 735,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d875c831-3ff2-3e63-5ebc-c832b54d1832",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca6874ba-1450-29ba-c44f-487bd55e05c1",
  "kind": "lemma",
  "lexical_name": "hasSum_nat_cosZeta",
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
  "slug": "hassum-nat-coszeta--ab76cd8c6e678f6fc38a0d6a",
  "source": {
    "blob": "1d2a977dd5866de26258a555078d8377ab4c4bea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 744,
    "line": 735,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab76cd8c6e678f6fc38a0d6adc3a62a04d80d1cd8b621b4128e143b1c590a948",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca6874ba-1450-29ba-c44f-487bd55e05c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 735–744.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasSum_nat_cosZeta (a : ℝ) {s : ℂ} (hs : 1 < re s) :
    HasSum (fun n : ℕ ↦ Real.cos (2 * π * a * n) / (n : ℂ) ^ s) (cosZeta a s) := by
  have := (hasSum_int_cosZeta a hs).nat_add_neg
  simp_rw [abs_neg, Int.cast_neg, Nat.abs_cast, Int.cast_natCast, mul_neg, abs_zero, Int.cast_zero,
    zero_cpow (ne_zero_of_one_lt_re hs), div_zero, zero_div, add_zero, ← add_div,
    div_right_comm _ _ (2 : ℂ)] at this
  simp_rw [push_cast, Complex.cos, neg_mul]
  exact this.congr_fun fun n ↦ by rw [show 2 * π * a * n * I = 2 * π * I * a * n by ring]

/-- Reformulation of `hasSum_nat_cosZeta` using `LSeriesHasSum`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HurwitzZetaEven/Variantc49c6d67a5f1f7291260b8b7e9d9db171bf3e5e73ed9e238776f4695c0c2e7c9.lean#L735).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d2a977dd5866de26258a555078d8377ab4c4bea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# ZMod.isSquare_neg_one_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b02c6629-ca7b-ef8d-eb4d-26b1a3b73394",
  "kind": "theorem",
  "lexical_name": "ZMod.isSquare_neg_one_iff'",
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
  "slug": "zmod-issquare-neg-one-iff--25d3f922fea4609b5c975117",
  "source": {
    "blob": "a00b526b78c60cabdec3570501b6aaf21f665caa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 132,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:25d3f922fea4609b5c975117fe3b3efe5dd0fc27e8616ea0d49c558c36a43cfb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b02c6629-ca7b-ef8d-eb4d-26b1a3b73394`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.isSquare_neg_one_iff' {n : ℕ} (hn : Squarefree n) :
    IsSquare (-1 : ZMod n) ↔ ∀ {q : ℕ}, q ∣ n → q % 4 ≠ 3 := by
  have help : ∀ a b : ZMod 4, a ≠ 3 → b ≠ 3 → a * b ≠ 3 := by decide
  rw [ZMod.isSquare_neg_one_iff hn]
  refine' ⟨_, fun H q _ => H⟩
  intro H
  refine' @induction_on_primes _ _ _ (fun p q hp hq hpq => _)
  · exact fun _ => by norm_num
  · exact fun _ => by norm_num
  · replace hp := H hp (dvd_of_mul_right_dvd hpq)
    replace hq := hq (dvd_of_mul_left_dvd hpq)
    rw [show 3 = 3 % 4 by norm_num, Ne.def, ← ZMod.nat_cast_eq_nat_cast_iff'] at hp hq ⊢
    rw [Nat.cast_mul]
    exact help p q hp hq
#align zmod.is_square_neg_one_iff' ZMod.isSquare_neg_one_iff'

/-!
### Relation to sums of two squares
-/


/-- If `-1` is a square modulo the natural number `n`, then `n` is a sum of two squares. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variant223e228c30a809d348f57c9b621a0d79a447bb7e0dd6a42f48822f1e99d2993a.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a00b526b78c60cabdec3570501b6aaf21f665caa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

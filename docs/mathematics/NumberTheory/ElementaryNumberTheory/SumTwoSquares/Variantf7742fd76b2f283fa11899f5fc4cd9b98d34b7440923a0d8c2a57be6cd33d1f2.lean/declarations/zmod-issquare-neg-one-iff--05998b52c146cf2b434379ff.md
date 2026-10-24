# ZMod.isSquare_neg_one_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3a88c53e302d526422d755e1ac3cb350e6b67047",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c681819-28df-f26d-18f3-62f4deea9c6f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:edf9f6d5-d026-38b5-24e1-2bfb6168f575",
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
  "slug": "zmod-issquare-neg-one-iff--05998b52c146cf2b434379ff",
  "source": {
    "blob": "3a88c53e302d526422d755e1ac3cb350e6b67047",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 117,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05998b52c146cf2b434379ff4f6e11034983ac5c5f2f9615584b853d52624acf",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edf9f6d5-d026-38b5-24e1-2bfb6168f575`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ZMod.isSquare_neg_one_iff' {n : ℕ} (hn : Squarefree n) :
    IsSquare (-1 : ZMod n) ↔ ∀ {q : ℕ}, q ∣ n → q % 4 ≠ 3 := by
  have help : ∀ a b : ZMod 4, a ≠ 3 → b ≠ 3 → a * b ≠ 3 := by decide
  rw [ZMod.isSquare_neg_one_iff hn]
  refine ⟨?_, fun H q _ => H⟩
  intro H
  refine @induction_on_primes _ ?_ ?_ (fun p q hp hq hpq => ?_)
  · exact fun _ => by norm_num
  · exact fun _ => by norm_num
  · replace hp := H hp (dvd_of_mul_right_dvd hpq)
    replace hq := hq (dvd_of_mul_left_dvd hpq)
    rw [show 3 = 3 % 4 by norm_num, Ne, ← ZMod.natCast_eq_natCast_iff'] at hp hq ⊢
    rw [Nat.cast_mul]
    exact help p q hp hq

/-!
### Relation to sums of two squares
-/


/-- If `-1` is a square modulo the natural number `n`, then `n` is a sum of two squares. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SumTwoSquares/Variantf7742fd76b2f283fa11899f5fc4cd9b98d34b7440923a0d8c2a57be6cd33d1f2.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a88c53e302d526422d755e1ac3cb350e6b67047` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

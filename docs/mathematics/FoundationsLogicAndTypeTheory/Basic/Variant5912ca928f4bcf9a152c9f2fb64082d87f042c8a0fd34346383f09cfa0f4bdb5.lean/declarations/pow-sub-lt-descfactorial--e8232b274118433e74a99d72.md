# pow_sub_lt_descFactorial'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6e6106f1bb15e7e3c38e173fa8f1843e566fd90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 447,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/59/5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:88eba87b-edf0-c3ec-3d82-6faa15417475",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48530d91-1e25-baeb-3e5c-5e494ff41623",
  "kind": "theorem",
  "lexical_name": "pow_sub_lt_descFactorial'",
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
  "slug": "pow-sub-lt-descfactorial--e8232b274118433e74a99d72",
  "source": {
    "blob": "b6e6106f1bb15e7e3c38e173fa8f1843e566fd90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 462,
    "line": 447,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8232b274118433e74a99d72a0363d8bd8d0f32584ec3d5dc088c5547fcb80e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48530d91-1e25-baeb-3e5c-5e494ff41623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 447–462.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_sub_lt_descFactorial' {n : ℕ} :
    ∀ {k : ℕ}, k + 2 ≤ n → (n - (k + 1)) ^ (k + 2) < n.descFactorial (k + 2)
  | 0 => fun h => by
    rw [descFactorial_succ, pow_succ, pow_one, descFactorial_one]
    exact
      Nat.mul_lt_mul_of_pos_left (tsub_lt_self (lt_of_lt_of_le zero_lt_two h) zero_lt_one)
        (tsub_pos_of_lt h)
  | k + 1 => fun h => by
    rw [descFactorial_succ, pow_succ, mul_comm]
    apply Nat.mul_lt_mul_of_pos_left
    · refine' ((Nat.pow_le_pow_of_le_left (tsub_le_tsub_right (le_succ n) _) _).trans_lt _)
      rw [succ_sub_succ]
      exact pow_sub_lt_descFactorial' ((le_succ _).trans h)
    · apply tsub_pos_of_lt; apply h
#align nat.pow_sub_lt_desc_factorial' Nat.pow_sub_lt_descFactorial'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant5912ca928f4bcf9a152c9f2fb64082d87f042c8a0fd34346383f09cfa0f4bdb5.lean#L447).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6e6106f1bb15e7e3c38e173fa8f1843e566fd90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

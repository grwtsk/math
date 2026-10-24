# ofDigits_zero_two_sequence_mem_cantorSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b568e75-f4e3-fcec-5014-ea58696fc0d5",
  "kind": "theorem",
  "lexical_name": "ofDigits_zero_two_sequence_mem_cantorSet",
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
  "slug": "ofdigits-zero-two-sequence-mem-cantorset--eb4a5836c5c069707c967c12",
  "source": {
    "blob": "79fd5f67185e532e62fc157dbb2ade711ec62428",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 160,
    "path": "GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb4a5836c5c069707c967c12eb6d08ec3922d389b4dc342b3ed2370d986597a5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4b568e75-f4e3-fcec-5014-ea58696fc0d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofDigits_zero_two_sequence_mem_cantorSet {a : ℕ → Fin 3}
    (h : ∀ n, a n ≠ 1) : ofDigits a ∈ cantorSet := by
  simp only [cantorSet, Set.mem_iInter]
  intro i
  induction i generalizing a with
  | zero =>
    simp only [preCantorSet_zero, Set.mem_Icc]
    exact ⟨ofDigits_nonneg a, ofDigits_le_one a⟩
  | succ i ih =>
    simp only [preCantorSet, Set.mem_union, Set.mem_image, ← exists_or]
    use ofDigits (fun i ↦ a (i + 1))
    have : (ofDigits fun i ↦ a (i + 1)) ∈ preCantorSet i := ih (by solve_by_elim)
    simp only [this, ofDigits_eq_sum_add_ofDigits a 1, Finset.range_one, ofDigitsTerm,
      Nat.cast_ofNat, Finset.sum_singleton, zero_add, pow_one, true_and, field]
    specialize h 0
    generalize a 0 = x at h
    fin_cases x <;> simp at ⊢ h

/-- If two base-3 representations using only digits `0` and `2` define the same number,
then the sequences must be equal.
This uniqueness fails for general base-3 representations (e.g. `0.1000... = 0.0222...`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CantorSet/Variant3177c808928953f9b2e509163c8d0000ca1efeb1ccd8d231262012f6ecb3085a.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fd5f67185e532e62fc157dbb2ade711ec62428` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

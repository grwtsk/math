# isMultiplyPreprimitive_of_isMultiplyPretransitive_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4c657e41b8b817add155da6ebdea6af5cb610eb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 231,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8680941c-6a7a-acee-93f0-0e3a5f91061e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0abd9fe6-3159-11e0-a85b-36aebafebf21",
  "kind": "theorem",
  "lexical_name": "isMultiplyPreprimitive_of_isMultiplyPretransitive_succ",
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
  "slug": "ismultiplypreprimitive-of-ismultiplypretransitive-succ--da9f2278344f45a585dba0bd",
  "source": {
    "blob": "4c657e41b8b817add155da6ebdea6af5cb610eb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 231,
    "path": "GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da9f2278344f45a585dba0bd1c6ead2d51796f91d830b7f8be3ae9f833d677dc",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0abd9fe6-3159-11e0-a85b-36aebafebf21`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isMultiplyPreprimitive_of_isMultiplyPretransitive_succ {n : ℕ}
    (hα : ↑n.succ ≤ ENat.card α) [IsMultiplyPretransitive M α n.succ] :
    IsMultiplyPreprimitive M α n := by
  rcases Nat.eq_zero_or_pos n with hn | hn
  · rw [hn]
    exact is_zero_preprimitive M α
  rw [isMultiplyPreprimitive_iff]
  constructor
  · exact isMultiplyPretransitive_of_le' (Nat.le_succ n) hα
  · intro s hs
    obtain ⟨m, hm⟩ := Nat.exists_eq_add_of_le hn
    apply isPreprimitive_of_is_two_pretransitive
    have hs' : s.encard = m := by
      simp only [hm, Nat.succ_eq_add_one, zero_add, add_comm 1] at hs
      exact ENat.add_left_injective_of_ne_top ENat.one_ne_top hs
    have : Finite s := Set.finite_of_encard_eq_coe hs'
    apply ofFixingSubgroup.isMultiplyPretransitive (G := M) s (n := n.succ)
    simp [Set.ncard, hs', hm, add_comm 1]

/-- An `n`-preprimitive action is `m`-preprimitive for `m ≤ n`. -/
@[to_additive /-- An `n`-preprimitive action is `m`-preprimitive for `m ≤ n`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultiplePrimitivity/Variantcb3fdb58e7d05c3688514c4b2e0018e597756dc90095248378e09d775fe69201.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c657e41b8b817add155da6ebdea6af5cb610eb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

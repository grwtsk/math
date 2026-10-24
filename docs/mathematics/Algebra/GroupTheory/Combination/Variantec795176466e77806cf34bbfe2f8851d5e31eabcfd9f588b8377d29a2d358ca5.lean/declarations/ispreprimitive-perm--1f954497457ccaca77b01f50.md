# isPreprimitive_perm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4bc4db8e-57f0-671a-085b-11bb2548ebfa",
  "kind": "theorem",
  "lexical_name": "isPreprimitive_perm",
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
  "slug": "ispreprimitive-perm--1f954497457ccaca77b01f50",
  "source": {
    "blob": "e8b7146c2591c59265354220065f59c8426af74f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 256,
    "path": "GRWTSK/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f954497457ccaca77b01f507c29f084fdeb44cfa17a5f16c3048da70e4c01c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4bc4db8e-57f0-671a-085b-11bb2548ebfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isPreprimitive_perm {n : ℕ} (h_one_le : 1 ≤ n) (hn : n < Nat.card α)
    (hα : Nat.card α ≠ 2 * n) :
    IsPreprimitive (Perm α) (powersetCard α n) := by
  -- The finiteness of `α` follows from the assumptions of the theorem.
  have : Finite α := Nat.finite_of_card_ne_zero (Nat.ne_zero_of_lt hn)
  have : Fintype α := Fintype.ofFinite α
  -- The action is pretransitive.
  have : IsPretransitive (Perm α) (powersetCard α n) := powersetCard.isPretransitive
  -- The type on which the group acts is nontrivial.
  have : Nontrivial (powersetCard α n) := powersetCard.nontrivial' h_one_le hn
  obtain ⟨s⟩ := this.to_nonempty
  -- It remains to prove that stabilizer of some point is maximal.
  rw [← isCoatom_stabilizer_iff_preprimitive _ s]
  -- The stabilizer of a combination is the stabilizer of the underlying set.
  rw [stabilizer_coe]
  -- We conclude by `Equiv.Perm.isCoatom_stabilizer`
  apply isCoatom_stabilizer
  -- `s` is nonempty because `n ≠ 0`.
  · rwa [powersetCard.coe_nonempty_iff]
  -- `sᶜ` is nonempty because `n < Nat.card α`.
  · rw [nonempty_compl, ne_eq, eq_univ_iff_ncard, ncard_eq]
    exact hn.ne
  -- `Nat.card α ≠ 2 * s.ncard` because `Nat.card α ≠ 2 * s`.
  · rwa [ncard_eq]

set_option backward.isDefEq.respectTransparency false in
/-- If `3 ≤ Nat.card α`, then `alternatingGroup α` acts transitively on `Set.powersetCard α n`.

If `Nat.card α ≤ 2`, then `alternatingGroup α` is trivial, and
the result only holds in the trivial case where `powersetCard α n` is a subsingleton,
that is, when `n = 0` or `Nat.card α ≤ n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Combination/Variantec795176466e77806cf34bbfe2f8851d5e31eabcfd9f588b8377d29a2d358ca5.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b7146c2591c59265354220065f59c8426af74f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

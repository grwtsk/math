# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5c9e9d5e0bb18f24fb73d6459a8af426d93b700b4a560e093e6013f152e6f1b1",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--c1ac4f77b35f590ed47e23f5",
  "source": {
    "blob": "c932cdb35f56fe593ecec2cc48ea4784c0885c88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 213,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1ac4f77b35f590ed47e23f50ebb8e32a188f777c53cc107bfaef283b196e86c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5c9e9d5e0bb18f24fb73d6459a8af426d93b700b4a560e093e6013f152e6f1b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (c : ℕ) (h : c % 3 = 1 ∨ c % 3 = 2) : Derivable (M :: replicate c I) := by
  -- From `der_cons_replicate`, we can derive the `Miustr` `M::w` described in the introduction.
  obtain ⟨m, hm⟩ := le_pow2_and_pow2_eq_mod3 c h -- `2^m` will be the number of `I`s in `M::w`
  have hw₂ : Derivable (M :: replicate (2 ^ m) I ++ replicate ((2 ^ m - c) / 3 % 2) U) := by
    rcases mod_two_eq_zero_or_one ((2 ^ m - c) / 3) with h_zero | h_one
    · -- `(2^m - c)/3 ≡ 0 [MOD 2]`
      simp only [der_cons_replicate m, append_nil, List.replicate, h_zero]
    · -- case `(2^m - c)/3 ≡ 1 [MOD 2]`
      rw [h_one, ← replicate_pow_minus_append, append_assoc]
      apply Derivable.r1
      rw [replicate_pow_minus_append]
      exact der_cons_replicate m
  have hw₃ : Derivable (M :: replicate c I ++
      replicate ((2 ^ m - c) / 3) U ++ replicate ((2 ^ m - c) / 3 % 2) U) := by
    apply
      der_cons_replicate_I_replicate_U_append_of_der_cons_replicate_I_append c ((2 ^ m - c) / 3) h
    convert hw₂ using 4
    -- now we must show `c + 3 * ((2 ^ m - c) / 3) = 2 ^ m`
    rw [Nat.mul_div_cancel']
    · exact add_tsub_cancel_of_le hm.1
    · exact (modEq_iff_dvd' hm.1).mp hm.2.symm
  rw [append_assoc, ← replicate_add _ _] at hw₃
  obtain ⟨t, ht⟩ := add_mod2 ((2 ^ m - c) / 3)
  rw [ht] at hw₃
  exact der_of_der_append_replicate_U_even hw₃

/-!
### `Decstr` is a sufficient condition

The remainder of this file sets up the proof that `Decstr en` is sufficient to ensure
`Derivable en`. Decidability of `Derivable en` is an easy consequence.

The proof proceeds by induction on the `count U` of `en`.

We tackle first the base case of the induction. This requires auxiliary results giving
conditions under which `count I ys = length ys`.
-/


/-- If an `Miustr` has a zero `count U` and contains no `M`, then its `count I` is its length.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DecisionSuf/Variant6b58f9846651a260f560c04dd552a14f42493448dea45b99d5fb0635ef16682b.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c932cdb35f56fe593ecec2cc48ea4784c0885c88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

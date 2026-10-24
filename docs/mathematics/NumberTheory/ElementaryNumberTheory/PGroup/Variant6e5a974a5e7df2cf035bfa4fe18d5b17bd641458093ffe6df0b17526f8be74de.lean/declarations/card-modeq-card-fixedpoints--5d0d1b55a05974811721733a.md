# card_modEq_card_fixedPoints

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0206f6c7-d1c0-0179-ffa0-2a01bcba553a",
  "kind": "theorem",
  "lexical_name": "card_modEq_card_fixedPoints",
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
  "slug": "card-modeq-card-fixedpoints--5d0d1b55a05974811721733a",
  "source": {
    "blob": "fd3698d4f1049d776ffb2485c0a03a9ee8e17956",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 162,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d0d1b55a05974811721733ad2f5a0cb808d4f14368b2cdce8473be05aa13305",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0206f6c7-d1c0-0179-ffa0-2a01bcba553a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_modEq_card_fixedPoints : Nat.card α ≡ Nat.card (fixedPoints G α) [MOD p] := by
  have := Fintype.ofFinite α
  have := Fintype.ofFinite (fixedPoints G α)
  rw [Nat.card_eq_fintype_card, Nat.card_eq_fintype_card]
  classical
    calc
      card α = card (Σy : Quotient (orbitRel G α), { x // Quotient.mk'' x = y }) :=
        card_congr (Equiv.sigmaFiberEquiv (@Quotient.mk'' _ (orbitRel G α))).symm
      _ = ∑ a : Quotient (orbitRel G α), card { x // Quotient.mk'' x = a } := card_sigma
      _ ≡ ∑ _a : fixedPoints G α, 1 [MOD p] := ?_
      _ = _ := by simp
    rw [← ZMod.eq_iff_modEq_nat p, Nat.cast_sum, Nat.cast_sum]
    have key :
      ∀ x,
        card { y // (Quotient.mk'' y : Quotient (orbitRel G α)) = Quotient.mk'' x } =
          card (orbit G x) :=
      fun x => by simp only [Quotient.eq'']; congr
    refine
      Eq.symm
        (Finset.sum_bij_ne_zero (fun a _ _ => Quotient.mk'' a.1) (fun _ _ _ => Finset.mem_univ _)
          (fun a₁ _ _ a₂ _ _ h =>
            Subtype.eq (mem_fixedPoints'.mp a₂.2 a₁.1 (Quotient.exact' h)))
          (fun b => Quotient.inductionOn' b fun b _ hb => ?_) fun a ha _ => by
          rw [key, mem_fixedPoints_iff_card_orbit_eq_one.mp a.2])
    obtain ⟨k, hk⟩ := hG.card_orbit b
    rw [Nat.card_eq_fintype_card] at hk
    have : k = 0 := by
      contrapose! hb
      simp [-Quotient.eq, key, hk, hb]
    exact
      ⟨⟨b, mem_fixedPoints_iff_card_orbit_eq_one.2 <| by rw [hk, this, pow_zero]⟩,
        Finset.mem_univ _, ne_of_eq_of_ne Nat.cast_one one_ne_zero, rfl⟩

/-- If a p-group acts on `α` and the cardinality of `α` is not a multiple
  of `p` then the action has a fixed point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PGroup/Variant6e5a974a5e7df2cf035bfa4fe18d5b17bd641458093ffe6df0b17526f8be74de.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd3698d4f1049d776ffb2485c0a03a9ee8e17956` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

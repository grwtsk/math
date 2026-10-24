# netMaxcard_finite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d04d4b5e-d1bf-28f5-7c07-bf27d85b399d",
  "kind": "lemma",
  "lexical_name": "netMaxcard_finite_iff",
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
  "slug": "netmaxcard-finite-iff--f9733dc9e076aedfccec1269",
  "source": {
    "blob": "3e997501722ff7ab3a7da9284655694fda3bfaab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f9733dc9e076aedfccec12698b747026dd7eafb366fb26201cf5da779b8b7f94",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d04d4b5e-d1bf-28f5-7c07-bf27d85b399d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma netMaxcard_finite_iff (T : X → X) (F : Set X) (U : Set (X × X)) (n : ℕ) :
    netMaxcard T F U n < ⊤ ↔
    ∃ s : Finset X, IsDynNetIn T F U n s ∧ (s.card : ℕ∞) = netMaxcard T F U n := by
  apply Iff.intro <;> intro h
  · obtain ⟨k, k_max⟩ := WithTop.ne_top_iff_exists.1 h.ne
    rw [← k_max]
    simp only [ENat.some_eq_coe, Nat.cast_inj]
    -- The criterion we want to use is `Nat.sSup_mem`. We rewrite `netMaxcard` with an `sSup`,
    -- then check its `BddAbove` and `Nonempty` hypotheses.
    have : netMaxcard T F U n
      = sSup (WithTop.some '' (Finset.card '' {s : Finset X | IsDynNetIn T F U n s})) := by
      rw [netMaxcard, ← image_comp, sSup_image]
      simp only [mem_setOf_eq, ENat.some_eq_coe, Function.comp_apply]
    rw [this] at k_max
    have h_bdda : BddAbove (Finset.card '' {s : Finset X | IsDynNetIn T F U n s}) := by
      refine ⟨k, mem_upperBounds.2 ?_⟩
      simp only [mem_image, mem_setOf_eq, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
      intro s h
      rw [← WithTop.coe_le_coe, k_max]
      apply le_sSup
      simp only [ENat.some_eq_coe, mem_image, mem_setOf_eq, Nat.cast_inj, exists_eq_right]
      exact Filter.frequently_principal.mp fun a ↦ a h rfl
    have h_nemp : (Finset.card '' {s : Finset X | IsDynNetIn T F U n s}).Nonempty := by
      refine ⟨0, ?_⟩
      simp only [mem_image, mem_setOf_eq, Finset.card_eq_zero, exists_eq_right, Finset.coe_empty]
      exact isDynNetIn_empty
    rw [← WithTop.coe_sSup' h_bdda, ENat.some_eq_coe, Nat.cast_inj] at k_max
    have key := Nat.sSup_mem h_nemp h_bdda
    rw [← k_max, mem_image] at key
    simp only [mem_setOf_eq] at key
    exact key
  · obtain ⟨s, _, s_card⟩ := h
    rw [← s_card]
    exact WithTop.coe_lt_top s.card

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant0fc9b6a2d55f93760214526536adb6179961ab9634a78dcb36ff76310841fa3b.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e997501722ff7ab3a7da9284655694fda3bfaab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

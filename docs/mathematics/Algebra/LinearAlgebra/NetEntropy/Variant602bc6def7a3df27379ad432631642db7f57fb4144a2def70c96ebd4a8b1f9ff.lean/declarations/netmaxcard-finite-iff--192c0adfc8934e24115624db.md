# netMaxcard_finite_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c604b84a-400d-fbbc-7483-e98db313b414",
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
  "slug": "netmaxcard-finite-iff--192c0adfc8934e24115624db",
  "source": {
    "blob": "0b33af122a73027f6721a0e16d69f4d50bb08206",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:192c0adfc8934e24115624dbe4481542773b24d7a50440a1e9fa1140b4e80fd7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c604b84a-400d-fbbc-7483-e98db313b414`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma netMaxcard_finite_iff (T : X → X) (F : Set X) (U : SetRel X X) (n : ℕ) :
    netMaxcard T F U n < ⊤ ↔
    ∃ s : Finset X, IsDynNetIn T F U n s ∧ (s.card : ℕ∞) = netMaxcard T F U n := by
  apply Iff.intro <;> intro h
  · obtain ⟨k, k_max⟩ := ENat.ne_top_iff_exists.mp h.ne
    rw [← k_max]
    simp only [Nat.cast_inj]
    -- The criterion we want to use is `Nat.sSup_mem`. We rewrite `netMaxcard` with an `sSup`,
    -- then check its `BddAbove` and `Nonempty` hypotheses.
    have : netMaxcard T F U n
      = sSup (WithTop.some '' Finset.card '' {s : Finset X | IsDynNetIn T F U n s}) := by
      rw [netMaxcard, ← image_comp, sSup_image]
      simp only [mem_ofPred_eq, ENat.some_eq_natCast, Function.comp_apply]
      exact biSup_congr (fun _ _ ↦ rfl)
    rw [this] at k_max
    have h_bdda : BddAbove (Finset.card '' {s : Finset X | IsDynNetIn T F U n s}) := by
      refine ⟨k, mem_upperBounds.2 ?_⟩
      simp only [mem_image, mem_ofPred_eq, forall_exists_index, and_imp, forall_apply_eq_imp_iff₂]
      intro s h
      rw [← ENat.natCast_le_natCast, k_max]
      apply le_sSup
      exact Filter.frequently_principal.mp fun a ↦ a (by simpa using ⟨_, h, rfl⟩) rfl
    have h_nemp : (Finset.card '' {s : Finset X | IsDynNetIn T F U n s}).Nonempty := by
      refine ⟨0, ?_⟩
      simp only [mem_image, mem_ofPred_eq, Finset.card_eq_zero, exists_eq_right, Finset.coe_empty]
      exact isDynNetIn_empty
    rw [← WithTop.coe_sSup' h_bdda] at k_max
    have key := Nat.sSup_mem h_nemp h_bdda
    rw [← Nat.cast_inj.mp k_max, mem_image] at key
    simp only [mem_ofPred_eq] at key
    exact key
  · obtain ⟨s, _, s_card⟩ := h
    rw [← s_card]
    exact WithTop.coe_lt_top s.card

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant602bc6def7a3df27379ad432631642db7f57fb4144a2def70c96ebd4a8b1f9ff.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b33af122a73027f6721a0e16d69f4d50bb08206` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

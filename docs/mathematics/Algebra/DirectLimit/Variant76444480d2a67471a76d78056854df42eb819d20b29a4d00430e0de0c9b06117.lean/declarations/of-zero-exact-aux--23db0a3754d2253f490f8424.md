# of.zero_exact_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 514,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7012098c-db69-f5dc-3171-bba33440aa16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:357f044b-4ee1-65d6-16eb-c272d110874f",
  "kind": "theorem",
  "lexical_name": "of.zero_exact_aux",
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
  "slug": "of-zero-exact-aux--23db0a3754d2253f490f8424",
  "source": {
    "blob": "062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 612,
    "line": 514,
    "path": "GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:23db0a3754d2253f490f8424ffa18f5b4b35c8139c8dae2f0267c55ff0c3ab3b",
  "verification": {
    "reference": "docs/verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:357f044b-4ee1-65d6-16eb-c272d110874f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 514–612.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of.zero_exact_aux [Nonempty ι] [IsDirected ι (· ≤ ·)] {x : FreeCommRing (Σi, G i)}
    (H : (Ideal.Quotient.mk _ x : DirectLimit G fun i j h => f' i j h)
        = (0 : DirectLimit G fun i j h => f' i j h)) :
    ∃ j s,
      ∃ H : ∀ k : Σi, G i, k ∈ s → k.1 ≤ j,
        IsSupported x s ∧
          lift (fun ix : s => f' ix.1.1 j (H ix ix.2) ix.1.2) (restriction s x) = (0 : G j) := by
  refine' span_induction (Ideal.Quotient.eq_zero_iff_mem.1 H) _ _ _ _
  · rintro x (⟨i, j, hij, x, rfl⟩ | ⟨i, rfl⟩ | ⟨i, x, y, rfl⟩ | ⟨i, x, y, rfl⟩)
    · refine'
        ⟨j, {⟨i, x⟩, ⟨j, f' i j hij x⟩}, _,
          isSupported_sub (isSupported_of.2 <| Or.inr rfl) (isSupported_of.2 <| Or.inl rfl), _⟩
      · rintro k (rfl | ⟨rfl | _⟩)
        exact hij
        rfl
      · rw [(restriction _).map_sub, RingHom.map_sub, restriction_of, dif_pos,
          restriction_of, dif_pos, lift_of, lift_of]
        dsimp only
        have := DirectedSystem.map_map (fun i j h => f' i j h) hij (le_refl j : j ≤ j)
        dsimp only at this
        rw [this]
        exact sub_self _
        exacts [Or.inr rfl, Or.inl rfl]
    · refine' ⟨i, {⟨i, 1⟩}, _, isSupported_sub (isSupported_of.2 rfl) isSupported_one, _⟩
      · rintro k (rfl | h)
        rfl
        -- porting note: the Lean3 proof contained `rw [restriction_of]`, but this
        -- lemma does not seem to work here
      · rw [RingHom.map_sub, RingHom.map_sub]
        erw [lift_of, dif_pos rfl, RingHom.map_one, RingHom.map_one, lift_of,
          RingHom.map_one, sub_self]
    · refine'
        ⟨i, {⟨i, x + y⟩, ⟨i, x⟩, ⟨i, y⟩}, _,
          isSupported_sub (isSupported_of.2 <| Or.inl rfl)
            (isSupported_add (isSupported_of.2 <| Or.inr <| Or.inl rfl)
              (isSupported_of.2 <| Or.inr <| Or.inr rfl)),
          _⟩
      · rintro k (rfl | ⟨rfl | ⟨rfl | hk⟩⟩) <;> rfl
      · rw [(restriction _).map_sub, (restriction _).map_add, restriction_of, restriction_of,
          restriction_of, dif_pos, dif_pos, dif_pos, RingHom.map_sub,
          (FreeCommRing.lift _).map_add, lift_of, lift_of, lift_of]
        dsimp only
        rw [(f' i i _).map_add]
        exact sub_self _
        all_goals tauto
    · refine'
        ⟨i, {⟨i, x * y⟩, ⟨i, x⟩, ⟨i, y⟩}, _,
          isSupported_sub (isSupported_of.2 <| Or.inl rfl)
            (isSupported_mul (isSupported_of.2 <| Or.inr <| Or.inl rfl)
              (isSupported_of.2 <| Or.inr <| Or.inr rfl)), _⟩
      · rintro k (rfl | ⟨rfl | ⟨rfl | hk⟩⟩) <;> rfl
      · rw [(restriction _).map_sub, (restriction _).map_mul, restriction_of, restriction_of,
          restriction_of, dif_pos, dif_pos, dif_pos, RingHom.map_sub,
          (FreeCommRing.lift _).map_mul, lift_of, lift_of, lift_of]
        dsimp only
        rw [(f' i i _).map_mul]
        exact sub_self _
        all_goals tauto
        -- porting note: was
        --exacts [sub_self _, Or.inl rfl, Or.inr (Or.inr rfl), Or.inr (Or.inl rfl)]
  · refine' Nonempty.elim (by infer_instance) fun ind : ι => _
    refine' ⟨ind, ∅, fun _ => False.elim, isSupported_zero, _⟩
    -- porting note: `RingHom.map_zero` was `(restriction _).map_zero`
    rw [RingHom.map_zero, (FreeCommRing.lift _).map_zero]
  · rintro x y ⟨i, s, hi, hxs, ihs⟩ ⟨j, t, hj, hyt, iht⟩
    obtain ⟨k, hik, hjk⟩ := exists_ge_ge i j
    have : ∀ z : Σi, G i, z ∈ s ∪ t → z.1 ≤ k := by
      rintro z (hz | hz)
      exact le_trans (hi z hz) hik
      exact le_trans (hj z hz) hjk
    refine'
      ⟨k, s ∪ t, this,
        isSupported_add (isSupported_upwards hxs <| Set.subset_union_left s t)
          (isSupported_upwards hyt <| Set.subset_union_right s t), _⟩
    · -- porting note: was `(restriction _).map_add`
      rw [RingHom.map_add, (FreeCommRing.lift _).map_add, ←
        of.zero_exact_aux2 G f' hxs hi this hik (Set.subset_union_left s t), ←
        of.zero_exact_aux2 G f' hyt hj this hjk (Set.subset_union_right s t), ihs,
        (f' i k hik).map_zero, iht, (f' j k hjk).map_zero, zero_add]
  · rintro x y ⟨j, t, hj, hyt, iht⟩
    rw [smul_eq_mul]
    rcases exists_finset_support x with ⟨s, hxs⟩
    rcases(s.image Sigma.fst).exists_le with ⟨i, hi⟩
    obtain ⟨k, hik, hjk⟩ := exists_ge_ge i j
    have : ∀ z : Σi, G i, z ∈ ↑s ∪ t → z.1 ≤ k := by
      rintro z (hz | hz)
      exacts [(hi z.1 <| Finset.mem_image.2 ⟨z, hz, rfl⟩).trans hik, (hj z hz).trans hjk]
    refine'
      ⟨k, ↑s ∪ t, this,
        isSupported_mul (isSupported_upwards hxs <| Set.subset_union_left (↑s) t)
          (isSupported_upwards hyt <| Set.subset_union_right (↑s) t), _⟩
    -- porting note: RingHom.map_mul was `(restriction _).map_mul`
    rw [RingHom.map_mul, (FreeCommRing.lift _).map_mul, ←
      of.zero_exact_aux2 G f' hyt hj this hjk (Set.subset_union_right (↑s) t), iht,
      (f' j k hjk).map_zero, mul_zero]
#align ring.direct_limit.of.zero_exact_aux Ring.DirectLimit.of.zero_exact_aux

/-- A component that corresponds to zero in the direct limit is already zero in some
bigger module in the directed system. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DirectLimit/Variant76444480d2a67471a76d78056854df42eb819d20b29a4d00430e0de0c9b06117.lean#L514).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `062668ff8e600e6a47952a3a0ebabb8ed2ef2ce7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

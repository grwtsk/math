# exists_mono_in_high_dimension'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26652934-4d6d-d272-4983-1dabab0a4c9b",
  "kind": "theorem",
  "lexical_name": "exists_mono_in_high_dimension'",
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
  "slug": "exists-mono-in-high-dimension--4e6ebe149144a8d9b811dffe",
  "source": {
    "blob": "8e999e0f6222add6024a306ec2cab77164d5592c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 347,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant097b93696a64ba590a20e801bdac51f9043eb67d4b4d9f909ceed22cafc9c408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e6ebe149144a8d9b811dffe48f906f30503c5892ceccbc12d34a0539d211058",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant097b93696a64ba590a20e801bdac51f9043eb67d4b4d9f909ceed22cafc9c408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26652934-4d6d-d272-4983-1dabab0a4c9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 347–455.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exists_mono_in_high_dimension' :
    ∀ (α : Type u) [Finite α] (κ : Type max v u) [Finite κ],
      ∃ (ι : Type) (_ : Fintype ι), ∀ C : (ι → α) → κ, ∃ l : Line α ι, l.IsMono C :=
-- The proof proceeds by induction on `α`.
  Finite.induction_empty_option
  (-- We have to show that the theorem is invariant under `α ≃ α'` for the induction to work.
  fun {α α'} e =>
    forall_imp fun κ =>
      forall_imp fun _ =>
        Exists.imp fun ι =>
          Exists.imp fun _ h C =>
            let ⟨l, c, lc⟩ := h fun v => C (e ∘ v)
            ⟨l.map e, c, e.forall_congr_right.mp fun x => by rw [← lc x, Line.map_apply]⟩)
  (by
    -- This deals with the degenerate case where `α` is empty.
    intro κ _
    by_cases h : Nonempty κ
    · refine ⟨Unit, inferInstance, fun C => ⟨default, Classical.arbitrary _, PEmpty.rec⟩⟩
    · exact ⟨Empty, inferInstance, fun C => (h ⟨C (Empty.rec)⟩).elim⟩)
  (by
    -- Now we have to show that the theorem holds for `Option α` if it holds for `α`.
    intro α _ ihα κ _
    cases nonempty_fintype κ
    -- Later we'll need `α` to be nonempty. So we first deal with the trivial case where `α` is
    -- empty.
    -- Then `Option α` has only one element, so any line is monochromatic.
    by_cases h : Nonempty α
    case neg =>
      refine ⟨Unit, inferInstance, fun C => ⟨diagonal _ Unit, C fun _ => none, ?_⟩⟩
      rintro (_ | ⟨a⟩)
      · rfl
      · exact (h ⟨a⟩).elim
    -- The key idea is to show that for every `r`, in high dimension we can either find
    -- `r` color focused lines or a monochromatic line.
    suffices key :
      ∀ r : ℕ,
        ∃ (ι : Type) (_ : Fintype ι),
          ∀ C : (ι → Option α) → κ,
            (∃ s : ColorFocused C, Multiset.card s.lines = r) ∨ ∃ l, IsMono C l by
      -- Given the key claim, we simply take `r = |κ| + 1`. We cannot have this many distinct colors
      -- so we must be in the second case, where there is a monochromatic line.
      obtain ⟨ι, _inst, hι⟩ := key (Fintype.card κ + 1)
      refine ⟨ι, _inst, fun C => (hι C).resolve_left ?_⟩
      rintro ⟨s, sr⟩
      apply Nat.not_succ_le_self (Fintype.card κ)
      rw [← Nat.add_one, ← sr, ← Multiset.card_map, ← Finset.card_mk]
      exact Finset.card_le_univ ⟨_, s.distinct_colors⟩
    -- We now prove the key claim, by induction on `r`.
    intro r
    induction r with
    -- The base case `r = 0` is trivial as the empty collection is color-focused.
    | zero => exact ⟨Empty, inferInstance, fun C => Or.inl ⟨default, Multiset.card_zero⟩⟩
    | succ r ihr =>
    -- Supposing the key claim holds for `r`, we need to show it for `r+1`. First pick a high
    -- enough dimension `ι` for `r`.
    obtain ⟨ι, _inst, hι⟩ := ihr
    -- Then since the theorem holds for `α` with any number of colors, pick a dimension `ι'` such
    -- that `ι' → α` always has a monochromatic line whenever it is `(ι → Option α) → κ`-colored.
    specialize ihα ((ι → Option α) → κ)
    obtain ⟨ι', _inst, hι'⟩ := ihα
    -- We claim that `ι ⊕ ι'` works for `Option α` and `κ`-coloring.
    refine ⟨ι ⊕ ι', inferInstance, ?_⟩
    intro C
    -- A `κ`-coloring of `ι ⊕ ι' → Option α` induces an `(ι → Option α) → κ`-coloring of `ι' → α`.
    specialize hι' fun v' v => C (Sum.elim v (some ∘ v'))
    -- By choice of `ι'` this coloring has a monochromatic line `l'` with color class `C'`, where
    -- `C'` is a `κ`-coloring of `ι → α`.
    obtain ⟨l', C', hl'⟩ := hι'
    -- If `C'` has a monochromatic line, then so does `C`. We use this in two places below.
    have mono_of_mono : (∃ l, IsMono C' l) → ∃ l, IsMono C l := by
      rintro ⟨l, c, hl⟩
      refine ⟨l.horizontal (some ∘ l' (Classical.arbitrary α)), c, fun x => ?_⟩
      rw [Line.horizontal_apply, ← hl, ← hl']
    -- By choice of `ι`, `C'` either has `r` color-focused lines or a monochromatic line.
    specialize hι C'
    rcases hι with (⟨s, sr⟩ | h)
    on_goal 2 => exact Or.inr (mono_of_mono h)
    -- Here we assume `C'` has `r` color focused lines. We split into cases depending on whether
    -- one of these `r` lines has the same color as the focus point.
    by_cases h : ∃ p ∈ s.lines, (p : AlmostMono _).color = C' s.focus
    -- If so then this is a `C'`-monochromatic line and we are done.
    · obtain ⟨p, p_mem, hp⟩ := h
      refine Or.inr (mono_of_mono ⟨p.line, p.color, ?_⟩)
      rintro (_ | _)
      · rw [hp, s.is_focused p p_mem]
      · apply p.has_color
    -- If not, we get `r+1` color focused lines by taking the product of the `r` lines with `l'`
    -- and adding to this the vertical line obtained by the focus point and `l`.
    refine Or.inl ⟨⟨(s.lines.map ?_).cons ⟨(l'.map some).vertical s.focus, C' s.focus, fun x => ?_⟩,
            Sum.elim s.focus (l'.map some none), ?_, ?_⟩, ?_⟩
    -- The product lines are almost monochromatic.
    · refine fun p => ⟨p.line.prod (l'.map some), p.color, fun x => ?_⟩
      rw [Line.prod_apply, Line.map_apply, ← p.has_color, ← congr_fun (hl' x)]
    -- The vertical line is almost monochromatic.
    · rw [vertical_apply, ← congr_fun (hl' x), Line.map_apply]
    -- Our `r+1` lines have the same endpoint.
    · simp_rw [Multiset.mem_cons, Multiset.mem_map]
      rintro _ (rfl | ⟨q, hq, rfl⟩)
      · simp only [vertical_apply]
      · simp only [prod_apply, s.is_focused q hq]
    -- Our `r+1` lines have distinct colors (this is why we needed to split into cases above).
    · rw [Multiset.map_cons, Multiset.map_map, Multiset.nodup_cons, Multiset.mem_map]
      exact ⟨h, s.distinct_colors⟩
    -- Finally, we really do have `r+1` lines!
    · rw [Multiset.card_cons, Multiset.card_map, sr])

/-- The **Hales-Jewett theorem**: For any finite types `α` and `κ`, there exists a finite type `ι`
such that whenever the hypercube `ι → α` is `κ`-colored, there is a monochromatic combinatorial
line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant097b93696a64ba590a20e801bdac51f9043eb67d4b4d9f909ceed22cafc9c408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HalesJewett/Variant097b93696a64ba590a20e801bdac51f9043eb67d4b4d9f909ceed22cafc9c408.lean#L347).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e999e0f6222add6024a306ec2cab77164d5592c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

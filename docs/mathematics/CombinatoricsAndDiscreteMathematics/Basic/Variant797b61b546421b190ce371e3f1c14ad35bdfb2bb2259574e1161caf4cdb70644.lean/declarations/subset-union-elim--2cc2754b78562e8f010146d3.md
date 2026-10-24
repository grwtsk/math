# subset_union_elim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9c610c1-4c77-e5e8-ce40-abda0d895e3e",
  "kind": "theorem",
  "lexical_name": "subset_union_elim",
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
  "slug": "subset-union-elim--2cc2754b78562e8f010146d3",
  "source": {
    "blob": "b60684812356eac00940fb922aa14757ea39b085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2936,
    "line": 2894,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc2754b78562e8f010146d3bc866fdf7a228f535fe8333e4aa875187fef38c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9c610c1-4c77-e5e8-ce40-abda0d895e3e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2894–2936.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subset_union_elim {s : Finset α} {t₁ t₂ : Set α} (h : ↑s ⊆ t₁ ∪ t₂) :
    ∃ s₁ s₂ : Finset α, s₁ ∪ s₂ = s ∧ ↑s₁ ⊆ t₁ ∧ ↑s₂ ⊆ t₂ \ t₁ := by
  classical
    refine' ⟨s.filter (· ∈ t₁), s.filter (· ∉ t₁), _, _, _⟩
    · simp [filter_union_right, em]
    · intro x
      simp
    · intro x
      simp
      intro hx hx₂
      refine' ⟨Or.resolve_left (h hx) hx₂, hx₂⟩
#align finset.subset_union_elim Finset.subset_union_elim

-- Porting note: likely no longer relevant with `Bool`s
#noalign finset.filter_congr_decidable

section Classical

open Classical

-- Porting note: The notation `{ x ∈ s | p x }` in Lean 4 is hardcoded to be about `Set`.
-- So at the moment the whole `Sep`-class is useless, as it doesn't have notation.
-- /-- The following instance allows us to write `{x ∈ s | p x}` for `Finset.filter p s`.
--   We don't want to redo all lemmas of `Finset.filter` for `Sep.sep`, so we make sure that `simp`
--   unfolds the notation `{x ∈ s | p x}` to `Finset.filter p s`.
-- -/
-- noncomputable instance {α : Type*} : Sep α (Finset α) :=
--   ⟨fun p x => x.filter p⟩

-- -- @[simp] -- Porting note: not a simp-lemma until `Sep`-notation is fixed.
-- theorem sep_def {α : Type*} (s : Finset α) (p : α → Prop) : { x ∈ s | p x } = s.filter p := by
--   ext
--   simp
-- #align finset.sep_def Finset.sep_def

end Classical

-- This is not a good simp lemma, as it would prevent `Finset.mem_filter` from firing
-- on, e.g. `x ∈ s.filter (Eq b)`.
/-- After filtering out everything that does not equal a given value, at most that value remains.

  This is equivalent to `filter_eq'` with the equality the other way.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant797b61b546421b190ce371e3f1c14ad35bdfb2bb2259574e1161caf4cdb70644.lean#L2894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b60684812356eac00940fb922aa14757ea39b085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# image_iterate_stabilises_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99f0f56a-9787-1b70-9926-1ff88dc2d3dc",
  "kind": "theorem",
  "lexical_name": "image_iterate_stabilises_lt_card",
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
  "slug": "image-iterate-stabilises-lt-card--46ac0caf0b9bf483a8b3ba31",
  "source": {
    "blob": "ae16dc8a4e379463f11277b2f94281a27d0f2d93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 991,
    "line": 971,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46ac0caf0b9bf483a8b3ba3109b5ac6db295d14ce21d8f510b0e17eef058bafb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99f0f56a-9787-1b70-9926-1ff88dc2d3dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 971–991.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_iterate_stabilises_lt_card [DecidableEq α] {f : α → α} {s : Finset α}
    (hs : Set.MapsTo f s s) (hs₀ : s.Nonempty) :
    ∃ n < #s, ∀ m, n ≤ m → s.image f^[m] = s.image f^[n] := by
  let g (i : ℕ) : Finset α := s.image f^[i]
  have (i : ℕ) : 0 < #(g i) := (hs₀.image _).card_pos
  have hg : Antitone g := antitone_nat_of_succ_le <| fun i ↦ by
    simp_rw [g, Function.iterate_succ, ← image_image]
    grw [hs.finsetImage_subset]
  have eq_iff (i j : ℕ) : #(g i) - 1 = #(g j) - 1 ↔ g i = g j := by
    wlog hij : j ≤ i generalizing i j
    · grind
    exact ⟨fun h ↦ eq_of_subset_of_card_le (hg hij) (by grind), by grind⟩
  have hG : Antitone (fun i ↦ #(g i) - 1) := fun i j h ↦ by dsimp; gcongr #?_ - 1; exact hg h
  rcases Nat.stabilises_of_antitone hG (by grind [=_ image_image, iterate_succ']) with ⟨n, hn, hn'⟩
  exact ⟨n, by grind⟩

/--
Given a function `f` which sends the finite set `s` to itself, the sequence of images of `s` under
iterates of `f` is eventually constant. Furthermore, the sequence of images stabilises in at most
`#s` steps.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantd6995fcbea82c6838696482df3060a31591bc12545c92837a49726bbf3babbbe.lean#L971).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ae16dc8a4e379463f11277b2f94281a27d0f2d93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

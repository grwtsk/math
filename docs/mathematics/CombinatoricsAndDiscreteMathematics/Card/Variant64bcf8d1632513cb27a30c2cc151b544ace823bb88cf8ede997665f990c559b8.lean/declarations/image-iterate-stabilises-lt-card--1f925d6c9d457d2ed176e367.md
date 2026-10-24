# image_iterate_stabilises_lt_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "493d7c6c08ecb7577d201d3318dbb075bb30f04a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 963,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/64/64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7c5c0481-2b4d-8ba6-6510-7fad1e1b333c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62165547-d1b2-0fe9-5e98-0f1e68db60db",
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
  "slug": "image-iterate-stabilises-lt-card--1f925d6c9d457d2ed176e367",
  "source": {
    "blob": "493d7c6c08ecb7577d201d3318dbb075bb30f04a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 983,
    "line": 963,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f925d6c9d457d2ed176e36716a30f31d305eb1002861c748f1afdb5f15a557a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62165547-d1b2-0fe9-5e98-0f1e68db60db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 963–983.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variant64bcf8d1632513cb27a30c2cc151b544ace823bb88cf8ede997665f990c559b8.lean#L963).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493d7c6c08ecb7577d201d3318dbb075bb30f04a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

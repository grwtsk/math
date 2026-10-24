# map_enumFrom_eq_zipWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5e71ffe3e0832ff94cf98b0613fb8466ab449f23",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/29/291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21955c4c-bb48-19f9-c979-314429c14ab5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02d4520e-712b-a39f-f8f6-2ca35e3a97f0",
  "kind": "theorem",
  "lexical_name": "map_enumFrom_eq_zipWith",
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
  "slug": "map-enumfrom-eq-zipwith--e191490dfab27f3d06f45020",
  "source": {
    "blob": "5e71ffe3e0832ff94cf98b0613fb8466ab449f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e191490dfab27f3d06f45020ba96d1aa028062b3153f7f4d7a9cbfe1dc59aa0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02d4520e-712b-a39f-f8f6-2ca35e3a97f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_enumFrom_eq_zipWith : ∀ (l : List α) (n : ℕ) (f : ℕ → α → β),
    map (uncurry f) (enumFrom n l) = zipWith (fun i ↦ f (i + n)) (range (length l)) l := by
  intro l
  generalize e : l.length = len
  revert l
  induction' len with len ih <;> intros l e n f
  · have : l = [] := by
      cases l
      · rfl
      · contradiction
    rw [this]; rfl
  · rcases l with - | ⟨head, tail⟩
    · contradiction
    · simp only [enumFrom_cons, map_cons, range_succ_eq_map, zipWith_cons_cons,
        Nat.zero_add, zipWith_map_left, true_and]
      rw [ih]
      · suffices (fun i ↦ f (i + (n + 1))) = ((fun i ↦ f (i + n)) ∘ Nat.succ) by
          rw [this]
          rfl
        funext n' a
        simp only [comp, Nat.add_assoc, Nat.add_comm, Nat.add_succ]
      simp only [length_cons, Nat.succ.injEq] at e; exact e

set_option linter.deprecated false in
@[deprecated "Deprecated without replacement." (since := "2025-01-29")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Indexes/Variant291c607a14ad0787f3844c8ac232be49889395309d63a96106d60c199842af91.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e71ffe3e0832ff94cf98b0613fb8466ab449f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

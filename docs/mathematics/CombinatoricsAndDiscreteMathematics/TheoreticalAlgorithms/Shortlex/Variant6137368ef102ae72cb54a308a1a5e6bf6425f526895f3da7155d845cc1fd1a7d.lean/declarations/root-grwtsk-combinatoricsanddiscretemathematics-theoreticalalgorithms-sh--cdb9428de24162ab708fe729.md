# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shortlex.Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.Acc.shortlex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fb30154e-e6a2-a1e0-1945-a56ed2698027",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shortlex.Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.Acc.shortlex",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-sh--cdb9428de24162ab708fe729",
  "source": {
    "blob": "0a0ba5948ff6aca663c7ff7a316b6f8413c59d05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb9428de24162ab708fe729f0329f5748d0a12315a262574ac098baa360da0d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb30154e-e6a2-a1e0-1945-a56ed2698027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Shortlex.Variante0d5b2f32e7efba9a75dd143d8124801addd5603bd6749780c87bb3f2e570240.Acc.shortlex {a : α} {b : List α} (aca : Acc r a)
    (acb : Acc (Shortlex r) b)
    (ih : ∀ s : List α, s.length < (a :: b).length → Acc (Shortlex r) s) :
    Acc (Shortlex r) (a :: b) := by
  induction aca generalizing b with
  | intro xa _ iha =>
    induction acb with
    | intro xb _ ihb =>
      refine Acc.intro (xa :: xb) fun p lt => ?_
      rcases shortlex_def.mp lt with h1 | ⟨h2len, h2lex⟩
      · exact ih _ h1
      · cases h2lex with
        | nil => simp at h2len
        | @cons x xs _ h =>
          simp only [length_cons, add_left_inj] at h2len
          refine ihb _ (of_lex h2len h) fun l hl => ?_
          apply ih
          rw [List.length_cons, ← h2len]
          exact hl
        | @rel x xs _ _ h =>
          simp only [List.length_cons, List.singleton_append, add_left_inj] at h2len
          refine iha _ h (ih xs (by rw [h2len]; simp)) fun l hl => ?_
          apply ih
          rw [List.length_cons, ← h2len]
          exact hl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Shortlex/Variant6137368ef102ae72cb54a308a1a5e6bf6425f526895f3da7155d845cc1fd1a7d.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0ba5948ff6aca663c7ff7a316b6f8413c59d05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

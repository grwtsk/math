# Iter.toList_intermediateZip_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c83eeaf95c2c5e2139b4d5d288e7be2588c51241",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a08b36f-234a-4609-2cc5-bcb8d3e8d03e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:552ff11a-83cc-e72a-dfa1-4805c954439c",
  "kind": "theorem",
  "lexical_name": "Iter.toList_intermediateZip_of_finite",
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
  "slug": "iter-tolist-intermediatezip-of-finite--35d00a1e11f142eef4c52768",
  "source": {
    "blob": "c83eeaf95c2c5e2139b4d5d288e7be2588c51241",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 111,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35d00a1e11f142eef4c527688335ab08103b83a8c70606e96ea3aae127f045d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:552ff11a-83cc-e72a-dfa1-4805c954439c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Iter.toList_intermediateZip_of_finite [Iterator α₁ Id β₁] [Iterator α₂ Id β₂]
    {it₁ : Iter (α := α₁) β₁} {memo} {it₂ : Iter (α := α₂) β₂}
    [Finite α₁ Id] [Finite α₂ Id] :
    (Intermediate.zip it₁ memo it₂).toList = ((memo.map Subtype.val).toList ++ it₁.toList).zip it₂.toList := by
  generalize h : Intermediate.zip it₁ memo it₂ = it
  revert h it₁ memo it₂
  induction it using Iter.inductSteps with | step _ ihy ihs
  rintro it₁ memo it₂ rfl
  rw [Iter.toList_eq_match_step]
  match hs : (Intermediate.zip it₁ memo it₂).step with
  | .yield it' out hp =>
    rw [step_intermediateZip] at hs
    cases memo
    case none =>
      generalize it₁.step = step₁ at *
      obtain ⟨step₁, h₁⟩ := step₁
      cases step₁ <;> cases hs
    case some =>
      rw [Iter.toList_eq_match_step (it := it₂)]
      generalize it₂.step = step₂ at *
      obtain ⟨step₂, h₂⟩ := step₂
      cases step₂
      · cases hs
        simp [ihy hp rfl]
      · cases hs
      · cases hs
  | .skip it' hp =>
    rw [step_intermediateZip] at hs
    cases memo
    case none =>
      rw [Iter.toList_eq_match_step (it := it₁)]
      generalize it₁.step = step₁ at *
      obtain ⟨step₁, h₁⟩ := step₁
      cases step₁
      · cases hs
        simp [ihs hp rfl]
      · cases hs
        simp [ihs hp rfl]
      · cases hs
    case some =>
      rw [Iter.toList_eq_match_step (it := it₂)]
      generalize it₂.step = step₂ at *
      obtain ⟨step₂, h₂⟩ := step₂
      cases step₂
      · cases hs
      · cases hs
        simp [ihs hp rfl]
      · cases hs
  | .done hp =>
    rw [step_intermediateZip] at hs
    cases memo
    case none =>
      rw [Iter.toList_eq_match_step (it := it₁)]
      generalize it₁.step = step₁ at *
      obtain ⟨step₁, h₁⟩ := step₁
      cases step₁
      · cases hs
      · cases hs
      · cases hs
        simp
    case some =>
      rw [Iter.toList_eq_match_step (it := it₂)]
      generalize it₂.step = step₂ at *
      obtain ⟨step₂, h₁⟩ := step₂
      cases step₂
      · cases hs
      · cases hs
      · cases hs
        simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Zip/Varianta5d118d304d622c46aa9fb135326f0cceac2714bed29b819e4f39f8cf28c1140.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c83eeaf95c2c5e2139b4d5d288e7be2588c51241` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

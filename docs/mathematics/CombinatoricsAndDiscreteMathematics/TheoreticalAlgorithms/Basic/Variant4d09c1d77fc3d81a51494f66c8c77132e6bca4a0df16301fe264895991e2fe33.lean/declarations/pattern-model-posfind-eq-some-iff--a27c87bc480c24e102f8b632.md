# Pattern.Model.posFind?_eq_some_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "565073aad8a50eda5c3400f5ca35433b5c2b09ed",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 88,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4d/4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59b8b3e6-e4d5-91ac-3519-9b36029d1426",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:332006cb-2846-fcf4-804e-b92f4475cbde",
  "kind": "theorem",
  "lexical_name": "Pattern.Model.posFind?_eq_some_iff",
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
  "slug": "pattern-model-posfind-eq-some-iff--a27c87bc480c24e102f8b632",
  "source": {
    "blob": "565073aad8a50eda5c3400f5ca35433b5c2b09ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a27c87bc480c24e102f8b6321c5493c72f61b7321777f39048380fbfb1a1e921",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:332006cb-2846-fcf4-804e-b92f4475cbde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pattern.Model.posFind?_eq_some_iff {ρ : Type} {pat : ρ} [PatternModel pat] [StrictPatternModel pat] {σ : Slice → Type}
    [∀ s, Iterator (σ s) Id (SearchStep s)] [∀ s, Iterators.Finite (σ s) Id]
    [∀ s, IteratorLoop (σ s) Id Id] [∀ s, LawfulIteratorLoop (σ s) Id Id]
    [ToForwardSearcher pat σ] [LawfulToForwardSearcherModel pat] {s : Slice} {pos pos' : s.Pos} :
    pos.find? pat = some pos' ↔ pos ≤ pos' ∧ MatchesAt pat pos' ∧ (∀ pos'', pos ≤ pos'' → pos'' < pos' → ¬ MatchesAt pat pos'') := by
  simp only [Pos.find?_eq_find?_sliceFrom, Option.map_eq_some_iff, find?_eq_some_iff,
    matchesAt_iff_matchesAt_ofSliceFrom]
  refine ⟨?_, ?_⟩
  · rintro ⟨pos', ⟨h₁, h₂⟩, rfl⟩
    refine ⟨Pos.le_ofSliceFrom, h₁, fun p hp₁ hp₂ => ?_⟩
    simpa using h₂ (Pos.sliceFrom _ _ hp₁) (Pos.sliceFrom_lt_iff.2 hp₂)
  · rintro ⟨h₁, h₂, h₃⟩
    refine ⟨Pos.sliceFrom _ _ h₁, ⟨by simpa using h₂, fun p hp₁ hp₂ => ?_⟩, by simp⟩
    exact h₃ (Pos.ofSliceFrom p) Slice.Pos.le_ofSliceFrom (Pos.lt_sliceFrom_iff.1 hp₁) hp₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant4d09c1d77fc3d81a51494f66c8c77132e6bca4a0df16301fe264895991e2fe33.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565073aad8a50eda5c3400f5ca35433b5c2b09ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

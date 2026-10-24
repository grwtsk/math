# Pattern.Model.Pos.revSkipWhile_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:97c8744a-c71a-44af-5e14-0dfce26408d5",
  "kind": "theorem",
  "lexical_name": "Pattern.Model.Pos.revSkipWhile_eq_iff",
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
  "slug": "pattern-model-pos-revskipwhile-eq-iff--21c67e664b5afa97aad8dae4",
  "source": {
    "blob": "85ffb0536e67f0c736189beed25f8684280f3b45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 596,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21c67e664b5afa97aad8dae444a1f4472070a0a0881d67316e370d140e1d60e7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c8744a-c71a-44af-5e14-0dfce26408d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 596–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pattern.Model.Pos.revSkipWhile_eq_iff {ρ : Type} (pat : ρ) [PatternModel pat]
    [BackwardPattern pat] [LawfulBackwardPatternModel pat] {s : Slice} (startPos endPos : s.Pos) :
    endPos.revSkipWhile pat = startPos ↔ IsLongestRevMatchAtChain pat startPos endPos ∧
      (¬RevMatchesAt pat startPos ∨ IsLongestRevMatchAt pat startPos startPos) := by
  fun_induction Pos.revSkipWhile with
  | case1 pos nextCurr h₁ h₂ ih =>
    rw [revSkip?_eq_revMatchAt?, revMatchAt?_eq_some_iff] at h₁
    refine ih.trans ⟨fun ⟨hx, hy⟩ => ⟨.cons _ _ _ hx h₁, hy⟩, fun ⟨hx, hy⟩ => ⟨?_, hy⟩⟩
    cases hx with
    | nil =>
      refine hy.elim (fun h => (h h₁.revMatchesAt).elim) (fun h => ?_)
      obtain rfl := h₁.eq h
      exact .nil _
    | cons mid endP hx' hy' =>
      obtain rfl := hy'.eq h₁
      exact hx'
  | case2 pos nextCurr h₁ h₂ =>
    rw [revSkip?_eq_revMatchAt?, revMatchAt?_eq_some_iff] at h₁
    obtain rfl := Std.le_antisymm h₁.le (Std.not_lt.1 h₂)
    refine ⟨?_, fun ⟨hx, hy⟩ => ?_⟩
    · rintro rfl
      exact ⟨.nil _, Or.inr h₁⟩
    · exact (hx.eq_of_isLongestRevMatchAt_self h₁).symm
  | case3 pos h =>
    rw [revSkip?_eq_revMatchAt?, revMatchAt?_eq_none_iff] at h
    refine ⟨?_, ?_⟩
    · rintro rfl
      exact ⟨.nil _, Or.inl h⟩
    · rintro ⟨(_|⟨mid, endP, hx, hy⟩), -⟩
      · rfl
      · exact (h hy.revMatchesAt).elim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant89d6bf7e048f542ca8f4072e3fd0e4aed6ddb6a9589ffbc971b24fd7ed01cd8f.lean#L596).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `85ffb0536e67f0c736189beed25f8684280f3b45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

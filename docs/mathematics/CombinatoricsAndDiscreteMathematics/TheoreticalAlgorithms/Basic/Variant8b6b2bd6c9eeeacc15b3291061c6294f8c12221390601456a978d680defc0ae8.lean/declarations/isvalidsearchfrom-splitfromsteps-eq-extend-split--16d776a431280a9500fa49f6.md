# IsValidSearchFrom.splitFromSteps_eq_extend_split

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "21251ddf6bd8abc62748637d3c5bf6b8e492dbf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8b/8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97b55f11-abd0-b43b-dee3-2d4935f8f561",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:92622b3b-bb05-fb43-715c-e8fff5196a37",
  "kind": "theorem",
  "lexical_name": "IsValidSearchFrom.splitFromSteps_eq_extend_split",
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
  "slug": "isvalidsearchfrom-splitfromsteps-eq-extend-split--16d776a431280a9500fa49f6",
  "source": {
    "blob": "21251ddf6bd8abc62748637d3c5bf6b8e492dbf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 105,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16d776a431280a9500fa49f646c546895e36353916dc9c8cd318b3e2e1a4318b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92622b3b-bb05-fb43-715c-e8fff5196a37`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsValidSearchFrom.splitFromSteps_eq_extend_split {ρ : Type} (pat : ρ)
    [PatternModel pat] [StrictPatternModel pat] (l : List (SearchStep s)) (pos pos' : s.Pos) (h₀ : pos ≤ pos')
    (h' : ∀ p, pos ≤ p → p < pos' → ¬ MatchesAt pat p)
    (h : IsValidSearchFrom pat pos' l) :
    splitFromSteps pos l = Model.split pat pos pos' h₀ := by
  induction h generalizing pos with
  | endPos =>
    simp [splitFromSteps]
  | matched h valid ih =>
    simp only [splitFromSteps]
    rw [subslice!_eq_subslice h₀, split_eq_of_isLongestMatchAt h, ih]
    simp +contextual [← Std.not_lt]
  | mismatched h rej valid ih =>
    simp only [splitFromSteps]
    rename_i l startPos endPos
    rw [split_eq_of_not_matchesAt _ (Std.le_of_lt h) rej, ih]
    intro p hp₁ hp₂
    by_cases hp : p < startPos
    · exact h' p hp₁ hp
    · exact rej _ (Std.not_lt.1 hp) hp₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant8b6b2bd6c9eeeacc15b3291061c6294f8c12221390601456a978d680defc0ae8.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21251ddf6bd8abc62748637d3c5bf6b8e492dbf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Pattern.Model.eq_append_of_dropSuffix?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8fb5da709d1ecd77fc86f0e3c1913774f63af7ba",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 479,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06464eda59bdbae10155ecaa661232923f5e06c847d52a6c013adadee8f09ac4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c6e4053-530e-975f-8b4b-b69e897bec44",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f654758f-a4e5-5dbb-8873-04a6255d7780",
  "kind": "theorem",
  "lexical_name": "Pattern.Model.eq_append_of_dropSuffix?_eq_some",
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
  "slug": "pattern-model-eq-append-of-dropsuffix-eq-some--1f7adf37149488325fe497db",
  "source": {
    "blob": "8fb5da709d1ecd77fc86f0e3c1913774f63af7ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 479,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant06464eda59bdbae10155ecaa661232923f5e06c847d52a6c013adadee8f09ac4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1f7adf37149488325fe497db951da8dbdba357d43302752733da225087ff9ab6",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant06464eda59bdbae10155ecaa661232923f5e06c847d52a6c013adadee8f09ac4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f654758f-a4e5-5dbb-8873-04a6255d7780`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 479–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Pattern.Model.eq_append_of_dropSuffix?_eq_some {ρ : Type} {pat : ρ} [PatternModel pat] [BackwardPattern pat]
    [LawfulBackwardPatternModel pat] {s res : Slice} (h : s.dropSuffix? pat = some res) :
    ∃ t, PatternModel.Matches pat t ∧ s.copy = res.copy ++ t := by
  simp only [dropSuffix?_eq_map_skipSuffix?, Option.map_eq_some_iff, skipSuffix?_eq_some_iff] at h
  obtain ⟨pos, h₁, h₂⟩ := h
  exact ⟨(s.sliceFrom pos).copy, h₁.isRevMatch.matches_copy, by simp [← h₂]⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant06464eda59bdbae10155ecaa661232923f5e06c847d52a6c013adadee8f09ac4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant06464eda59bdbae10155ecaa661232923f5e06c847d52a6c013adadee8f09ac4.lean#L479).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fb5da709d1ecd77fc86f0e3c1913774f63af7ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b734842b9e29aff8d25c22325ef271b460dc0996b8162c668a58554dbc74e541",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bdfc49aaad284afe0efc4293",
  "source": {
    "blob": "13fb4183504a6263ed40f5bfcdad5402e4148056",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bdfc49aaad284afe0efc429335434824d294f72a7a31fea7fdd44ebcc1057976",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b734842b9e29aff8d25c22325ef271b460dc0996b8162c668a58554dbc74e541`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Std.Iterator (SplitInclusiveIterator pat s) Id Slice where
  IsPlausibleStep
    | ⟨.operating _ s⟩, .yield ⟨.operating _ s'⟩ _ => s'.IsPlausibleSuccessorOf s
    | ⟨.operating _ s⟩, .yield ⟨.atEnd ..⟩ _ => True
    | ⟨.operating _ s⟩, .skip ⟨.operating _ s'⟩ => s'.IsPlausibleSuccessorOf s
    | ⟨.operating _ s⟩, .skip ⟨.atEnd ..⟩ => False
    | ⟨.operating _ s⟩, .done => True
    | ⟨.atEnd⟩, .yield .. => False
    | ⟨.atEnd⟩, .skip _ => False
    | ⟨.atEnd⟩, .done => True
  step
    | ⟨.operating currPos searcher⟩ =>
      match h : searcher.step with
      | ⟨.yield searcher' (.matched _ endPos), hps⟩ =>
        let slice := s.slice! currPos endPos
        let nextIt := ⟨.operating endPos searcher'⟩
        pure (.deflate ⟨.yield nextIt slice,
          by simp [nextIt, hps.isPlausibleSuccessor_of_yield]⟩)
      | ⟨.yield searcher' (.rejected ..), hps⟩ =>
        pure (.deflate ⟨.skip ⟨.operating currPos searcher'⟩,
          by simp [hps.isPlausibleSuccessor_of_yield]⟩)
      | ⟨.skip searcher', hps⟩ =>
        pure (.deflate ⟨.skip ⟨.operating currPos searcher'⟩,
          by simp [hps.isPlausibleSuccessor_of_skip]⟩)
      | ⟨.done, _⟩ =>
        if currPos != s.endPos then
          let slice := s.sliceFrom currPos
          pure (.deflate ⟨.yield ⟨.atEnd⟩ slice, by simp⟩)
        else
          pure (.deflate ⟨.done, by simp⟩)
    | ⟨.atEnd⟩ => pure (.deflate ⟨.done, by simp⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variantbd0f01eb26faa0b6a4b15df3a1a1a2aba09ac4e1e79a5701d7768f6788552733.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13fb4183504a6263ed40f5bfcdad5402e4148056` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

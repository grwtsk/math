# phrase_has_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6d74ac2-7dbf-f4a2-cc0c-af6bf7010160",
  "kind": "theorem",
  "lexical_name": "phrase_has_source",
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
  "slug": "phrase-has-source--a4f04741a83dc3809381a17f",
  "source": {
    "blob": "815c4738ad32692d6c6b3704b76d665550adb7b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 38,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Phrase/Variant86454fe39cfce0bb24bba2a9faf3c93e06e5af27fa54febbcb731997102b1718.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a4f04741a83dc3809381a17f5fc656855ed2dc4e16dd0a1a78f27c9def3a7bd0",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Phrase/Variant86454fe39cfce0bb24bba2a9faf3c93e06e5af27fa54febbcb731997102b1718.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6d74ac2-7dbf-f4a2-cc0c-af6bf7010160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phrase_has_source
    {cut : EvidenceCut}
    (phrase : PhraseCandidate cut) :
    ∃ index : Fin phrase.spans.size,
      (phrase.spans[index]).Valid := by
  let index : Fin phrase.spans.size :=
    ⟨0, phrase.nonempty⟩
  exact ⟨index, (phrase.spans[index]).valid⟩

end Mathematics.SemanticTokenization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Phrase/Variant86454fe39cfce0bb24bba2a9faf3c93e06e5af27fa54febbcb731997102b1718.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Phrase/Variant86454fe39cfce0bb24bba2a9faf3c93e06e5af27fa54febbcb731997102b1718.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `815c4738ad32692d6c6b3704b76d665550adb7b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

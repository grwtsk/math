# all_external_only_cannot_exclude

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:018110ef-8a0c-a026-930c-42ccf16a9c0d",
  "kind": "theorem",
  "lexical_name": "all_external_only_cannot_exclude",
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
  "slug": "all-external-only-cannot-exclude--f631082249161c2d6c587bd2",
  "source": {
    "blob": "7e02fb860ff80b2d21ede0fe05c37fd595249c23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 216,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f631082249161c2d6c587bd2dbceab46ae07cacacaa09e090935dc0ee0920146",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:018110ef-8a0c-a026-930c-42ccf16a9c0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem all_external_only_cannot_exclude
    (stage : ReductiveSelectionStage State cone decomposition objective)
    (state : State)
    (site : decomposition.Piece)
    (externalOnly : ∀ theoremAdapter ∈ stage.classificationTheorems,
      ExternalOnlyAt theoremAdapter state site) :
    ¬ CanSafelyExclude stage state site := by
  intro canExclude
  obtain ⟨theoremAdapter, member, proof, assessment⟩ := canExclude.1
  exact (external_only_assessment_cannot_exclude
    theoremAdapter state site (externalOnly theoremAdapter member))
    ⟨proof, assessment⟩

end Classification

/-- Build exact provenance from a selected theorem adapter. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ReductiveSiteSelection/Variant572f006a09f39c1f6c596f4043a40723db36fea1a17ffb97d4d82520bde71c98.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e02fb860ff80b2d21ede0fe05c37fd595249c23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

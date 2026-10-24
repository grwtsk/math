# SourceRecordsAligned

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a68950c765d928dee4aba26e3fe77d5fc8bb4f7285b9c37c5a3a801f633844fe",
  "kind": "def",
  "lexical_name": "SourceRecordsAligned",
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
  "slug": "sourcerecordsaligned--ec8ec6c1563631f5cd302841",
  "source": {
    "blob": "6ee3738876f45b3b78eb614dd44670348e73fdd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 129,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec8ec6c1563631f5cd3028419c58db3f0495ef5cd8717d6baa8738f33ffa470b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a68950c765d928dee4aba26e3fe77d5fc8bb4f7285b9c37c5a3a801f633844fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SourceRecordsAligned (extraction : EnvironmentExtraction) : Prop :=
  (extraction.sources.toList.map (·.sourceRecordId)).Nodup ∧
  (∀ source ∈ extraction.sources,
    ∃ declaration ∈ extraction.declarations,
      declaration.declarationId = source.declarationId ∧
      declaration.canonicalName = source.declaration) ∧
  ∀ declaration ∈ extraction.declarations,
    ∀ sourceId, declaration.sourceRecordId = some sourceId →
      sourceId ∈ extraction.sources.toList.map (·.sourceRecordId)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Core/Varianta34fc354272b8d185b6c89b9bbbdcd0baa3c82b67a44df2d6c568b80cf2eecad.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ee3738876f45b3b78eb614dd44670348e73fdd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

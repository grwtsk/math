# attention_changes_of_selectedVersion_change

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1da524ba-9091-bf94-d077-274f219a3b6d",
  "kind": "theorem",
  "lexical_name": "attention_changes_of_selectedVersion_change",
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
  "slug": "attention-changes-of-selectedversion-change--0f0673768f8b27fe4ddf5344",
  "source": {
    "blob": "33183e42b0376ba2668725f376669af4ecef4373",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 165,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0f0673768f8b27fe4ddf534481f9a838d60bab5d0a81d9a2de4c01e893cf2615",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da524ba-9091-bf94-d077-274f219a3b6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem attention_changes_of_selectedVersion_change
    {registry : WorldModelRegistry}
    (scheme : VersionSensitiveAttention registry)
    (models : Finset registry.ModelId)
    (first second :
      ∀ id, id ∈ models → WorldModelVersionId)
    (changed : ∃ id, ∃ member : id ∈ models,
      first id member ≠ second id member) :
    scheme.identity models first ≠ scheme.identity models second :=
  scheme.sensitive models first second changed

end ActiveModelRegion

end Surface.ContinuousAssurance.WorldModel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ActiveRegion/Variant1cae83f9f29b51ce5f1b9ac70a9c7087d0e786ce60fc916bd2072ea5b40e78e3.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33183e42b0376ba2668725f376669af4ecef4373` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

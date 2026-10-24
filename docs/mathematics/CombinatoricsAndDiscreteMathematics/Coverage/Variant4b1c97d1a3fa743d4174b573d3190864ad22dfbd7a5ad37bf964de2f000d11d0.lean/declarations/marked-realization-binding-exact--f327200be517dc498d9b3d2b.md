# marked_realization_binding_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cef455c5-e069-ce94-2c25-9866caf885a6",
  "kind": "theorem",
  "lexical_name": "marked_realization_binding_exact",
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
  "slug": "marked-realization-binding-exact--f327200be517dc498d9b3d2b",
  "source": {
    "blob": "fcec9691b43bf804424af8223b1437f5c532c6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1372,
    "line": 1354,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f327200be517dc498d9b3d2b06b435639a4d9dce22ac1a58a61bc03403c47796",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cef455c5-e069-ce94-2c25-9866caf885a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1354–1372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem marked_realization_binding_exact
    (point : MarkedRhetoricalRealization)
    (obligation : RepositoryObligation)
    (bindingAt : RecordId → Option EvidenceBinding)
    (checked : point.ValidAgainst obligation bindingAt) :
    MarkedBindingConclusion point obligation bindingAt := by
  rcases checked with
    ⟨snapshot, profile, obligationId, artifact, span, hash,
      terminalDisposition, obligationScope, marking,
      coordinateProfile, coordinateObligation, coordinateArtifact,
      coordinateSpan, coordinateRole, coordinateKind, coordinateModality,
      coordinateScope, coordinateVersion, coordinateAuthority, binding⟩
  exact ⟨snapshot, profile, obligationId, artifact, span, hash,
    terminalDisposition, obligationScope, marking,
    coordinateProfile, coordinateObligation, coordinateArtifact,
    coordinateSpan, coordinateRole, coordinateKind, coordinateModality,
    coordinateScope, coordinateVersion, coordinateAuthority, binding⟩

/-- `coverage-law:FiniteSamplingScopeLaw`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean#L1354).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcec9691b43bf804424af8223b1437f5c532c6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

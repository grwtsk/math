# equivalent_conj_yes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89880faf-f206-ead3-0666-6ed38edb73de",
  "kind": "theorem",
  "lexical_name": "equivalent_conj_yes",
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
  "slug": "equivalent-conj-yes--67a0302acffd298e66360afe",
  "source": {
    "blob": "71b48708f6fdedf4bf0f8a618c26248b7a90c6b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1295,
    "line": 1288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67a0302acffd298e66360afe2f4aa13de9f5c29f0a39052f49c920b8f0c1a7a9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:89880faf-f206-ead3-0666-6ed38edb73de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1288–1295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem equivalent_conj_yes (hA : L.Formula A) (hB : L.Formula B) (hE : L.Formula E)
    (hF : L.Formula F) (he : Equivalent P Γ γ E (L.conj A B))
    (ha : Proves P Γ γ A) (hb : Equivalent P Γ γ B F) : Equivalent P Γ γ E F := by
  apply L.equivalent_of_iff hE hF
  pts_pl L using [he,ha,hb]
end PureTypeSystem.Labelled.LogicSetup

end OAI
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Channels/Variant4a6e7547e1b92dd4322b47152a522a0e54be9af8184ecf6b501f6ba14f5c44cb.lean#L1288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b48708f6fdedf4bf0f8a618c26248b7a90c6b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

# HasProdLocallyUniformlyOn.multipliableLocallyUniformlyOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e57db90c4f6a06f568460539fa5a492983480b2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 146,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:061f0dbe-a12d-eee9-da0f-18fe2b0aef8f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ad2e2db-6b7b-f3ba-48a9-a37e2d1264d0",
  "kind": "theorem",
  "lexical_name": "HasProdLocallyUniformlyOn.multipliableLocallyUniformlyOn",
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
  "slug": "hasprodlocallyuniformlyon-multipliablelocallyuniformlyon--dceaab1f24c782d217b0b358",
  "source": {
    "blob": "e57db90c4f6a06f568460539fa5a492983480b2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 146,
    "path": "GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dceaab1f24c782d217b0b358af197bfd0fe90e5a00a99c2df392002d3b47aa45",
  "verification": {
    "reference": "docs/verification/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ad2e2db-6b7b-f3ba-48a9-a37e2d1264d0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasProdLocallyUniformlyOn.multipliableLocallyUniformlyOn
    (h : HasProdLocallyUniformlyOn f g s) : MultipliableLocallyUniformlyOn f s :=
  ⟨g, h⟩

/-- If every `x ∈ s` has a neighbourhood within `s` on which `b ↦ ∏' i, f i b` converges uniformly,
then the product converges locally uniformly on `s`. Note that this is not a tautology, and the
converse is only true if the domain is locally compact. -/
@[to_additive "If every `x ∈ s` has a neighbourhood within `s` on which `b ↦ ∑' i, f i b` converges
uniformly, then the sum converges locally uniformly. Note that this is not a tautology, and the
converse is only true if the domain is locally compact."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/UniformOn/Varianted03fc547d49e8df84ba9242bf9a48ab23dbc8b80786e5bf1ef0a32e44998252.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e57db90c4f6a06f568460539fa5a492983480b2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

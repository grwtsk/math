# isIso_cyclesMap_of_isIso_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c582b3bbe2c4b26577ee71b01c0805f2d782512105f26598d105723e65ea13a",
  "kind": "instance",
  "lexical_name": "isIso_cyclesMap_of_isIso_of_mono",
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
  "slug": "isiso-cyclesmap-of-isiso-of-mono--12a803d3f53c9df2a4dc572e",
  "source": {
    "blob": "3b85472eef291fd83e327c73f53b3986ace107ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1132,
    "line": 1125,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12a803d3f53c9df2a4dc572e9a3ed68b999a36eeb04239c14c52dd2f8907f4e4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c582b3bbe2c4b26577ee71b01c0805f2d782512105f26598d105723e65ea13a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1125–1132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isIso_cyclesMap_of_isIso_of_mono (φ : S₁ ⟶ S₂) [IsIso φ.τ₂] [Mono φ.τ₃]
    [S₁.HasLeftHomology] [S₂.HasLeftHomology] :
    IsIso (cyclesMap φ) :=
  isIso_cyclesMap_of_isIso_of_mono' φ inferInstance inferInstance

end ShortComplex

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean#L1125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b85472eef291fd83e327c73f53b3986ace107ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

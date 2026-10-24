# isEmbedding_pullback_to_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:941c5ab9-57d5-8e81-6a02-f0addf8bd760",
  "kind": "theorem",
  "lexical_name": "isEmbedding_pullback_to_prod",
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
  "slug": "isembedding-pullback-to-prod--c92a3db147cf89d959e067c4",
  "source": {
    "blob": "db7c2c3fb4b99c1e8c59455fbd7e5e6cd8a650ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 180,
    "path": "GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c92a3db147cf89d959e067c4cbf6185766d2b301a4ab262a1203f2ed82e2ee92",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:941c5ab9-57d5-8e81-6a02-f0addf8bd760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmbedding_pullback_to_prod {X Y Z : TopCat.{u}} (f : X ⟶ Z) (g : Y ⟶ Z) :
    IsEmbedding <| ⇑(prod.lift (pullback.fst f g) (pullback.snd f g)) :=
  ⟨isInducing_pullback_to_prod f g, (TopCat.mono_iff_injective _).mp inferInstance⟩

@[deprecated (since := "2024-10-26")]
alias embedding_pullback_to_prod := isEmbedding_pullback_to_prod

/-- If the map `S ⟶ T` is mono, then there is a description of the image of `W ×ₛ X ⟶ Y ×ₜ Z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pullbacks/Variante4828d61b510ac71c14adc7b79a56ba30c7d4c1cbd7044a937d4a7e12c7413e7.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db7c2c3fb4b99c1e8c59455fbd7e5e6cd8a650ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.

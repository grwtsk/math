# isEmbedding_prodMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:246c4a8f-0fc5-f641-2c31-8a54bf58ce1d",
  "kind": "theorem",
  "lexical_name": "isEmbedding_prodMap",
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
  "slug": "isembedding-prodmap--44fa2b8b12b15f471bf9dca1",
  "source": {
    "blob": "4545b00c2a58deab6ed8330316f068dadd778da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 224,
    "path": "GRWTSK/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44fa2b8b12b15f471bf9dca123f31ee75779c2dea4305f7e3e6d0f7dc3cab601",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:246c4a8f-0fc5-f641-2c31-8a54bf58ce1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 224–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isEmbedding_prodMap {W X Y Z : TopCat.{u}} {f : W ⟶ X} {g : Y ⟶ Z} (hf : IsEmbedding f)
    (hg : IsEmbedding g) : IsEmbedding (Limits.prod.map f g) :=
  ⟨isInducing_prodMap hf.isInducing hg.isInducing, by
    have := (TopCat.mono_iff_injective _).mpr hf.injective
    have := (TopCat.mono_iff_injective _).mpr hg.injective
    exact (TopCat.mono_iff_injective _).mp inferInstance⟩

end Prod

/-- The binary coproduct cofan in `TopCat`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Products/Variantbf4b250ee3a6a8a66f65539af0e6b2f422ba7e1064218b78874fac3276f98cf6.lean#L224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4545b00c2a58deab6ed8330316f068dadd778da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
